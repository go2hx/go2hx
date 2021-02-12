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
	"abstract", "cast", "catch", "class", "do","macro","is",
	"dynamic", "enum", "extends", "extern", "final", "function",
	"implements", "in", "inline", "macro", "new", "null", "operator", "overload", "override", "private",
    "public", "static", "this", "throw", "try", "typedef", "untyped", "using", "while","create", //replacement for new
    "construct"  // replacement for composite lit
];
final reservedClassNames = [
    "Class","T","K","S",
    //"String","Int","UInt","Bool","Float",
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

    "GoArray","GoDynamic","GoMath","Go","Slice","Pointer",
];
final basicTypes = [
    "uint","uint8","uint16","uint32","uint64",
    "int","int8","int16","int32","int64",
    "float32","float64","complex64","complex128",
    "byte", //alias for uint8
    "rune" //alias for int32
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
            file.path = Path.withoutExtension(file.path);
            var data:FileType = {name: file.path,imports: [],defs: []};
            data.name = normalizePath(data.name);

            var info:Info = {types: [],imports: [],ret: null,type: null, data: data,local: false,retypeMap: [],print: false,meta: [],blankCounter: 0};
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
                data.defs.push(typeFunction(decl,info));
            }
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
        default:
            error("unknown stmt id: " + stmt.id);
            null;
    }
    return def == null ? {error("stmt null: " + stmt.id); null;} : {
        expr: def,
        pos: null,
    };
}
var errorCache = new StringMap<Bool>();
private function error(message:String) {
    if (!errorCache.exists(message))
        trace(message);
    errorCache.set(message,true);
}
//STMT
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
    return null;
}
private function typeBlockStmt(stmt:Ast.BlockStmt,info:Info):ExprDef {
    if (stmt.list == null)
        return null;
    return typeStmtList(stmt.list,info);
}
private function typeStmtList(list:Array<Ast.Stmt>,info:Info):ExprDef {
    return EBlock(list == null ? [] : [
        for (stmt in list) typeStmt(stmt,info)
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
                    var type = typeExprType(spec.type,info);
                    info.retypeMap[name] = type;
                case "ValueSpec":
                    var spec:Ast.ValueSpec = spec;
                    info.meta = [];
                    info.type = null;
                    var type = typeExprType(spec.type,info);
                    var value = macro null;
                    if (spec.type.id == "ArrayType" && info.meta.length > 0) {
                        value = macro ${{expr: EConst(CInt(Std.string(stdgo.Builtin.getMetaLength(info.meta)))),pos: null}};
                    }
                    vars = vars.concat([
                        for (i in 0...spec.names.length) {
                            name: nameIdent(spec.names[i],info),
                            type: type != null ? type : info.type,
                            expr: i < spec.values.length ? typeExpr(spec.values[i],info) : macro literal($value),
                        }
                    ]);
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
        init = {expr: typeSwitchStmt(stmt.init,info),pos: null};
    
    var assign:Expr = null;
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
        default:
            trace("unknown assign: " + stmt.assign.id);
    }
    if (assign == null)
        return null;
    var def:Expr = null;
    function condition(obj:Ast.CaseClause,i:Int=0) {
        if (obj.list.length == 0)
            return null;
        var t = typeExprType(obj.list[i],info);
        var value = macro ($assign is $t);
        if (i + 1 >= obj.list.length)
            return value;
        var next = condition(obj,i + 1);
        return {expr: EBinop(OpBoolOr,value,next), pos: null};
    }
    function ifs(i:Int=0) {
        var obj:Ast.CaseClause = stmt.body.list[i];
        var cond = condition(obj);
        var block = {expr: typeStmtList(obj.body,info),pos: null};
        if (i + 1 >= stmt.body.list.length)
            return cond == null ? macro $block : macro if ($cond) $block;
        var next = ifs(i + 1);
        return macro if ($cond) $block else $next;
    }
    return ifs().expr;
}
private function typeSwitchStmt(stmt:Ast.SwitchStmt,info:Info):ExprDef {
    var main:ExprDef = null;
    if (stmt.tag == null) {

    }else{
        var cases:Array<Case> = [];
        var edef:Expr = null;
        for (obj in stmt.body.list) {
            switch obj.id {
                case "CaseClause":
                    var obj:Ast.CaseClause = obj;
                    cases.push({
                        values: [for (expr in obj.list) typeExpr(expr,info)],
                        expr: {expr: typeStmtList(obj.body,info), pos: null},
                    });
            }
        }
        main = ESwitch(typeExpr(stmt.tag,info),cases,edef);
    }
    return main;
}
private function typeForStmt(stmt:Ast.ForStmt,info:Info):ExprDef {
    var cond = stmt.cond == null ? {pos: null,expr: EConst(CIdent("true"))} : typeExpr(stmt.cond,info);
    var body = {pos: null, expr: typeBlockStmt(stmt.body,info)};
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
        def = EWhile(macro {var _b = $cond; $ty; _b;},body,true);
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
            {pos: null, expr: def},
        ]);
    }
    return def;
}
private function typeAssignStmt(stmt:Ast.AssignStmt,info:Info):ExprDef {
    switch stmt.tok {
        case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN,SHL_ASSIGN,SHR_ASSIGN,XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN:
            if (stmt.lhs.length == stmt.rhs.length) {
                var op = typeOp(stmt.tok);
                var exprs = [for (i in 0...stmt.lhs.length) {
                    var x = typeExpr(stmt.lhs[i],info);
                    var y = typeExpr(stmt.rhs[i],info);
                    x.expr.match(EConst(CIdent("_"))) ? y : {pos: null, expr: EBinop(op,x,y)}; 
                }];
                if (exprs.length == 1)
                    return exprs[0].expr;
                return EBlock(exprs);
            }else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { 
                //destructure system
                return null;
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
                //destructure system
                var vars:Array<Var> = [{
                    name: "_o",
                    expr: typeExpr(stmt.rhs[0],info)
                }];
                for (i in 0...stmt.lhs.length) {
                    vars.push({
                        name:  nameIdent(stmt.lhs[i].name,info),
                        expr: macro _o,
                    });
                }
                return EVars(vars);
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
    var ifStmt:Expr =  {pos: null, expr: EIf(typeExpr(stmt.cond,info),typeStmt(stmt.body,info),typeStmt(stmt.elseStmt,info))};
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
        default: error("Type expr unknown: " + expr); null;
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
    return null;
}
private function interfaceType(expr:Ast.InterfaceType,info:Info):ComplexType {
    if (expr.methods.list.length == 0) {
        //dynamic
        return TPath({
            name: "GoDynamic",
            pack: [],
        });
    }else{
        //anonymous struct
        return null;
    }
}
private function structType(expr:Ast.StructType,info:Info):ComplexType {
    var data = typeFieldListFields(expr.fields,info,[]);
    var anon = TAnonymous(data.fields);
    if (data.extend.length == 0)
        return anon;
    return TIntersection([anon].concat(data.extend));
}
private function funcType(expr:Ast.FuncType,info:Info):ComplexType {
    var ret = typeFieldListRes(expr.results,info);
    var params = typeFieldListComplexTypes(expr.params,info);
    return TFunction(params,ret);
}
private function arrayType(expr:Ast.ArrayType,info:Info):ComplexType {
    //array is pass by copy, slice is pass by ref except for its length
    var type = typeExprType(expr.elt,info);
    if (expr.len != null) {
        //array
        addImport("stdgo.GoArray",info);
        info.meta = [{pos: null,name: "length",params: [typeExpr(expr.len,info)]}];
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
    
    if ((expr.name.length == 6 || expr.name.length == 5) && expr.name.substr(0,"uint".length) == "uint") //UInt fix naming
        expr.name = "UInt" + expr.name.substr("uint".length);
    var name = className(title(expr.name));
    if (name == "String") {
        addImport("stdgo.GoString",info);
        name = "GoString";
    }
    if (name == "UInt")
        name = "GoUInt";
    if (name == "Int")
        name = "GoInt";
    if (info.retypeMap.exists(name))
        return info.retypeMap[name];
    return TPath({
        pack: [],
        name: name,
    });
}
private function selectorType(expr:Ast.SelectorExpr,info:Info):ComplexType {
    return null;
}
private function ellipsisType(expr:Ast.Ellipsis,info:Info):ComplexType {
    
    return null;
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
        case "KeyValueExpr": typeKeyValueExpr(expr,info);
        case "BadExpr": error("BAD EXPRESSION TYPED"); null;
        case "InterfaceType":
            (macro new GoDynamic()).expr;
        default:
            throw("unknown expr id: " + expr.id); 
            null;
    };
    return def == null ? {error("expr null: " + expr.id); null;} : {
        expr: def,
        pos: null,
    };
}
//EXPR
private function typeKeyValueExpr(expr:Ast.KeyValueExpr,info:Info):ExprDef {
    return null;
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
            return (macro {var a = $expr; a();}).expr;
        case "SelectorExpr":
            expr.fun.sel.name = untitle(expr.fun.sel.name); //all functions lowercase
        case "Ident":
            switch expr.fun.name {
                case "string":
                    genArgs();
                    return (macro Std.string($a{args})).expr;
                case "cap":
                    return (macro ${typeExpr(expr.args[0],info)}.cap()).expr;
                case "len":
                    return (macro ${typeExpr(expr.args[0],info)}.length).expr;
                case "new","make": 
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
            return (macro literal((_ : $t))).expr;
        case "ArrayType":
            //set assert type
            var type = typeExprType(expr.fun,info);
            var expr = typeExpr(expr.args[0],info);
            return (macro Go.assert(($expr : $type))).expr;
        case "InterfaceType":
            //set dynamic
            return (macro new GoDynamic()).expr;
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
            if (stdgo.Go.isNumber(p.name))
                return macro 0;
            switch p.name {
                case "String", "GoString": macro "";
                case "Bool": macro false;
                case "Slice": macro new stdgo.Slice();
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
            EConst(CString(expr.value));
        case INT:
            info.type = TPath({name: "Int",pack: []});
            if (expr.value.length > 10) {
                var i = Int64Helper.parseString(expr.value);
                if (i > 2147483647 || i < -2147483647) {
                    info.type = TPath({name: "Int64",pack: []});
                    return (macro haxe.Int64Helper.fromFloat(${{expr: EConst(CFloat(expr.value)),pos: null}})).expr;
                }
            }
            EConst(CInt(expr.value));
        case FLOAT:
            info.type = TPath({name: "Float",pack: []});
            EConst(CFloat(expr.value));
        case CHAR:
            info.type = TPath({name: "GoString",pack: []});
            var value = formatEscapeCodes(expr.value);
            var const = {expr: EConst(CString(value)),pos: null};
            if (value == bs + "'") {
                value = "'";
            }
            var const = {expr: EConst(CString(value)),pos: null};
            if (value == "\\") {
                return (macro $const.charCodeAt(0)).expr;
            }
            return EField(const,"code");
        case IDENT: 
            EConst(CIdent(nameIdent(expr.value,info)));
        default:
            error("basic lit kind unknown: " + expr.kind);
            null;
    }
}
private function typeUnaryExpr(expr:Ast.UnaryExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    if (expr.op == AND) {
        //pointer access
        return (macro Go.makePointer($x)).expr;
    }else{
        var type = typeUnOp(expr.op);
        if (type == null)
            return x.expr;
        return EUnop(type,false,x);
    }
}
private function typeCompositeLit(expr:Ast.CompositeLit,info:Info):ExprDef {
    info.meta = [];
    var type = typeExprType(expr.type,info);
    var params:Array<Expr> = [];
    if (type == null) {
        params.push(macro null);
    }else{
        if (expr.type.id == "ArrayType" && info.meta.length > 0) {
            var length = stdgo.Builtin.getMetaLength(info.meta);
            params.push({expr: ECheckType({expr: EConst(CInt(Std.string(length))),pos: null},type),pos: null});
        }else{
            params.push({expr: ECheckType(macro _,type),pos: null}); //normal
        }
    }
    for (elt in expr.elts) {
        params.push(typeExpr(elt,info));
    }
    return (macro literal($a{params})).expr;
}

private function typeFuncLit(expr:Ast.FuncLit,info:Info):ExprDef {
    return EFunction(FAnonymous,{
        ret: typeFieldListRes(expr.type.results,info),
        args: typeFieldListArgs(expr.type.params,info),
        expr: {expr: typeBlockStmt(expr.body,info),pos: null},
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
        case OpShr, OpShl, OpUShr, OpAnd, OpOr, OpXor:
            var expr = {expr: EBinop(op,macro Std.int($x),macro Std.int($y)), pos: null};
            return (macro GoInt.int($expr)).expr;
        default:
    }
    return EBinop(op,x,y);
}
private function typeUnOp(token:Ast.Token):Unop {
    return switch token {
        case NOT: OpNot;
        case SUB: OpNeg;
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

        case RANGE: OpInterval; //TODO turn into iterator
        case ELLIPSIS: OpInterval;
        default: error("unknown op token: " + token); OpInterval;
    }
}
private function typeSelectorExpr(expr:Ast.SelectorExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var sel = expr.sel.name;
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
    var type = typeExprType(expr.type,info);
    var expr = typeExpr(expr.x,info);
    return (macro Go.assert(($expr : $type))).expr;
}
private function typeIndexExpr(expr:Ast.IndexExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    var index = typeExpr(expr.index,info);
    return (macro $x[$index]).expr;
}
private function typeStarExpr(expr:Ast.StarExpr,info:Info):ExprDef {
    return null;
}
private function typeParenExpr(expr:Ast.ParenExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    return x != null ? EParenthesis(x) : null;
}
//SPECS
private function typeFunction(decl:Ast.FuncDecl,info:Info):TypeDefinition {
    var exprs:Array<Expr> = [];
    var meta:Metadata = [{name: ":noUsing",pos: null}];
    info.retypeMap.clear(); //clear renaming as it's a new function
    info.local = false;
    if (decl.body.list != null) 
        exprs = [for (stmt in decl.body.list) typeStmt(stmt,info)];
    var block:Expr = {
        expr: EBlock(exprs),
        pos: null
    };
    
    if (decl.recv != null) { //now is a static extension function
        var recvType = typeExprType(decl.recv.list[0].type,info);
        meta = [
            {name: ':access(${recvType != null ? printer.printComplexType(recvType) : "#NULL(ACCESS_META)"})', pos: null},
        ];
    }
    var name = nameIdent(untitle(decl.name.name),info);
    var ret = typeFieldListRes(decl.type.results,info);
    //info.ret = ret;
    return {
        name: name,
        pos: null,
        pack: [],
        fields: [],
        meta: meta,
        kind: TDField(FFun({ret: ret,params: null,expr: block, args: typeFieldListArgs(decl.type.params,info)}))
    };
}
private function typeFieldListRes(fieldList:Ast.FieldList,info:Info):ComplexType { //A single type or Anonymous struct type
    if (fieldList != null) {

        if (fieldList.list.length == 1) {
            return typeExprType(fieldList.list[0].type,info);
        }
        var list:Array<{name:String,type:ComplexType,meta:Metadata}> = [];
        for (group in fieldList.list) {
            info.meta = [];
            var type = typeExprType(group.type,info);
            if (type == null)
                continue;
            for (name in group.names) {
                list.push({
                    name: name.name,
                    type: type,
                    meta: info.meta,
                });
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
        }
    }
    return TPath({
        name: "Void",
        pack: [],
    });
}
private function typeFieldListArgs(list:Ast.FieldList,info:Info):Array<FunctionArg> { //Array of FunctionArgs
    var args:Array<FunctionArg> = [];
    for (field in list.list) {
        info.meta = [];
        var type = typeExprType(field.type,info);
        for (name in field.names) {
            args.push({
                name: name.name,
                type: type,
                meta: info.meta,
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
private function typeFieldListFields(list:Ast.FieldList,info:Info,access:Array<Access> = null):{fields:Array<Field>,extend:Array<ComplexType>} {
    var fields:Array<Field> = [];
    var extend:Array<ComplexType> = [];
    for (field in list.list) {
        info.meta = [];
        var type = typeExprType(field.type,info);
        if (field.names.length == 0) {
            var name = field.type.name;
            switch name {
                case "string","int","bool","uint","byte","rune":
                    field.names.push({name: name});
                default:
                    //extend
                    extend.push(type);
                    continue;
            }
        }
        for (name in field.names) {
            fields.push({
               name: name.name,
               pos: null,
               meta: info.meta,
               access: access == null ? typeAccess(name.name,true) : access,
               kind: FVar(type),
            });
        }
    }
    return {fields: fields,extend: extend};
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
            var data = typeFieldListFields(struct.fields,info);
            if (data.extend.length == 0)
                return {
                    name: name,
                    pos: null,
                    fields: data.fields,
                    pack: [],
                    meta: [],
                    kind: TDStructure,
                }
            return {
                name: name,
                pos: null,
                pack: [],
                meta: [],
                fields: [],
                kind: TDAlias(TIntersection([TAnonymous(data.fields)].concat(data.extend)))
            };
        case "InterfaceType":
            //var interface:Ast.InterfaceType = spec.type;
            var struct:Ast.InterfaceType = spec.type;
            if (struct.methods.list.length == 0)
                return {
                    name: name,
                    pos: null,
                    fields: [],
                    pack: [],
                    kind: TDAlias(TPath({name: "GoDynamic",pack: []})),
                }
            return null;
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
    var type = typeExprType(value.type,info);
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
typedef Info = {types:Map<String,String>,imports:Map<String,String>,ret:ComplexType,type:ComplexType, data:FileType,local:Bool,retypeMap:Map<String,ComplexType>,print:Bool,meta:Metadata,blankCounter:Int};

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
