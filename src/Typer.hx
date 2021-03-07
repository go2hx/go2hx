import sys.io.File;
import haxe.Int64;
import haxe.Int64Helper;
import haxe.io.Path;
import haxe.ds.StringMap;
import haxe.macro.Type.ClassField;
import haxe.macro.Type.ClassKind;
import haxe.macro.Context;
import haxe.macro.Type.ClassType;
import haxe.macro.Type.ModuleType;
import haxe.macro.Expr;
import haxe.DynamicAccess;
import sys.FileSystem;

var stdgoList:Array<String>;
var externs:Bool = false;
final reserved = [
    "switch", "case", "break", "continue", "default","is",
	"abstract", "cast", "catch", "class", "do","function",
	"dynamic", "else", "enum", "extends", "extern", "final", "for", "function", "if", "interface",
	"implements", "import", "in", "inline", "macro", "new", "operator", "overload", "override", "package", "private",
	"public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while","construct",
    "null",
];
final reservedClassNames = [
    "Class","T","K","S",
    "Single", //Single is a 32bit float
    "Array","Any",
    "Dynamic",
    "Null",
    "Reflect",
    "Date","ArrayAccess","DateTools","EReg",
    "Enum","EnumValue",
    "IntIterator","Iterable","Iterator","KeyValueIterable","KeyValueIterator",
    "Lambda","List","Map","Math","Std","Sys",
    "StringBuf","StringTools",
    "SysError","Type","UnicodeString","ValueType",
    //"Void",
    "Xml","XmlType",

    "GoArray","GoMath","Go","Slice","Pointer",
];
final basicTypes = [
    "uint","uint8","uint16","uint32","uint64",
    "int","int8","int16","int32","int64",
    "float32","float64","complex64","complex128",
    "string",
    "byte", //alias for uint8
    "rune", //alias for int32
    "uintptr",
];
var printer = new Printer();

