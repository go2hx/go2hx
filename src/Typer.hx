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
	"implements", "import", "in", "inline", "macro", "new", "null", "operator", "overload", "override", "package", "private",
	"public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while","construct",
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
function main(data:DataType){
    var list:Array<Module> = [];
    for (pkg in data.pkgs) {
        if (pkg.files == null)
            continue;
        var module:Module = {path: normalizePath(pkg.path),files: []};
        var main:FileType = null;
        for (file in pkg.files) {
            if (file.decls == null)
                continue;
            file.path = normalizePath(Path.withoutExtension(file.path));
            var data:FileType = {name: file.path,imports: [],defs: []};
            data.name = normalizePath(data.name);
            var p = StringTools.replace(module.path,"/",".");
            if (p == "")
                p == "std";
            var info:Info = {funcName: "",path: p, disablePointerAccess: false, types: [],imports: [],ret: null,type: null, data: data,local: false,retypeMap: [],print: false,meta: [],blankCounter: 0};
            var declFuncs:Array<Ast.FuncDecl> = [];
            for (decl in file.decls) {
                switch decl.id {
                    case "GenDecl":
                        typeGenDecl(decl,info);
                    case "FuncDecl":
                        declFuncs.push(decl);
                    default:

                }
            }
            for (decl in declFuncs) { //parse function bodies last
                var func = typeFunction(decl,info);
                if (func != null)
                    data.defs.push(func);
            }
            typeImplements(info);
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
                info.data.defs = info.data.defs.concat(typeValue(spec,info));
            case "TypeSpec":
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
private function typeSendStmt(stmt:Ast.SendStmt,info:Info):ExprDef {
    var chan = typeExpr(stmt.chan,info);
    var value = typeExpr(stmt.value,info);
    return (macro $chan.send($value)).expr;
}
private function typeSelectStmt(stmt:Ast.SelectStmt,info:Info):ExprDef {
    return null;
}
private function typeBranchStmt(stmt:Ast.BranchStmt,info:Info):ExprDef {
    return switch stmt.tok {
        case CONTINUE: EContinue;
        case BREAK: EBreak;
        case GOTO: EBreak; //TODO
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
        return null;
    return typeStmtList(stmt.list,info);
}
private function typeStmtList(list:Array<Ast.Stmt>,info:Info):ExprDef {
    return EBlock(list == null ? [] : [
        for (stmt in list) 
            typeStmt(stmt,info)
    ]);
}
private function typeLabeledStmt(stmt:Ast.LabeledStmt,info:Info):ExprDef {
    return null;
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
    return null;
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
                    spec.name.name += "_" + info.funcName;
                    info.retypeMap[name] = TPath({
                        name: className(title(spec.name.name)),
                        pack: [],
                    }); 
                    info.data.defs.push(typeType(spec,info));
                case "ValueSpec":
                    var spec:Ast.ValueSpec = spec;
                    info.meta = [];
                    info.type = null;
                    var type = typeExprType(spec.type,info);
                    var value = macro null;
                    var args:Array<Expr> = [];
                    var t = type != null ? type : info.type;
                    if (spec.type.id == "ArrayType" && info.meta.length > 0) {
                        for (meta in info.meta) {
                            args.push(toExpr(EConst(CInt(Std.string(stdgo.Builtin.getMetaLength(meta))))));
                        }
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
                                expr: i < spec.values.length ? typeExpr(spec.values[i],info) : stdgo.Builtin.defaultValue(t,null),
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
        case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN,SHL_ASSIGN,SHR_ASSIGN,XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN:
            if (stmt.lhs.length == stmt.rhs.length) {
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
private function typeIfStmt(stmt:Ast.IfStmt,info:Info):ExprDef {
    var ifStmt:Expr = toExpr(EIf(typeExpr(stmt.cond,info),typeStmt(stmt.body,info),typeStmt(stmt.elseStmt,info)));
    if (stmt.init != null)
        return EBlock([typeStmt(stmt.init,info),ifStmt]);
    return ifStmt.expr;
}
private function typeReturnStmt(stmt:Ast.ReturnStmt,info:Info):ExprDef {
    if (stmt.results.length == 0)
        return EReturn();
    if (stmt.results.length == 1)
        return EReturn(typeExpr(stmt.results[0],info));
    //multireturn
    switch info.ret[0] {
        case TAnonymous(fields):
            var expr = toExpr(EObjectDecl([for (i in 0...fields.length) {
                field: fields[i].name,
                expr: typeExpr(stmt.results[i],info),
            }]));
            return EReturn(expr);
        default:
            trace("unknown multi return type: " + info.ret[0]);
    }
    return EReturn();
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
        return null;
    }
}
private function structType(expr:Ast.StructType,info:Info):ComplexType {
    var fields = typeFieldListFields(expr.fields,info,[],false);
    return TAnonymous(fields);
}
private function funcType(expr:Ast.FuncType,info:Info):ComplexType {
    var ret = typeFieldListRes(expr.results,info);
    var params = typeFieldListComplexTypes(expr.params,info);
    if (ret == null || params == null)
        return null;
    return TFunction(params,ret);
}
private function arrayType(expr:Ast.ArrayType,info:Info):ComplexType {
    //array is pass by copy, slice is pass by ref except for its length
    var type = typeExprType(expr.elt,info);
    if (expr.len != null) {
        //array
        addImport("stdgo.GoArray",info);
        info.meta.push([{pos: null,name: "length",params: [typeExpr(expr.len,info)]}]);
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
private function starType(expr:Ast.StarExpr,info:Info):ComplexType {
    var type = typeExprType(expr.x,info);
    addImport("stdgo.Pointer",info);
    return TPath({
        pack: [],
        name: "Pointer",
        params: type != null ? [TPType(type)] : []
    });
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
                return [x.name];
            case "SelectorExpr":
                var x:Ast.SelectorExpr = x;
                return [x.sel.name].concat(func(x.x));
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
        case "InterfaceType": null;
        default:
            trace("unknown expr id: " + expr.id); 
            null;
    };
    return def == null ? {error("expr null: " + expr.id); null;} : toExpr(def);
}
//EXPR
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
    if (info.types.exists(expr.name))
        expr.name = info.types[expr.name];
    return EConst(CIdent(nameIdent(expr.name,info)));
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
        case "SelectorExpr":
            expr.fun.sel.name =  nameIdent(untitle(expr.fun.sel.name),info); //all functions lowercase
        case "Ident":
            switch expr.fun.name {
                /*case "string":
                    genArgs();
                    return (macro Std.string($a{args})).expr;*/
                case "cap":
                    return (macro ${typeExpr(expr.args[0],info)}.cap()).expr;
                case "len":
                    return (macro ${typeExpr(expr.args[0],info)}.length).expr;
                case "new": //create default value put into pointer

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
            var t = typeExprType(e.x,info);
            switch t {
                case TPath(p):
                    return (macro new $p()).expr;
                default:
                    trace("unknown type paren expr");
            }
        case "ArrayType":
            //set assert type
            var type = typeExprType(expr.fun,info);
            var expr = typeExpr(expr.args[0],info);
            return (macro Go.assert(($expr : $type))).expr;
        case "InterfaceType":
            //set dynamic
            genArgs();
            trace("args: " + args);
            return args[0].expr;
    }
    if (args.length == 0)
        genArgs();
    ellipsisFunc();
    var e = typeExpr(expr.fun,info);
    return ECall(e,args);
}
private function typeRest(expr:Expr):Expr {
    return expr == null ? null : macro ...$expr.toArray();
}
private function getDefaultValue(type:ComplexType):Expr {
    return switch type {
        case TPath(p):
            if (stdgo.internal.Macro.isNumber(p.name))
                return macro 0;
    
            switch p.name {
                case "String", "GoString": macro "";
                case "Bool": macro false;
                case "Slice": macro new stdgo.Slice();
                case "Any","Dynamic","GoDynamic": macro {};
                default: macro new $p();
            }
        default:
            trace("default value unknown: " + type);
            macro null;
    }
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
            return EField(const,"code");
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
    info.meta = [];
    var params:Array<Expr> = [];
    var p:TypePath = null;
    var type:ComplexType = null;
    function getParams() {
        for (elt in expr.elts) {
            params.push(typeExpr(elt,info));
        }
    }
    if (expr.type == null) {
        getParams();
        return (macro Go.set($a{params})).expr;
    }else{
        type = typeExprType(expr.type,info);
        switch type {
            case TPath(tp):
                p = tp;
            default:
                throw "unknown type expr type: " + type;
        }
    }

    if (expr.elts.length > 0 && expr.elts[0].id == "KeyValueExpr") {
        var e = toExpr(EObjectDecl([for(elt in expr.elts) {
            var e = typeKeyValueExpr(elt,info);
            {
                field: e.key,
                expr: e.value,
            };
        }]));

        return (macro ($e : $type)).expr;
    }
    getParams();
    if (p == null)
        throw "type path new is null: " + expr;
    return (macro new $p($a{params})).expr;
}

private function typeFuncLit(expr:Ast.FuncLit,info:Info):ExprDef {
    var ret = typeFieldListRes(expr.type.results,info);
    info.ret.unshift(ret);
    var args = typeFieldListArgs(expr.type.params,info);
    var block = typeBlockStmt(expr.body,info);
    info.ret = info.ret.slice(1);
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
    switch op {
        case OpShr, OpShl, OpUShr, OpAnd, OpOr:
            return EBinop(op,macro Std.int($x),macro Std.int($y));
        case OpXor:
            return null;
        case OpDiv:
            var isInt:Bool = false;
            if (expr.x.id == "BasicLit" && expr.x.kind == Ast.Token.INT)
                isInt = true;
            if (!isInt && expr.y.id == "BasicLit" && expr.y.kind == Ast.Token.INT)
                isInt = true;
            if (isInt) {
                var expr = toExpr(EBinop(op,x,y));
                return (macro ($expr : Int)).expr;
            }
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

        case RANGE: OpInterval; //TODO turn into iterator
        case ELLIPSIS: OpInterval;
        default: error("unknown op token: " + token); OpInterval;
    }
}
private function typeSelectorExpr(expr:Ast.SelectorExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var sel = expr.sel.name;
    switch x.expr {
        case EField(e, field):
            if (field.charAt(0) == field.charAt(0).toUpperCase())
                sel = untitle(sel);
        case EConst(c):
            switch c {
                case CIdent(s):
                    var index = s.lastIndexOf(".");
                    var field = s.substr(index + 1);
                    if (field.charAt(0) == field.charAt(0).toUpperCase())
                        sel = untitle(sel);
                default:
            }
        default:
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
    if (info.disablePointerAccess)
        return (macro x).expr;
    return (macro $x[0]).expr;
}
private function typeParenExpr(expr:Ast.ParenExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    return x != null ? EParenthesis(x) : null;
}
//SPECS
private function typeFunction(decl:Ast.FuncDecl,info:Info):TypeDefinition {
    var exprs:Array<Expr> = [];
    var meta:Metadata = [];
    info.retypeMap.clear(); //clear renaming as it's a new function
    info.local = false;
    function getBlock() {
        if (decl.body.list != null) 
            exprs = [for (stmt in decl.body.list) typeStmt(stmt,info)];
        return toExpr(EBlock(exprs));
    }

    var name = nameIdent(untitle(decl.name.name),info);
    info.funcName = name;
    var ret = typeFieldListRes(decl.type.results,info);
    info.ret = [ret];
    var args = typeFieldListArgs(decl.type.params,info);

    if (decl.recv != null) { //now is a static extension function
        var recvType = typeExprType(decl.recv.list[0].type,info);
        var recvInfo = getRecvInfo(recvType);
        for (def in info.data.defs) {
            switch def.kind {
                case TDClass(superClass, interfaces, isInterface, isFinal, isAbstract):
                    if (def.name != recvInfo.name)
                        continue;
                    var block:Expr = null;
                    var varName = decl.recv.list[0].names[0].name;
                    if (recvInfo.isPointer) {
                        info.disablePointerAccess = true;
                        block = getBlock();
                        info.disablePointerAccess = false;
                        exprs.unshift(macro var $varName = this);
                    }else{
                        block = getBlock();
                        exprs.unshift(macro var $varName = this);
                    }
                    def.fields.push({
                        name: name,
                        pos: null,
                        access: typeAccess(name), //TODO: allow private access within own package, public/private works normally outside of package.
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
    return {
        name: name,
        pos: null,
        pack: [],
        fields: [],
        meta: meta,
        kind: TDField(FFun({ret: ret,params: null,expr: getBlock(), args: args}),typeAccess(name))
    };
}
private function getRecvInfo(recvType:ComplexType):{name:String,isPointer:Bool} {
    switch recvType {
        case TPath(p):
            if (p.name == "Pointer") {
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
private function typeFieldListRes(fieldList:Ast.FieldList,info:Info):ComplexType { //A single type or Anonymous struct type
    if (fieldList == null)
        return TPath({
            name: "Void",
            pack: [],
        });
    var list:Array<{name:String,type:ComplexType,meta:Metadata}> = [];
    var i:Int = 0;
    for (group in fieldList.list) {
        info.meta = [];
        var type = typeExprType(group.type,info);
        if (type == null)
            continue;
        if (group.names.length == 0) {
            list.push({
                name: "v" + (i++),
                type: type,
                meta: null,
            });
        }else{
            for (name in group.names) {
                list.push({
                    name: name.name,
                    type: type,
                    meta: info.meta.shift(),
                });
            }
        }
    }
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
        info.meta = [];
        var type = typeExprType(field.type,info); //null can be assumed as interface{}

        for (name in field.names) {
            args.push({
                name: name.name,
                type: type,
                meta: info.meta.shift(),
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
private function typeFieldListMethods(list:Ast.FieldList,info:Info):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        var expr:Ast.FuncType = field.type;

        var ret = typeFieldListRes(expr.results,info);
        var params = typeFieldListArgs(expr.params,info);
        if (ret == null || params == null)
            continue;

        for (name in field.names) {
            fields.push({
                name: untitle(name.name),
                pos: null,
                access: typeAccess(name.name,true),
                kind: FFun({
                    args: params,
                    ret: ret,
                })
            });
        }
    }
    return fields;
}
private function typeFieldListFields(list:Ast.FieldList,info:Info,access:Array<Access> = null,defaultBool:Bool=true):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        info.meta = [];
        var type = typeExprType(field.type,info);
        if (field.names.length == 0) {
            switch type {
                case TPath(p):
                    var name:String = field.type.id == "SelectorExpr" ? field.type.sel.name : field.type.name;
                    fields.push({
                        name: untitle(name),
                        pos: null,
                        meta: info.meta.shift(),
                        access: access == null ? typeAccess(name,true) : access,
                        kind: FVar(type,defaultBool ? stdgo.Builtin.defaultValue(type,null) : null)
                    });
                default:
            }
        }
        
        for (name in field.names) {
            fields.push({
               name: untitle(name.name),
               pos: null,
               meta: info.meta.shift(),
               access: access == null ? typeAccess(name.name,true) : access,
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
                name: untitle(name.name),
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

    if (info.local) {
        var newName = renameDef(name,info);
        name = newName;
    }
    switch spec.type.id {
        case "StructType":
            var struct:Ast.StructType = spec.type;
            var fields = typeFieldListFields(struct.fields,info);
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
                name: "copy",
                pos: null,
                access: [APublic],
                kind: FFun({
                    args: [],
                    expr: macro {
                        return new $type($a{args});
                    },
                }),
            });

            return {
                name: name,
                pos: null,
                fields: fields,
                pack: [],
                meta: [{name: ":structInit",pos: null}, getAllow(info)],
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
            var fields = typeFieldListMethods(struct.methods,info);
            return {
                name: name,
                pack: [],
                pos: null,
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
                fields: [],
                kind: TDAlias(type)
            }
    }
}
private function getAllow(info:Info) {
    return {name: ":allow",params: [toExpr(EConst(CIdent(info.path)))],pos: null};
}
private function typeImport(imp:Ast.ImportSpec,info:Info):ImportType {
    var path = (imp.path.value : String).split("/");
    var alias = imp.name == null ? null : imp.name.name;
    if (alias == "_")
        alias = "";
    if (stdgoList.indexOf(path[0]) != -1)
        path.unshift("stdgo");
    var name = path[path.length - 1];
    path[path.length - 1] = title(name);
    var create:Bool = true;
    if (path.length == 1) {
        switch name {
            case "math","reflect":
                alias = title(name);
                path[0] = 'Go$alias';
                path.unshift("stdgo");
                create = false;
        }
    }
    info.types[name] = path.join(".");
    if (!create)
        return null;
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
        info.type = null;
        var expr = typeExpr(value.values[i],info);
        if (expr == null)
            continue;
        var name = untitle(value.names[i]);
        if (name == "_")
            name = name + (info.blankCounter++);
        values.push({
            name: name,
            pos: null,
            pack: [],
            fields: [],
            kind: TDField(FVar(type == null && value.values[i].id == "BasicLit" ? info.type : type,expr),typeAccess(value.names[i]))
        });
    }
    return values;
}
private function typeAccess(name:String,isField:Bool=false):Array<Access> {
    return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
}
private function nameIdent(name:String,info:Info):String {
    if (reserved.indexOf(name) != -1)
        name += "_";
    if (name == "nil")
        name = "null";
    if (info.imports.exists(name))
        return info.imports[name];
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
    if (string.length > 1 && string.charAt(1).toUpperCase() == string.charAt(1))
        return string;
    return string.charAt(0).toLowerCase() + string.substr(1);
}
typedef Info = {funcName:String, path:String, disablePointerAccess:Bool, types:Map<String,String>,imports:Map<String,String>,ret:Array<ComplexType>,type:ComplexType, data:FileType,local:Bool,retypeMap:Map<String,ComplexType>,print:Bool,meta:Array<Metadata>,blankCounter:Int};

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