typedef Alias = {name:String,type:ComplexType};
var aliases:Map<String,Array<Alias>>;
function main(data:DataType){
    var list:Array<Module> = [];
    var info:Info = defaultInfo();
    //alias system
    aliases = new Map<String,Array<Alias>>();
    for (pkg in data.pkgs) {
        if (pkg.files == null)
            continue;
        pkg.path = normalizePath(pkg.path);
        info.path = pkg.path;

        aliases[pkg.path] = [];
        for (file in pkg.files) {
            if (file.decls == null)
                continue;
            for (decl in file.decls) {
                switch decl.id {
                    case "GenDecl":
                        for (spec in cast(decl.specs,Array<Dynamic>)) {
                            switch spec.id {
                                case "TypeSpec":
                                   setAlias(spec,info);
                            }
                        }
                }
            }
        }
    }
    //module system
    for (pkg in data.pkgs) {
        if (pkg.files == null)
            continue;
        var module:Module = {path: normalizePath(pkg.path),files: []};
        var main:FileType = null;
        for (file in pkg.files) {
            if (file.decls == null)
                continue;
            file.path = normalizePath(Path.withoutExtension(file.path));
            file.location = Path.normalize(file.location);
            var data:FileType = {name: file.path,imports: [],defs: [],location: file.location};
            data.name = normalizePath(data.name);
            var p = StringTools.replace(module.path,"/",".");
            if (p == "")
                p == "std";
            info = defaultInfo(data,p);
            var declFuncs:Array<Ast.FuncDecl> = [];
            for (decl in file.decls) {
                switch decl.id {
                    case "GenDecl":
                        typeGenDecl(decl,info);
                    case "FuncDecl":
                        var decl:Ast.FuncDecl = decl;
                        if (decl.recv == null && info.fieldNames.indexOf(decl.name.name) == -1)
                            info.fieldNames.push(decl.name.name);
                        declFuncs.push(decl);
                    default:

                }
            }

            function processNames(cache:Array<String>) {
                //process potential duplicate names from all casing to lower
                for (name in cache) {
                    if (name.charAt(0) == name.charAt(0).toUpperCase())
                        continue;
                    //check if uppercase version of name exists too
                    if (cache.indexOf(name.charAt(0).toUpperCase() + name.substr(1)) == -1)
                        continue;
                    info.types[name] = "_" + name;
                }
            }
            processNames(info.fieldNames);
            processNames(info.typeNames);
            for (decl in declFuncs) { //parse function bodies last
                var func = typeFunction(decl,info);
                if (func != null)
                    data.defs.push(func);
            }
            typeImplements(info);
            //access for each type for every other type in the file
            var addAccess:Metadata = [];
            for (def in info.data.defs) {
                switch def.kind {
                    case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
                        addAccess.push({name: ":access",params: [toExpr(EConst(CIdent(def.name)))],pos: null});
                    default:
                }
            }
            for (def in info.data.defs) {
                switch def.kind {
                    case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
                        def.meta = addAccess.concat(def.meta);
                    default:
                }
            }
            //setup implements
            data.imports.push({path: ["stdgo","StdTypes"],alias: ""});
            data.imports.push({path: ["stdgo","Go"],alias: ""});
            data.imports.push({path: ["stdgo","Builtin"],alias: ""});
            for (path => alias in info.imports)
                data.imports.push({path: path.split("."),alias: alias});
            //set name
            data.name = className(Typer.title(data.name));
            module.files.push(data);
        }
        list.push(module);
    }
    return list;
}
private function setAlias(spec:Ast.TypeSpec,info:Info) {
    switch spec.type.id {
        case "InterfaceType":
            //var interface:Ast.InterfaceType = spec.type;
            var struct:Ast.InterfaceType = spec.type;
            if (struct.methods.list.length == 0) {
                aliases[info.path].push({name: spec.name.name,type: TPath({name: "Any",pack: []})});
            }
        case "StructType":
        default:
            var type = typeExprType(spec.type,info);
            aliases[info.path].push({
                name: spec.name.name,
                type: type,
            });
    }
}
private function defaultInfo(data:FileType=null,p:String=""):Info {
    return {layerIndex:0,fieldNames: [], typeNames: [],thisName: "",className: "", retValues: [],deferBool: false,funcName: "",path: p, types: [],imports: [],ret: [],type: null, data: data,local: false,retypeMap: [],print: false,blankCounter: 0};
}
private function typeImplements(info:Info) {
    for (cl in info.data.defs) {
        switch cl.kind {
            case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
                if (isInterface)
                    continue;
                for (inter in info.data.defs) {
                    switch inter.kind {
                        case TDClass(superClass, interfaces2, isInterface, isFinal, isAbstract):
                            if (!isInterface)
                                continue;
                            for (interField in inter.fields) {

                                for (clField in cl.fields) {
                                    if (interField.name != clField.name)
                                        continue;
                                    var interFunc:Function = null;
                                    var clFunc:Function = null;
                                    switch interField.kind {
                                        case FFun(f):
                                            interFunc = f;
                                        default:

                                    }
                                    switch clField.kind {
                                        case FFun(f):
                                            clFunc = f;
                                        default:
                                    }
                                    if (interFunc == null || clFunc == null)
                                        continue;
                                    if (!compareComplexType(interFunc.ret,clFunc.ret))
                                        continue;
                                    var passed:Bool = true;
                                    if (interFunc.args.length != clFunc.args.length)
                                        continue;
                                    for (i in 0...interFunc.args.length) {
                                        if (interFunc.args[0].name != clFunc.args[0].name) {
                                            passed = false;
                                            break;
                                        }
                                        if (!compareComplexType(interFunc.args[0].type, clFunc.args[0].type)) {
                                            passed = false;
                                            break;
                                        }
                                    }
                                    if (!passed)
                                        continue;
                                    interfaces.push({
                                        name: inter.name,
                                        pack: inter.pack,
                                    });
                                }
                            }
                        default:
                    }
                }
            default:
        }
    }
}
private function compareComplexType(a:ComplexType,b:ComplexType):Bool {
    switch a {
        case TPath(p):
            switch b {
                case TPath(p2):
                    if (p.name != p2.name)
                        return false;
                    if (p.pack.length != p2.pack.length)
                        return false;
                    for (i in 0...p.pack.length) {
                        if (p.pack[i] != p2.pack[i])
                            return false;
                    }
                    return true;
                default:
                    return false;
            }
        case TAnonymous(fields):
            switch b {
                case TAnonymous(fields2):
                    if (fields.length != fields2.length)
                        return false;
                    for (i in 0...fields.length) {
                        if (fields[i].name != fields2[i].name)
                            return false;
                        switch fields[i].kind {
                            case FVar(t, e):
                                switch fields2[i].kind {
                                    case FVar(t2, e):
                                        if (!compareComplexType(t,t2))
                                            return false;
                                    default:
                                        return false;
                                }
                            default:
                                return false;
                        }
                    }
                    return true;
                default:
                    return false;
            }
        default:
            trace("unknown compare complex type: " + a);
            return false;
    }
}
private function typeGenDecl(decl:Ast.GenDecl,info:Info) {
    for (spec in cast(decl.specs,Array<Dynamic>)) {
        switch spec.id {
            case "ImportSpec":
                info.data.imports.push(typeImport(spec,info));
            case "ValueSpec":
                var spec:Ast.ValueSpec = spec;
                info.fieldNames = info.fieldNames.concat(spec.names);
                info.data.defs = info.data.defs.concat(typeValue(spec,info));
            case "TypeSpec":
                var spec:Ast.TypeSpec = spec;
                info.typeNames.push(spec.name.name);
                info.data.defs.push(typeType(spec,info));
            default:
                error("unknown spec: " + spec.id);
        }
    }
}
private function typeStmt(stmt:Dynamic,info:Info):Expr {
    if (stmt == null)
        return null;
    info.type = null;
    var def = switch stmt.id {
        case "ReturnStmt": typeReturnStmt(stmt,info);
        case "IfStmt": typeIfStmt(stmt,info);
        case "ExprStmt": typeExprStmt(stmt,info);
        case "AssignStmt": typeAssignStmt(stmt,info);
        case "ForStmt": typeForStmt(stmt,info);
        case "SwitchStmt": typeSwitchStmt(stmt,info);
        case "TypeSwitchStmt": typeTypeSwitchStmt(stmt,info);
        case "DeclStmt": typeDeclStmt(stmt,info);
        case "RangeStmt": typeRangeStmt(stmt,info);
        case "DeferStmt": typeDeferStmt(stmt,info);
        case "IncDecStmt": typeIncDecStmt(stmt,info);
        case "LabeledStmt": typeLabeledStmt(stmt,info);
        case "BlockStmt": typeBlockStmt(stmt,info);
        case "BadStmt": error("BAD STATEMENT TYPED"); null;
        case "GoStmt": typeGoStmt(stmt,info);
        case "BranchStmt": typeBranchStmt(stmt,info);
        case "SelectStmt": typeSelectStmt(stmt,info);
        case "SendStmt": typeSendStmt(stmt,info);
        case "CommClause": typeCommClause(stmt,info);
        default:
            error("unknown stmt id: " + stmt.id);
            null;
    }
    return def == null ? {error("stmt null: " + stmt.id); null;} : toExpr(def);
}
var errorCache = new StringMap<Bool>();
private function error(message:String) {
    if (!errorCache.exists(message))
        throw(message);
    errorCache.set(message,true);
}
//STMT
private function typeCommClause(stmt:Ast.CommClause,info:Info):ExprDef { //selector case system
    var list:Array<Ast.Stmt> = stmt.body;
    if (stmt.comm != null) {
        if (list == null)
            return typeStmt(stmt.comm,info).expr;
        list.unshift(stmt.comm);
        return typeStmtList(list,info);
    }
    return (macro null).expr;
}
private function typeSendStmt(stmt:Ast.SendStmt,info:Info):ExprDef {
    var chan = typeExpr(stmt.chan,info);
    var value = typeExpr(stmt.value,info);
    return (macro $chan.send($value)).expr;
}
private function typeSelectStmt(stmt:Ast.SelectStmt,info:Info):ExprDef {

    return typeBlockStmt(stmt.body,info);
}
private function typeBranchStmt(stmt:Ast.BranchStmt,info:Info):ExprDef {
    return switch stmt.tok {
        case CONTINUE: EContinue;
        case BREAK: EBreak;
        case GOTO:
            stmt.label.name += "_label";
            var name = toExpr(typeIdent(stmt.label,info));
        return (macro return $name()).expr;
        case FALLTHROUGH: EBreak; //TODO
        default: EBreak;
    }
}
private function typeGoStmt(stmt:Ast.GoStmt,info:Info):ExprDef {
    var call = typeExpr(stmt.call,info);
    return (macro Go.routine($call)).expr;
}
private function typeBlockStmt(stmt:Ast.BlockStmt,info:Info):ExprDef {
    if (stmt.list == null)
        return (macro {}).expr;
    return typeStmtList(stmt.list,info);
}
private function typeStmtList(list:Array<Ast.Stmt>,info:Info):ExprDef {
    info.layerIndex++;
    return EBlock(list == null ? [] : [
        for (stmt in list) 
            typeStmt(stmt,info)
    ]);
    info.layerIndex--;
}
private function typeLabeledStmt(stmt:Ast.LabeledStmt,info:Info):ExprDef {
    var stmt = typeStmt(stmt.stmt,info);
    return stmt.expr;
}
private function typeIncDecStmt(stmt:Ast.IncDecStmt,info:Info):ExprDef {
    var x = typeExpr(stmt.x,info);
    return switch stmt.tok {
        case INC: return (macro $x++).expr;
        case DEC: return (macro $x--).expr;
        default: error("unknown IncDec token: " + stmt.tok); null;
    }
}
private function typeDeferStmt(stmt:Ast.DeferStmt,info:Info):ExprDef {
    info.deferBool = true;
    var call = typeCallExpr(stmt.call,info);
    var args:Array<Expr> = [];
    switch call {
        case ECall(e, params):
            args = params;
            args.unshift(e);
        default:
    }
    return (macro deferstack.push([$a{args}])).expr;
}
private function typeRangeStmt(stmt:Ast.RangeStmt,info:Info):ExprDef {
    var key = typeExpr(stmt.key,info); //iterator int
    var x = typeExpr(stmt.x,info);
    var body = {expr: typeBlockStmt(stmt.body,info), pos: null};
    if (stmt.value == null) {
        if (stmt.key == null)
            key = macro _i;
        if (stmt.tok != DEFINE && stmt.key != null) {
            switch body.expr {
                case EBlock(exprs):
                    exprs.unshift(macro $key = _i);
                default:
            }
            key = macro _i;
        }
        return (macro for ($key in 0...$x.length) $body).expr; //only index no need to use Go.range
    }
    var value = typeExpr(stmt.value,info); //value of x[key]
    if (key.expr.match(EConst(CIdent("_")))) {
        if (stmt.tok == DEFINE) {
            return (macro for($value in $x) $body).expr; //iterate through values using "in" for loop
        }else{
            switch body.expr {
                case EBlock(exprs):
                    exprs.unshift(macro $value = _value);
                default:
            }
            return (macro for (_value in $x) $body).expr; //iterator through values using "in" for loop, and assign value to not defined value
        }
    }

    //both key and value
    if (stmt.tok == DEFINE) {
        switch body.expr {
            case EBlock(exprs):
                var keyString:String = "_";
                var valueString:String = "_";
                switch key.expr {
                    case EConst(c):
                        switch c {
                            case CIdent(s): keyString = nameIdent(s,info);
                            default:
                        }
                    default:
                }
                switch value.expr {
                    case EConst(c):
                        switch c {
                            case CIdent(s): valueString = nameIdent(s,info);
                            default:
                        }
                    default:
                }
                exprs.unshift(macro var $keyString = _obj.key);
                exprs.unshift(macro var $valueString = _obj.value);
            default:
        }
    }else{
        switch body.expr {
            case EBlock(exprs):
                exprs.unshift(macro $key = _obj.key);
                exprs.unshift(macro $value = _obj.value);
            default:
        }
    }
    return (macro for (_obj in Go.range($x)) $body).expr;
}
private function className(name:String):String {
    if (reservedClassNames.indexOf(name) != -1)
        name += "_";
    if (name.substr(0,5) == "Uint")
        name = "UInt";
    return name;
}
private function typeDeclStmt(stmt:Ast.DeclStmt,info:Info):ExprDef {
    var decls:Array<Ast.GenDecl> = stmt.decl.decls;
    var vars:Array<Var> = [];
    for (decl in decls) {
        
        for (spec in decl.specs) {
            switch spec.id {
                case "TypeSpec":
                    var spec:Ast.TypeSpec = spec;
                    var name = className(title(spec.name.name));
                    spec.name.name += "_" + info.funcName + "_" + info.layerIndex;
                    info.retypeMap[name] = TPath({
                        name: className(title(spec.name.name)),
                        pack: [],
                    });
                    setAlias(spec,info);
                    info.data.defs.push(typeType(spec,info));
                case "ValueSpec":
                    var spec:Ast.ValueSpec = spec;
                    info.type = null;
                    var type = spec.type.id != null ? typeExprType(spec.type,info) : null;
                    var value = macro null;
                    var args:Array<Expr> = [];
                    var t = type != null ? type : info.type;
                    if (spec.type.id == "ArrayType") {
                        for (i in 0...spec.names.length) {
                            vars.push({
                                name: nameIdent(spec.names[i],info),
                                type: t,
                                expr: macro make((_:$t),$a{args})
                            });
                        }
                    }else{
                        vars = vars.concat([
                            for (i in 0...spec.names.length) {
                                name: nameIdent(spec.names[i],info),
                                type: t,
                                expr: i < spec.values.length ? typeExpr(spec.values[i],info) : t != null ? stdgo.Builtin.defaultValue(t,null) : null,
                            }
                        ]);
                    }
            }
        }
    }
    if (vars.length > 0)
        return EVars(vars);
    return (macro {}).expr; //blank expr def
}
private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt,info:Info):ExprDef { //a switch statement of a type
    var init:Expr = null;
    if (stmt.init != null)
        init = toExpr(typeSwitchStmt(stmt.init,info));

    var assign:Expr = null;
    var set:String = "";
    switch stmt.assign.id {
        case "ExprStmt":
            var stmt:Ast.ExprStmt = stmt.assign;
            switch stmt.x.id {
                case "TypeAssertExpr":
                    var stmt:Ast.TypeAssertExpr = stmt.x;
                    assign = typeExpr(stmt.x,info);
                default:
                    trace("unknown assign expr: " + stmt.x.id);
            }
        case "AssignStmt":
            var stmt:Ast.AssignStmt = stmt.assign;
            var rhs = stmt.rhs[0];
            switch rhs.id {
                case "TypeAssertExpr":
                    var rhs:Ast.TypeAssertExpr = rhs;
                    assign = typeExpr(rhs.x,info);
                default:
                    trace("unknown assign rhs type switch expr: " + rhs.id);
            }
            var lhs = stmt.lhs[0];
            switch lhs.id {
                case "Ident":
                    var lhs:Ast.Ident = lhs;
                    var name = lhs.name;
                    set = lhs.name;
                default:
                    trace("unknown assign lhs type switch expr: " + rhs.id);
            }
        default:
            trace("unknown assign: " + stmt.assign.id);
    }
    if (assign == null)
        return null;
    var def:Expr = null;
    var types:Array<ComplexType> = [];
    function condition(obj:Ast.CaseClause,i:Int=0) {
        if (obj.list.length == 0)
            return null;
        var t = typeExprType(obj.list[i],info);
        var value = macro ($assign is $t);
        switch t {
            case TPath(p):
                switch p.name {
                    case "UInt8", "Byte":
                        value = macro ($assign is Int);
                    default:
                }
            default:
        }
        switch t {
            case TPath(p):
                switch p.name {
                    case "GoString":
                        value = macro null;
                    default:
                }
            default:
        }
        types.push(t);
        if (i + 1 >= obj.list.length)
            return value;
        var next = condition(obj,i + 1);
        return toExpr(EBinop(OpBoolOr,value,next));
    }
    function ifs(i:Int=0) {
        var obj:Ast.CaseClause = stmt.body.list[i];
        types = [];
        var cond = condition(obj);
        var t:ComplexType = null;
        if (types.length == 1)
            t = types[0];
        var block = toExpr(typeStmtList(obj.body,info));
        if (set != "") {
            switch block.expr {
                case EBlock(exprs):
                    exprs.unshift(toExpr(EVars([{
                        name: set,
                        type: t,
                        expr: macro cast $assign,
                    }])));
                default:
            }
        }
        if (i + 1 >= stmt.body.list.length)
            return cond == null ? macro $block : macro if ($cond) $block;
        var next = ifs(i + 1);
        return macro if ($cond) $block else $next;
    }
    return ifs().expr;
}
private function typeSwitchStmt(stmt:Ast.SwitchStmt,info:Info):ExprDef {
    if (stmt.tag == null) {
        //this is an if else chain
        function condition(obj:Ast.CaseClause,i:Int=0) {
            if (obj.list.length == 0)
                return null;
            var value = typeExpr(obj.list[i],info);
            if (i + 1 >= obj.list.length)
                return value;
            var next = condition(obj,i + 1);
            return toExpr(EBinop(OpBoolOr,value,next));
        }
        function ifs(i:Int=0) {
            var obj:Ast.CaseClause = stmt.body.list[i];
            var cond = condition(obj);
            var block = toExpr(typeStmtList(obj.body,info));

            if (i + 1 >= stmt.body.list.length)
                return cond == null ? macro $block : macro if ($cond) $block;
            var next = ifs(i + 1);
            return macro if ($cond) $block else $next;
        }
        if (stmt.body.list == null)
            return (macro {}).expr;
        return ifs().expr;
    }else{
        var cases:Array<Case> = [];
        var def:Expr = null;
        for (obj in stmt.body.list) {
            switch obj.id {
                case "CaseClause":
                    var obj:Ast.CaseClause = obj;
                    if (obj.list.length > 0) {
                        cases.push({
                            values: [for (expr in obj.list) typeExpr(expr,info)],
                            expr: toExpr(typeStmtList(obj.body,info)),
                        });
                    }else{
                        def = toExpr(typeStmtList(obj.body,info));
                    }
            }
        }
        return ESwitch(typeExpr(stmt.tag,info),cases,def);
    }
}
private function typeForStmt(stmt:Ast.ForStmt,info:Info):ExprDef {
    var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typeExpr(stmt.cond,info);
    var body = toExpr(typeBlockStmt(stmt.body,info));
    if (body.expr == null)
        body = macro {};
    if (cond.expr == null || body.expr == null) {
        trace("for stmt error: " + cond.expr + " body: " + body.expr);
        return null;
    }
    var def:ExprDef = null;
    if (stmt.post != null) {
        var ty = typeStmt(stmt.post,info);
        if (ty == null) {
            trace("for stmt error post: " + stmt.post);
            return null;
        }
        def = (macro Go.cfor($cond, $ty, $body)).expr;
    }else{
        def = EWhile(cond,body,true);
        if (stmt.cond == null) {
            var retValue = stdgo.Builtin.defaultValue(info.ret[0],null);
            switch info.ret[0] {
                case TPath(p):
                    if (p.name == "Void")
                        retValue = null;
                default:
            }
            return EBlock([
                toExpr(def),
                toExpr(EReturn(retValue)),
            ]);
        }
        return def;
    }
    if (stmt.init != null) {
        var init = typeStmt(stmt.init,info);
        if (init == null) {
            trace("for stmt eror init: " + stmt.init);
            return null;
        }
        return EBlock([
            init,
            toExpr(def),
        ]);
    }
    return def;
}
private function toExpr(def:ExprDef):Expr {
    return {expr: def,pos: null};
}
private function typeAssignStmt(stmt:Ast.AssignStmt,info:Info):ExprDef {
    switch stmt.tok {
        case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN,SHL_ASSIGN,SHR_ASSIGN,XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN, OR_ASSIGN:
            if (stmt.lhs.length == stmt.rhs.length) {
                if (stmt.tok == ASSIGN && stmt.lhs.length == 1 && stmt.rhs.length == 1 && stmt.lhs[0].id == "Ident" && stmt.lhs[0].name == "_") {
                    var y = typeExpr(stmt.rhs[0],info);
                    return y.expr; //only underscore assign, therefore only need to type right side.
                }
                var op = typeOp(stmt.tok);
                var exprs = [for (i in 0...stmt.lhs.length) {
                    var x = typeExpr(stmt.lhs[i],info);
                    var y = typeExpr(stmt.rhs[i],info);
                    if (x == null || y == null)
                        return null;
                    x.expr.match(EConst(CIdent("_"))) ? y : toExpr(EBinop(op,x,y)); 
                }];
                if (exprs.length == 1)
                    return exprs[0].expr;
                return EBlock(exprs);
            }else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { 
                //non variable assign, destructure system
                var exprs:Array<Expr> = [];
                for (lhs in stmt.lhs) {
                    exprs.push(typeExpr(lhs,info));
                }
                for (rhs in stmt.rhs) {
                    exprs.push(typeExpr(rhs,info));
                }
                return (macro Go.destruct($a{exprs})).expr;
            }else{
                error("unknown type assign type: " + stmt);
                return null;
            }
        case DEFINE: //var expr = x;
            if (stmt.lhs.length == stmt.rhs.length) {
                //normal vars
                var vars:Array<Var> = [];
                for (i in 0...stmt.lhs.length) {
                    info.type = null;
                    var expr = typeExpr(stmt.rhs[i],info);
                    vars.push({
                        name: nameIdent(stmt.lhs[i].name,info),
                        type: stmt.rhs[i].id == "BasicLit" ? info.type : null,
                        expr: expr,
                    });
                }
                return EVars(vars);
            }else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { 
                //variable destructure system
                var exprs:Array<Expr> = [];
                for (lhs in stmt.lhs) {
                    exprs.push(toExpr(EConst(CString(lhs.name))));
                }
                for (rhs in stmt.rhs) {
                    exprs.push(typeExpr(rhs,info));
                }
                return (macro Go.destruct($a{exprs})).expr;
            }else{
                error("unknown type assign define type: " + stmt);
                return null;
            }
        default:
            error("type assign tok not found: " + stmt.tok);
            return null;
    }
}
private function typeExprStmt(stmt:Ast.ExprStmt,info:Info):ExprDef {
    var expr = typeExpr(stmt.x,info);
    return expr != null ? expr.expr : null;
}
//written by Eliott issue #17
private function typeIfStmt(stmt:Ast.IfStmt,info:Info):ExprDef {
    var obj:haxe.DynamicAccess<Dynamic> = cast stmt; // new - set-up DynamicAccess
    stmt.elseStmt = obj.get("else"); // new - dynamically access the JSON element with the reserved name
    var ifStmt:Expr = toExpr(EIf(typeExpr(stmt.cond,info),typeStmt(stmt.body,info),typeStmt(stmt.elseStmt,info)));
    if (stmt.init != null)
        return EBlock([typeStmt(stmt.init,info),ifStmt]);
    return ifStmt.expr;
}
private function typeReturnStmt(stmt:Ast.ReturnStmt,info:Info):ExprDef {
    function ret(e:ExprDef) {
        if (info.deferBool) {
            return EBlock([
                typeDeferReturn(),
                toExpr(e),
            ]);
        }
        return e;
    }
    if (stmt.results.length == 0) {
        if (info.retValues.length > 0) {
            if (info.retValues[0].length == 1)
                return ret(EReturn(toExpr(EConst(CIdent(info.retValues[0][0].name)))));
            if (info.retValues.length > 1) {
                var expr = toExpr(EObjectDecl([for (value in info.retValues[0]) {
                    field: value.name,
                    expr: toExpr(EConst(CIdent(value.name))),
                }]));
                return ret(EReturn(expr));
            }
        }
        return ret(EReturn());
    }
    if (stmt.results.length == 1)
        return ret(EReturn(typeExpr(stmt.results[0],info)));
    //multireturn
    switch info.ret[0] {
        case TAnonymous(fields):
            var expr = toExpr(EObjectDecl([for (i in 0...fields.length) {
                field: fields[i].name,
                expr: typeExpr(stmt.results[i],info),
            }]));
            return ret(EReturn(expr));
        default:
            trace("unknown multi return type: " + info.ret[0] + " results: " + stmt.results);
    }
    return ret(EReturn());
}
private function typeExprType(expr:Dynamic,info:Info):ComplexType { //get the type of an expr
    if (expr == null)
        return null;
    var type = switch expr.id {
        case "MapType": mapType(expr,info);
        case "ChanType": chanType(expr,info);
        case "InterfaceType": interfaceType(expr,info);
        case "StructType": structType(expr,info);
        case "FuncType": funcType(expr,info);
        case "ArrayType": arrayType(expr,info);
        case "StarExpr": starType(expr,info); //pointer
        case "Ident": identType(expr,info); //identifier type
        case "SelectorExpr": selectorType(expr,info);//path
        case "Ellipsis": ellipsisType(expr,info); //Rest arg
        default: error("Type expr unknown: " + expr.id); null;
    }
    if (type == null)
        error("Type expr is null: " + expr.id);
    return type;
}
//TYPE EXPR
private function mapType(expr:Ast.MapType,info:Info):ComplexType {
    var keyType = typeExprType(expr.key,info);
    var valueType = typeExprType(expr.value,info);
    if (keyType == null || valueType == null)
        return null;
    addImport("stdgo.GoMap",info);
    return TPath({
        name: "GoMap",
        pack: [],
        params: [TPType(keyType),TPType(valueType)],
    });
}
private function chanType(expr:Ast.ChanType,info:Info):ComplexType {
    var type = typeExprType(expr.value,info);
    addImport("stdgo.Chan",info);
    return TPath({
        name: "Chan",
        pack: [],
        params: [TPType(type)],
    });
}
private function interfaceType(expr:Ast.InterfaceType,info:Info):ComplexType {
    if (expr.methods.list.length == 0) {
        //dynamic
        return TPath({
            name: "Any",
            pack: [],
        });
    }else{
        //anonymous struct
        var fields = typeFieldListFields(expr.methods,info,[],false,true);
        return TAnonymous(fields);
    }
}
private function structType(expr:Ast.StructType,info:Info):ComplexType {
    var fields = typeFieldListFields(expr.fields,info,[],false,true);
    return TAnonymous(fields);
}
private function funcType(expr:Ast.FuncType,info:Info):ComplexType {
    var ret = typeFieldListRes(expr.results,info,false);
    var params = typeFieldListComplexTypes(expr.params,info);
    if (ret == null || params == null)
        return TFunction([],TPath({name: "Void",pack: []}));
    return TFunction(params,ret);
}
private function arrayType(expr:Ast.ArrayType,info:Info):ComplexType {
    //array is pass by copy, slice is pass by ref except for its length
    var type = typeExprType(expr.elt,info);
    if (expr.len != null) {
        //array
        addImport("stdgo.GoArray",info);
        return TPath({
            pack: [],
            name: "GoArray",
            params: type != null ? [TPType(type)] : []
        });
    }
    //slice
    addImport("stdgo.Slice",info);
    return TPath({
        pack: [],
        name: "Slice",
        params: type != null ? [TPType(type)] : []
    });
}
private function addPointerImports(info:Info) {
    addImport("stdgo.Pointer",info);
    addImport("stdgo.Pointer.PointerWrapper",info);
    addImport("stdgo.GoArray.GoArrayPointer",info);
}
private function starType(expr:Ast.StarExpr,info:Info):ComplexType { //pointer type
    var type = typeExprType(expr.x,info);
    var basicBool = isBasic(type,info);
    addPointerImports(info);
    if (basicBool) {
        addPointerImports(info);
        return TPath({
            pack: [],
            name: "Pointer",
            params: type != null ? [TPType(type)] : [],
        });
    }
    switch type {
        case TPath(p):
            switch p.name {
                case "GoString","String","Bool","Int","Float","UInt","Rune","Byte","Int8","Int16","Int32","Int64","UIn8","UInt16","UInt32","UInt64","Complex","Complex64","Complex128":
                    return TPath({
                        pack: [],
                        name: "Pointer",
                        params:  type != null ? [TPType(type)] : [],
                    });
                case "Pointer","PointerWrapper":
                    return TPath({
                        pack: [],
                        name: "Pointer",
                        params: type != null ? [TPType(type)] : [],
                    });
                case "Slice","GoMap":
                    return type;
                case "GoArray":
                    return TPath({
                        pack: [],
                        name: "GoArrayPointer",
                        params: p.params,
                    });
            }
        default:
    }
    return TPath({
        pack: [],
        name: "PointerWrapper",
        params: type != null ? [TPType(type)] : [],
    });
}
private function isBasic(type:ComplexType, info:Info):Bool {
    var basicBool:Bool = true;
    switch type {
        case TPath(p):
            if (p.pack.length > 0) {
                switch p.name {
                    case "Int","UInt":
                    case "Int8","Int16","Int32","Int64","UInt8","UInt16","UInt32","UInt64":
                    case "Float", "Float32", "Float64", "Complex64", "Complex128":
                    case "Bool", "GoString":
                    default:
                        basicBool = false;
                }
                if (basicBool) //lowest underlying type already found
                    return true;
                //look for type alias
                for (def in info.data.defs) {
                    if (p.name != def.name)
                        continue;
                    switch def.kind {
                        case TDAlias(t):
                            return isBasic(t,info);
                        case TDStructure:
                            return false;
                        default:
                    }
                }
                return false;
            }else{
                return false;
            }
        default:
    }
    return false;
}
private function addImport(path:String,info:Info,alias:String="") {
    if (!info.imports.exists(path))
        info.imports[path] = alias;
}
private function identType(expr:Ast.Ident,info:Info):ComplexType {
    var name = className(title(expr.name));
    if (name == "String") {
        addImport("stdgo.GoString",info);
        name = "GoString";
    }
    if (name.substr(0,4) == "Uint") {
        name = "UInt" + name.substr(4);
    }
    if (info.retypeMap.exists(name))
        return info.retypeMap[name];
    return TPath({
        pack: [],
        name: name,
    });
}
private function selectorType(expr:Ast.SelectorExpr,info:Info):ComplexType {
    function func(x:Ast.Expr):Array<String> {
        switch x.id {
            case "Ident":
                var name = nameIdent(x.name,info);
                return [name];
            case "SelectorExpr":
                var x:Ast.SelectorExpr = x;
                var name = nameIdent(x.sel.name,info);
                return [name].concat(func(x.x));
            default:
                trace("unknown x id: " + x.id);
                return [];
        }
    }
    return TPath({
        name: expr.sel.name,
        pack: func(expr.x),
    });
}
private function ellipsisType(expr:Ast.Ellipsis,info:Info):ComplexType {
    var t = typeExprType(expr.elt,info);
    return TPath({
        name: "Rest",
        pack: ["haxe"],
        params: [TPType(t)],
    });
}
private function typeExpr(expr:Dynamic,info:Info):Expr {
    if (expr == null)
        return null;
    if (info.print)
        trace("id: " + expr.id);
    var def = switch expr.id {
        case "Ident": typeIdent(expr,info);
        case "CallExpr": typeCallExpr(expr,info);
        case "BasicLit": typeBasicLit(expr,info);
        case "UnaryExpr": typeUnaryExpr(expr,info);
        case "SelectorExpr": typeSelectorExpr(expr,info);
        case "BinaryExpr": typeBinaryExpr(expr,info);
        case "FuncLit": typeFuncLit(expr,info);
        case "CompositeLit": typeCompositeLit(expr,info);
        case "SliceExpr": typeSliceExpr(expr,info);
        case "TypeAssertExpr": typeAssertExpr(expr,info);
        case "IndexExpr": typeIndexExpr(expr,info);
        case "StarExpr": typeStarExpr(expr,info);
        case "ParenExpr": typeParenExpr(expr,info);
        case "Ellipsis": typeEllipsis(expr,info);
        //case "KeyValueExpr": typeKeyValueExpr(expr,info);
        case "MapType": typeMapType(expr,info);
        case "BadExpr": error("BAD EXPRESSION TYPED"); null;
        case "InterfaceType": typeInterfaceType(expr,info);
        default:
            trace("unknown expr id: " + expr.id); 
            null;
    };
    return def == null ? {error("expr null: " + expr.id); null;} : toExpr(def);
}
//EXPR
private function typeInterfaceType(expr:Ast.InterfaceType,info:Info):ExprDef {
    return (macro {}).expr;
}
private function typeMapType(expr:Ast.MapType,info:Info):ExprDef {
    return null;
}
private function typeKeyValueExpr(expr:Ast.KeyValueExpr,info:Info) {
    var value = typeExpr(expr.value,info);
    return {key: (expr.key.name : String), value: value};
}
private function typeEllipsis(expr:Ast.Ellipsis,info:Info):ExprDef {
    var expr = typeExpr(expr.elt,info);
    var rest = typeRest(expr);
    return rest != null ? rest.expr : null;
}
private function typeIdent(expr:Ast.Ident,info:Info):ExprDef {
    var name = nameIdent(expr.name,info);
    return EConst(CIdent(name));
}
private function typeCallExpr(expr:Ast.CallExpr,info:Info):ExprDef {
    var args:Array<Expr> = [];
    var ellipsisFunc = null;
    function genArgs() {
        args = [for (arg in expr.args) typeExpr(arg,info)];
    }
    ellipsisFunc = function() {
        if (!expr.ellipsis.noPos) {
            var last = args.pop();
            if (last == null)
                return;
            switch last.expr {
                case EConst(c):
                    switch c {
                        case CString(s, kind):
                            last = macro Go.assert(($last:Slice<String>));
                        default:
                    }
                default:
            }
            last = typeRest(last);
            args.push(last);
        }
    }
    switch expr.fun.id {
        case "FuncLit":
            var expr = typeExpr(expr.fun,info);
            genArgs();
            return (macro {var a = $expr; a($a{args});}).expr;
        /*case "SelectorExpr":
            var name = untitle(expr.fun.sel.name);
            expr.fun.sel.name =  nameIdent(name,info); //all functions lowercase*/
        case "Ident":
            expr.fun.name = untitle(expr.fun.name);
            switch expr.fun.name {
                case "slice","append","close","complex","copy","delete","imag","panic","print","println","real","recover":
                    if (info.className != "") {
                        var field = toExpr(EField(toExpr(EField(toExpr(EConst(CIdent("stdgo"))),"Builtin")),expr.fun.name));
                        genArgs();
                        ellipsisFunc();
                        return (macro $field($a{args})).expr;
                    }
                case "cap":
                    return (macro ${typeExpr(expr.args[0],info)}.cap()).expr;
                case "len":
                    return (macro ${typeExpr(expr.args[0],info)}.length).expr;
                case "new": //create default value put into pointer
                    var t = typeExprType(expr.args[0],info);
                    addPointerImports(info);
                    switch t {
                        case TPath(p):
                            return (macro Go.pointer(new $p())).expr; //TODO does not work for non constructed types, such as basic types
                        default:
                    }
                case "make": 
                    if (expr.fun.name == "new")
                        expr.fun.name = "create";

                    var type = expr.args.shift();
                    genArgs();
                    var t = typeExprType(type,info);
                    args.unshift(macro (_ : $t)); //ECheckType
                case null:
                default:
                    if (expr.args.length == 1 && basicTypes.indexOf(expr.fun.name) != -1) {
                        var arg = typeExpr(expr.args[0],info);
                        var type = typeExprType(expr.fun,info);
                        return (macro Go.assert(($arg : $type))).expr;
                    }
            }
        case "ParenExpr":
            //type set
            var e:Ast.ParenExpr = expr.fun;
            if (e.x.id != "FuncLit") { 
                var t = typeExprType(e.x,info);
                switch t {
                    case TPath(p):
                        return (macro new $p()).expr;
                    default:
                        //trace("unknown type paren expr");
                        var arg = typeExpr(expr.args[0],info);
                        return (macro Go.assert(($arg : $t))).expr;
                }
            }
        case "ArrayType":
            //set assert type
            var type = typeExprType(expr.fun,info);
            var expr = typeExpr(expr.args[0],info);
            return (macro Go.assert(($expr : $type))).expr;
        case "InterfaceType":
            //set dynamic
            genArgs();
            return args[0].expr;
    }
    if (args.length == 0)
        genArgs();
    ellipsisFunc();
    var e = typeExpr(expr.fun,info);
    return ECall(e,args);
}
private function typeRest(expr:Expr):Expr {
    return macro ...$expr.toArray();
}
private function typeBasicLit(expr:Ast.BasicLit,info:Info):ExprDef {
    final bs = "\\".charAt(0);
    function formatEscapeCodes(value:String):String {
        value = StringTools.replace(value,bs + "a","\x07");
        value = StringTools.replace(value,bs + "b","\x08");
        value = StringTools.replace(value,bs + "e","\x1B");
        value = StringTools.replace(value,bs + "f","\x0C");
        value = StringTools.replace(value,bs + "n","\x0A");
        value = StringTools.replace(value,bs + "r","\x0D");
        value = StringTools.replace(value,bs + "t","\x09");
        value = StringTools.replace(value,bs + "v","\x0B");
        value = StringTools.replace(value,bs + "x",bs + "u00");
        value = StringTools.replace(value,bs + "U",bs + "u");
        if (value.charAt(0) == bs && value.charAt(1) == "u") {
            value = value.substring(2);
            value = bs + 'u{$value}';
        }
        
        //value = StringTools.replace(value,bs + "" ,"\x27");
        return value;
    }
    return switch expr.kind {
        case STRING:
            addImport("stdgo.GoString",info);
            info.type = TPath({name: "GoString",pack: []});
            var expr = toExpr(EConst(CString(expr.value)));
            return (macro new GoString($expr)).expr;
        case INT:
            info.type = TPath({name: "Int",pack: []});
            if (expr.value.length > 10) {
                try {
                var i = Int64Helper.parseString(expr.value);
                if (i > 2147483647 || i < -2147483647) {
                    info.type = TPath({name: "Int64",pack: ["haxe"]});
                    return (macro haxe.Int64Helper.fromFloat(${toExpr(EConst(CFloat(expr.value)))})).expr;
                }
                }catch(e) {
                    trace("basic lit int error: " + e + " value: " + expr.value);
                }
            }
            EConst(CInt(expr.value));
        case FLOAT:
            info.type = TPath({name: "Float",pack: []});
            EConst(CFloat(expr.value));
        case CHAR:
            info.type = TPath({name: "GoString",pack: []});
            var value = formatEscapeCodes(expr.value);
            var const = toExpr(EConst(CString(value)));
            if (value == bs + "'") {
                value = "'";
            }
            var const = toExpr(EConst(CString(value)));
            if (value == "\\") {
                return (macro $const.charCodeAt(0)).expr;
            }
            EField(const,"code");
        case IDENT: 
            EConst(CIdent(nameIdent(expr.value,info)));
        case IMAG: //TODO: IMPLEMENT COMPLEX NUMBER
            EConst(CInt("0"));
        default:
            error("basic lit kind unknown: " + expr.kind);
            null;
    }
}
private function typeUnaryExpr(expr:Ast.UnaryExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    if (expr.op == AND) {
        //pointer access
        addPointerImports(info);
        return (macro Go.pointer($x)).expr;
    }else{
        var type = typeUnOp(expr.op);
        if (type == null)
            return switch expr.op {
                case XOR: EBinop(OpXor,macro -1,x);
                case ARROW: return (macro $x.get()).expr;
                default: x.expr;  
            }
        return EUnop(type,false,x);
    }
}
private function typeCompositeLit(expr:Ast.CompositeLit,info:Info):ExprDef {
    var params:Array<Expr> = [];
    var p:TypePath = null;
    var type:ComplexType = null;
    function getParams() {
        for (elt in expr.elts) {
            params.push(typeExpr(elt,info));
        }
    }
    if (expr.type == null) {
        if (isKeyValueExpr(expr.elts)) {
            var expr = getKeyValueExpr(expr.elts,info);
            return (macro Go.setKeys($expr)).expr;
        }
        getParams();
        return (macro Go.set($a{params})).expr;
    }else{
        type = typeExprType(expr.type,info);
        switch type {
            case TPath(tp):
                p = tp;
            case TAnonymous(fields):
                if (isKeyValueExpr(expr.elts)) {
                    return getKeyValueExpr(expr.elts,info).expr;
                }else{
                    getParams();
                    return stdgo.Go.createAnonType(null,fields,params).expr;
                }
            default:
                throw "unknown type expr type: " + type;
        }
    }

    if (isKeyValueExpr(expr.elts)) {
        var e = getKeyValueExpr(expr.elts,info);
        return (macro ($e : $type)).expr;
    }
    getParams();
    if (p == null)
        throw "type path new is null: " + expr;
    return (macro new $p($a{params})).expr;
}

private function isKeyValueExpr(elts:Array<Ast.Expr>) {
    return elts.length > 0 && elts[0].id == "KeyValueExpr";
}
private function getKeyValueExpr(elts:Array<Ast.Expr>,info:Info) {
    var fields:Array<ObjectField> = [];
    for (elt in elts) {
        var e = typeKeyValueExpr(elt,info);
        if (e.key == null)
            continue;
        fields.push({
            field: (e.key.charAt(0) == "_" || e.key.charAt(0) == e.key.charAt(0).toLowerCase() ? "_" : "") + nameIdent(e.key,info),
            expr: e.value,
        });
    }
    return toExpr(EObjectDecl(fields));
}

private function typeFuncLit(expr:Ast.FuncLit,info:Info):ExprDef {
    var ret = typeFieldListRes(expr.type.results,info,true);
    info.ret.unshift(ret);
    var args = typeFieldListArgs(expr.type.params,info);
    var block = typeBlockStmt(expr.body,info);
    //allows multiple nested values
    info.retValues = info.retValues.slice(1);
    info.ret = info.ret.slice(1);
    info.deferBool = false;
    return EFunction(FAnonymous,{
        ret: ret,
        args: args,
        expr: block != null ? toExpr(block) : null,
    });
}
private function typeBinaryExpr(expr:Ast.BinaryExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var y = typeExpr(expr.y,info);
    switch expr.op { //operators that don't exist in haxe needle to be handled here
        case AND_NOT: //refrenced from Simon's Tardisgo
            return (macro $x & ($y ^ Int64.make(-1,-1))).expr;
        default:
    }
    var op = typeOp(expr.op);
    function isNil() {
        switch x.expr {
            case EConst(c):
                switch c {
                    case CIdent(s):
                        if (s == "null")
                            return y;
                    default:
                }
            default:
        }
        switch y.expr {
            case EConst(c):
                switch c {
                    case CIdent(s):
                        if (s == "null")
                            return x;
                    default:
                }
            default:
        }
        return null;
    }
    switch op {
        case OpShr, OpShl, OpUShr, OpAnd, OpOr:
            return EBinop(op,macro Std.int($x),macro Std.int($y));
        case OpXor:
            return EBinop(op,x,y);
        case OpDiv:
            return (macro Go.divide($x,$y)).expr;
        case OpEq:
            var value = isNil();
            if (value != null)
                return (macro Go.isNull($value)).expr;
        case OpNotEq:
            var value = isNil();
            if (value != null)
                return (macro !Go.isNull($value)).expr;
        default:
    }
    return EBinop(op,x,y);
}
private function typeUnOp(token:Ast.Token):Unop {
    return switch token {
        case NOT: OpNot;
        case SUB: OpNeg;
        case ARROW: null;
        case XOR: null;
        case ADD: null;
        default: error("unknown unop token: " + token); OpNegBits;
    }
}
private function typeOp(token:Ast.Token):Binop {
    return switch token {
        case ADD: OpAdd;
        case SUB: OpSub;
        case MUL: OpMult;
        case QUO: OpDiv;
        case ASSIGN: OpAssign;
        case EQL: OpEq;
        case NEQ: OpNotEq;
        case GTR: OpGt;
        case GEQ: OpGte;
        case LSS: OpLt;
        case LEQ: OpLte;
        case AND: OpAnd;
        case OR: OpOr;
        case XOR: OpXor;
        case LAND: OpBoolAnd;
        case LOR: OpBoolOr;
        case SHL: OpShl;
        case SHR: OpShr;
        case REM: OpMod;

        case ADD_ASSIGN: OpAssignOp(OpAdd); 
        case SUB_ASSIGN: OpAssignOp(OpSub);
        case MUL_ASSIGN: OpAssignOp(OpMult);
        case QUO_ASSIGN: OpAssignOp(OpDiv);
        case REM_ASSIGN: OpAssignOp(OpMod);
        case SHL_ASSIGN: OpAssignOp(OpShl);
        case SHR_ASSIGN: OpAssignOp(OpShr);
        case XOR_ASSIGN: OpAssignOp(OpXor);
        case OR_ASSIGN: OpAssignOp(OpOr);

        case AND_ASSIGN: OpAssignOp(OpAnd);
        case AND_NOT_ASSIGN: OpInterval; //TODO properly create AND_NOT operator

        case RANGE: OpInterval; //TODO turn into iterator
        case ELLIPSIS: OpInterval;
        default: error("unknown op token: " + token); OpInterval;
    }
}
private function typeSelectorExpr(expr:Ast.SelectorExpr,info:Info):ExprDef { //EField
    var x = typeExpr(expr.x,info);
    var sel = expr.sel.name;
    switch x.expr {
        case EField(e, field):
            if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
                sel = nameIdent(sel,info);
            }else{
                sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel,info);
            }
        case EConst(c):
            switch c {
                case CIdent(s):
                    var index = s.lastIndexOf(".");
                    var field = s.substr(index + 1);
                    if (field.charAt(0) == field.charAt(0).toUpperCase() && field.charAt(0) != "_") {
                        sel = nameIdent(sel,info);
                    }else{
                        sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel,info);
                    }
                default:
            }
        default:
            sel = (sel.charAt(0) == sel.charAt(0).toLowerCase() ? "_" : "") + nameIdent(sel,info);
    }
    return (macro $x.$sel).expr; //EField
}
private function typeSliceExpr(expr:Ast.SliceExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var low = expr.low != null ? typeExpr(expr.low,info) : macro 0;
    var high = expr.high != null ? typeExpr(expr.high,info): null;
    x = high != null ? macro $x.slice($low,$high) : macro $x.slice($low);
    if (expr.slice3)
        x = macro $x.slice(${typeExpr(expr.max,info)});
    return x.expr;
}
private function typeAssertExpr(expr:Ast.TypeAssertExpr,info:Info):ExprDef {
    var e = typeExpr(expr.x,info);
    if (expr.type == null)
        return e.expr;
    var type = typeExprType(expr.type,info);
    return (macro Go.assert(($e : $type))).expr;
}
private function typeIndexExpr(expr:Ast.IndexExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var index = typeExpr(expr.index,info);
    return (macro $x[$index]).expr;
}
private function typeStarExpr(expr:Ast.StarExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    return (macro $x._value_).expr; //pointer code
}
private function typeParenExpr(expr:Ast.ParenExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    return x != null ? EParenthesis(x) : null;
}
//SPECS
private function typeDeferReturn():Expr {
    return macro for (defer in deferstack) Reflect.callMethod(null,defer[0],defer.slice(1));
}
private function typeFunction(decl:Ast.FuncDecl,info:Info):TypeDefinition {
    var exprs:Array<Expr> = [];
    info.retypeMap.clear(); //clear renaming as it's a new function
    info.local = false;
    info.deferBool = false;
    info.layerIndex = 0;
    function getBlock() {
        if (decl.body.list != null) 
            exprs = [for (stmt in decl.body.list) typeStmt(stmt,info)];
        //label and goto system
        var labels:Array<String> = [];
        
        if (decl.body.list != null) for (i in 0...decl.body.list.length) {
            switch decl.body.list[i].id {
                case "LabeledStmt":
                    var stmt:Ast.LabeledStmt = decl.body.list[i];
                    var name = nameIdent(stmt.label.name,info) + "_label";
                    labels.push(name);
                    var body = exprs.splice(i,decl.body.list.length);
                    var func = toExpr(EFunction(null,{
                        expr: toExpr(EBlock(body)),
                        args: [],
                    }));
                    var v = toExpr(EConst(CIdent(name)));
                    exprs.unshift(macro $v = $func);
                    exprs.unshift(macro var $name = null);
                    exprs.push(macro return $v());
                default:
            }
        }
        //defer system
        if (info.deferBool) {
            exprs.unshift(macro var deferstack:Array<Array<Dynamic>> = []);
            exprs.push(typeDeferReturn());
        }
        //add potential return value variables
        if (info.retValues.length > 0 && info.retValues[0].length > 0)
            exprs.unshift(getRetValues(info));
        return toExpr(EBlock(exprs));
    }

    var name = nameIdent(decl.name.name,info);
    info.funcName = name;
    info.retValues = [];
    var ret = typeFieldListRes(decl.type.results,info,true);
    info.ret = [ret];
    var args = typeFieldListArgs(decl.type.params,info);
    info.thisName = "";
    if (decl.recv != null) { //now is a static extension function
        if (decl.name.name.charAt(0) == decl.name.name.charAt(0).toLowerCase())
            name = "_" + name;
        var recvType = typeExprType(decl.recv.list[0].type,info);
        var recvInfo = getRecvInfo(recvType);
        for (def in info.data.defs) {
            switch def.kind {
                case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
                    if (def.name != recvInfo.name)
                        continue;
                    var block:Expr = null;
                    if (decl.recv.list[0].names.length > 0) {
                        var varName = decl.recv.list[0].names[0].name;
                        if (recvInfo.isPointer) {
                            block = getBlock();
                        }else{
                            block = getBlock();
                        }
                        info.thisName = varName;
                        exprs.unshift(macro var $varName = new PointerWrapper(this));
                    }
                    def.fields.push({
                        name: name,
                        pos: null,
                        meta: null,//[{params: [toExpr(EConst(CIdent(def.name)))],name: ":access",pos: null}],
                        access: decl.recv != null ? [APublic] : typeAccess(decl.name.name),
                        kind: FFun({
                            args: args,
                            ret: ret,
                            expr: block,
                        })
                    });
                default:
                    continue;
            }
            return null;
        }
    }
    var doc = getDoc(decl) + getSource(decl,info);
    return {
        name: name,
        pos: null,
        pack: [],
        fields: [],
        doc: doc,
        kind: TDField(FFun({ret: ret,params: null,expr: getBlock(), args: args}),typeAccess(decl.name.name))
    };
}
private function getRetValues(info:Info) {
    return toExpr(EVars([for (value in info.retValues[0]) {
        name: value.name,
        type: value.type,
        expr: stdgo.Builtin.defaultValue(value.type,null),
    }]));
}
private function getRecvInfo(recvType:ComplexType):{name:String,isPointer:Bool} {
    switch recvType {
        case TPath(p):
            if (p.name == "Pointer" || p.name == "PointerWrapper") {
                switch p.params[0] {
                    case TPType(t):
                        switch t {
                            case TPath(p):
                                return {name: p.name,isPointer: true};
                            default:
                        }
                    default:
                }
            }
            return {name: p.name,isPointer: false};
        default:
    }
    return {name: "",isPointer: false};
}
private function typeFieldListRes(fieldList:Ast.FieldList,info:Info,retValuesBool:Bool):ComplexType { //A single type or Anonymous struct type
    if (fieldList == null)
        return TPath({
            name: "Void",
            pack: [],
        });
    var list:Array<{name:String,type:ComplexType}> = [];
    var r:Array<{name:String,type:ComplexType}> = [];
    var i:Int = 0;
    for (group in fieldList.list) {
        var type = typeExprType(group.type,info);
        if (type == null)
            continue;
        if (group.names.length == 0) {
            list.push({
                name: "v" + (i++),
                type: type,
            });
        }else{
            for (name in group.names) {
                list.push({
                    name: nameIdent(name.name,info),
                    type: type,
                });
                r.push({name: name.name,type: type});
            }
        }
    }
    if (retValuesBool && r.length > 0)
        info.retValues.unshift(r);
    if (list.length > 1) {
        //anonymous
        return TAnonymous([
            for (field in list) {
                name: field.name,
                pos: null,
                kind: FVar(field.type)
            }
        ]);
    }else{
        if (list.length == 0)
            return TPath({
                name: "Void",
                pack: [],
            });
        return list[0].type;
    }
}
private function typeFieldListArgs(list:Ast.FieldList,info:Info):Array<FunctionArg> { //Array of FunctionArgs
    var args:Array<FunctionArg> = [];
    for (field in list.list) {
        var type = typeExprType(field.type,info); //null can be assumed as interface{}

        for (name in field.names) {
            args.push({
                name: nameIdent(name.name,info),
                type: type,
            });
        }
    }
    return args;
}
private function typeFieldListComplexTypes(list:Ast.FieldList,info:Info):Array<ComplexType> {
    var args:Array<ComplexType> = [];
    for (field in list.list) {
        var type = typeExprType(field.type,info);
        for (name in field.names) {
            args.push(TNamed(name.name,type));
        }
    }
    return args;
}
private function typeFieldListMethods(list:Ast.FieldList,info:Info,underlineBool:Bool):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        var expr:Ast.FuncType = field.type;

        var ret = typeFieldListRes(expr.results,info,false);
        var params = typeFieldListArgs(expr.params,info);
        if (ret == null || params == null)
            continue;
        for (n in field.names) {
            var name = n.name;
            if (underlineBool) {
                if (name.charAt(0) == name.charAt(0).toLowerCase())
                    name = "_" + name;
            }
            fields.push({
                name: nameIdent(name,info),
                pos: null,
                access: typeAccess(n.name,true),
                kind: FFun({
                    args: params,
                    ret: ret,
                })
            });
        }
    }
    return fields;
}
//can also be used for ObjectFields
private function typeFieldListFields(list:Ast.FieldList,info:Info,access:Array<Access> = null,defaultBool:Bool,underlineBool:Bool):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        var type = typeExprType(field.type,info);
        if (field.names.length == 0) {
            switch type {
                case TPath(p):
                    var name:String = field.type.id == "SelectorExpr" ? field.type.sel.name : field.type.name;
                    if (name == null)
                        continue;
                    if (underlineBool) {
                        if (name.charAt(0) == name.charAt(0).toLowerCase())
                            name = "_" + name;
                    }
                    fields.push({
                        name: nameIdent(name,info),
                        pos: null,
                        access: access == null ? typeAccess(name,true) : access,
                        kind: FVar(type,defaultBool ? stdgo.Builtin.defaultValue(type,null) : null)
                    });
                default:
            }
        }
        
        for (n in field.names) {
            if (n.name == "_")
                continue;
            var name = n.name;
            if (underlineBool) {
                if (name.charAt(0) == name.charAt(0).toLowerCase())
                    name = "_" + name;
            }
            fields.push({
               name: nameIdent(name,info),
               pos: null,
               access: access == null ? typeAccess(n.name,true) : access,
               kind: FVar(type,defaultBool ? stdgo.Builtin.defaultValue(type,null) : null),
            });
        }
    }
    return fields;
}
private function typeFieldListTypes(list:Ast.FieldList,info:Info):Array<TypeDefinition> {
    var defs:Array<TypeDefinition> = [];
    for (field in list.list) {
        var type = typeExprType(field.type,info);
        for (name in field.names) {
            defs.push({
                name: nameIdent(name.name,info),
                pos: null,
                pack: [],
                fields: [],
                kind: null,
            });
        }
    }
    return defs;
}
private function renameDef(name:String,info:Info):String {
    for (decl in info.data.defs) {
        if (decl == null)
            continue;
        if (decl.name == name) {
            return renameDef(name + "_",info);
        }
    }
    return name;
}
private function typeType(spec:Ast.TypeSpec,info:Info):TypeDefinition {
    var name = className(title(spec.name.name));
    info.className = name;
    if (info.local) {
        var newName = renameDef(name,info);
        name = newName;
    }
    var doc:String = getComment(spec) + getDoc(spec) + getSource(spec,info);
    switch spec.type.id {
        case "StructType":
            var struct:Ast.StructType = spec.type;
            var fields = typeFieldListFields(struct.fields,info,[APublic],true,true);
            fields.push({
                name: "new",
                pos: null,
                access: [APublic],
                kind: FFun({
                    args: [for (field in fields) {name: field.name,opt: true}],
                    expr: macro stdgo.internal.Macro.initLocals(),
                }),
            });
            var toStringValue = "{";
            for (field in fields) {
                switch field.kind {
                    case FVar(t, e):
                        toStringValue += "${Std.string(" + field.name + ")} ";
                    default:
                }
            }
            toStringValue = toStringValue.substr(0,toStringValue.length - 1);
            toStringValue += "}";
            var toStringExpr = toExpr(EConst(CString(toStringValue,SingleQuotes)));
            fields.push({
                name: "toString",
                pos: null,
                access: [APublic],
                kind: FFun({
                   args: [],
                   expr: macro {
                       return $toStringExpr;
                   },
                }),
            });
            var type:TypePath = {name: name, pack: []};
            var args:Array<Expr> = [];
            for (field in fields) {
                switch field.kind {
                    case FVar(t, e):
                        args.push(toExpr(EConst(CIdent(field.name))));
                    default:
                }
            }
            fields.push({
                name: "__copy__", //internally used
                pos: null,
                access: [APublic],
                kind: FFun({
                    args: [],
                    expr: macro {
                        return new $type($a{args});
                    },
                }),
            });
            var meta:Metadata = [{name: ":structInit",pos: null}, getAllow(info)];
            
            return {
                name: name,
                pos: null,
                fields: fields,
                pack: [],
                doc: doc,
                meta: meta,
                kind: TDClass(null,[],false,true,false),
            }
        case "InterfaceType":
            //var interface:Ast.InterfaceType = spec.type;
            var struct:Ast.InterfaceType = spec.type;
            if (struct.methods.list.length == 0)
                return {
                    name: name,
                    pos: null,
                    fields: [],
                    pack: [],
                    kind: TDAlias(TPath({name: "Any",pack: []})),
                }
            var fields = typeFieldListMethods(struct.methods,info,true);
            return {
                name: name,
                pack: [],
                pos: null,
                doc: doc,
                fields: fields,
                meta: [getAllow(info)],
                kind: TDClass(null,[],true)
            };
            //error("unknown interface type spec"); null;
        default:
            var type = typeExprType(spec.type,info);
            if (type == null)
                return null;
            return {
                name: name,
                pack: [],
                pos: null,
                doc: doc,
                fields: [],
                kind: TDAlias(type)
            }
    }
}
private function getAllow(info:Info) {
    return {name: ":allow",params: [toExpr(EConst(CIdent(info.path)))],pos: null};
}
private function typeImport(imp:Ast.ImportSpec,info:Info):ImportType {
    
    var path = normalizePath(imp.path.value).split("/");
    var alias = imp.name == null ? null : imp.name.name;
    if (alias == "_")
        alias = "";
    if (stdgoList.indexOf(path[0]) != -1)
        path.unshift("stdgo");
    var name = path[path.length - 1];
    path.push(title(name));
    info.types[name] = path.join(".");
    return {
        path: path,
        alias: alias,
    }
}
private function typeValue(value:Ast.ValueSpec,info:Info):Array<TypeDefinition> {
    var type:ComplexType = null;
    if (value.type.id != null)
      type = typeExprType(value.type,info);
    var values:Array<TypeDefinition> = [];
    for (i in 0...value.names.length)
    {
        if (value.names[i] == "_")
            continue;
        info.type = null;
        var expr:Expr = null;
        if (value.values[i] == null) {
            if (type != null)
                expr = stdgo.Builtin.defaultValue(type,null);
        }else{
            expr = typeExpr(value.values[i],info);
        }
        if (expr == null)
            continue;
        var name = nameIdent(value.names[i],info);

        var doc:String = getComment(value) + getDoc(value) + getSource(value,info);
        var access = typeAccess(value.names[i]);
        if (value.constants[i])
            access.push(AFinal);
        values.push({
            name: name,
            pos: null,
            pack: [],
            fields: [],
            doc: doc,
            kind: TDField(FVar(type == null && value.values[i] != null && value.values[i].id == "BasicLit" ? info.type : type,expr),access)
        });
    }
    return values;
}
private function getComment(value:{comment:Ast.CommentGroup}):String {
    if (value.comment == null || value.comment.list == null)
        return "";
    return value.comment.list.join("\n");
}
private function getDoc(value:{doc:Ast.CommentGroup}):String {
    if (value.doc == null || value.doc.list == null)
        return "";
    return value.doc.list.join("\n");
}
private function getSource(value:{pos:Int,end:Int},info:Info):String {
    if (value.pos == value.end)
        return "";
    var file = File.read(info.data.location,false);
    file.seek(value.pos,sys.io.FileSeek.SeekBegin);
    var source:String = "";
    try {
        source = file.readString(value.end - value.pos);
    }catch(e) {
        trace(e);
    }
    file.close();
    return source;
}
private function typeAccess(name:String,isField:Bool=false):Array<Access> {
    return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
}
private function nameIdent(name:String,info:Info):String {
    if (name == "nil")
        return "null";
    if (info.imports.exists(name))
        return info.imports[name];
    if (info.types.exists(name))
        name = info.types[name];
    name = untitle(name);
    if (reserved.indexOf(name) != -1)
        name += "_";
    return name;
}
private function normalizePath(path:String):String {
    path = StringTools.replace(path,".","_");
    path = StringTools.replace(path,":","_");
    path = StringTools.replace(path,"-","_");
    var path = path.split("/");
    for (i in 0...path.length) {
        if (reserved.indexOf(path[i]) != -1)
            path[i] += "_";
    }
    return path.join("/");
}
function isTitle(string:String):Bool {
    return string.charAt(0) == string.charAt(0).toUpperCase();
}
function title(string:String):String {
    return string.charAt(0).toUpperCase() + string.substr(1);
}
function untitle(string:String):String {
    var index:Int = 0;
    for (i in 0...string.length) {
        if (string.charAt(i) == "_")
            continue;
        if (string.charAt(i) == string.charAt(i).toLowerCase())
            break;
        index = i;
    }
    index++;
    string = string.substr(0,index).toLowerCase() + string.substr(index);
    return string;
}
typedef Info = {layerIndex:Int,fieldNames:Array<String>,typeNames:Array<String>,thisName:String,retValues:Array<Array<{name:String,type:ComplexType}>>,deferBool:Bool, className:String,funcName:String,path:String, types:Map<String,String>,imports:Map<String,String>,ret:Array<ComplexType>,type:ComplexType, data:FileType,local:Bool,retypeMap:Map<String,ComplexType>,print:Bool,blankCounter:Int};

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,location:String,decls:Array<Dynamic>}>}; //filepath of export.json also stored here
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>,location:String}; //location is the global path to the file
