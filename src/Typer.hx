import Types.Kind;
import Types.TypeData;
import Types.BasicKind;
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
    "switch", "case", "break", "continue", "default",
	"abstract", "cast", "catch", "class", "do",
	"dynamic", "else", "enum", "extends", "extern", "true", "false", "final", "for", "function", "if", "interface",
	"implements", "import", "in", "inline", "macro", "new", "null", "operator", "overload", "override", "package", "private",
	"public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while",
];
final reservedClassNames = [
    "Class","T",
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
];
final basicTypes = [
    "uint","uint8","uint16","uint32","uint64",
    "int","int8","int16","int32","int64",
    "float32","float64","complex64","complex128",
    "byte", //alias for uint8
    "rune" //alias for int32
];
var printer = new haxe.macro.Printer("    ");
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

            var info:Info = {types: [],imports: [],ret: null,typeStack: [], data: data,local: false,localRenameMap: []};
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
    info.typeStack = [];
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
    return EBlock([
        for (stmt in list) typeStmt(stmt,info)
    ]);
}
private function typeLabeledStmt(stmt:Ast.LabeledStmt,info:Info):ExprDef {
    return null;
}
private function typeIncDecStmt(stmt:Ast.IncDecStmt,info:Info):ExprDef {
    var x = typeExpr(stmt.x,info);
    return switch stmt.tok {
        case INC: EUnop(OpIncrement,true,x);
        case DEC: EUnop(OpDecrement,true,x);
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
    var inits:Array<Expr> = [];
    var xType:Dynamic = stmt.x.type;
    function length(x) {
        return macro $x.length;
    }
    if (stmt.tok == DEFINE) {
        if (stmt.value != null) {
            var value = typeExpr(stmt.value,info); //value of x[key]
            if (key.expr.match(EConst(CIdent("_")))) {
                switch xType.id {
                    case "Slice":
                    case "Array":
                    default:
                        trace("unknown range x type: " + xType.id);
                }
                return (macro for($value in $x) $body).expr;
            }
            var valueName = printer.printExpr(value);
            switch body.expr {
                case EBlock(exprs):
                    exprs.unshift(macro var $valueName = $x[$key]);
                default:
            }
            return (macro for ($key in 0...${length(x)}) $body).expr;
        }else{
            //trace("x: " + stmt.x);
            switch xType.id {
                case "Named":
                    var xType:Types.Named = xType;
                    //trace("xType: " + xType);
                default:
                    trace("unknown range x type 2: " + xType.id);
            }
            return (macro for ($key in 0... ${length(x)}) $body).expr;
        }
        return null;
    }else{
        return null; //TODO: implement
    }
}
private function className(name:String):String {
    if (reservedClassNames.indexOf(name) != -1)
        name += "_";
    return name;
}
private function typeDeclStmt(stmt:Ast.DeclStmt,info:Info):ExprDef {
    var decls:Array<Ast.GenDecl> = stmt.decl.decls;
    //local type decl
    info.local = true;
    for (decl in decls) {
        typeGenDecl(decl,info);
    }
    return (macro {}).expr;
}
private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt,info:Info):ExprDef { //a switch statement of a type
    return null;
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
    if (cond.expr == null || body.expr == null)
        return null;
    var def:ExprDef = null;
    if (stmt.post != null) {
        var ty = typeStmt(stmt.post,info);
        if (ty == null)
            return null;
        def = EWhile(macro {var _b = $cond; $ty; _b;},body,true);
    }else{
        def = EWhile(cond,body,true);
    }
    if (stmt.init != null) {
        var init = typeStmt(stmt.init,info);
        if (init == null)
            return null;
        return EBlock([
            init,
            {pos: null, expr: def},
        ]);
    }
    return def;
}
private function typeAssignStmt(stmt:Ast.AssignStmt,info:Info):ExprDef {
    if (stmt.tok == ASSIGN)
        info.typeStack = [];
    switch stmt.tok {
        case ASSIGN, ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN,SHL_ASSIGN,SHR_ASSIGN,XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN:
            if (stmt.lhs.length == stmt.rhs.length) {
                if (stmt.lhs.length == 1) {
                    return EBinop(typeOp(stmt.tok),typeExpr(stmt.lhs[0],info),typeExpr(stmt.rhs[0],info));
                }else{
                    return EBlock([
                        for (i in 0...stmt.lhs.length) {pos: null, expr: EBinop(typeOp(stmt.tok),typeExpr(stmt.lhs[0],info),typeExpr(stmt.rhs[0],info))}
                    ]);
                }
            }else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { 
                //destructure system
                return null;
            }else{
                error("unknown type assign type: " + stmt);
                return null;
            }
        case DEFINE: //var expr = x;
            info.typeStack = [];
            if (stmt.lhs.length == stmt.rhs.length) {
                //normal vars
                var vars:Array<Var> = [];
                for (i in 0...stmt.lhs.length) {
                    vars.push({
                        name: stmt.lhs[i].name,
                        type: null,
                        expr: typeExpr(stmt.rhs[i],info),
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
                        name:  stmt.lhs[i].name,
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
        case "StructType": structType(expr,info,false);
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
    return TPath({
        name: "Map",
        pack: [],
        params: [TPType(typeExprType(expr.key,info)),TPType(typeExprType(expr.value,info))],
    });
}
private function chanType(expr:Ast.ChanType,info:Info):ComplexType {
    return null;
}
private function interfaceType(expr:Ast.InterfaceType,info:Info):ComplexType {
    if (expr.methods.list.length == 0) {
        //dynamic
        return TPath({
            name: "Dynamic",
            pack: [],
        });
    }else{
        //anonymous struct
        return null;
    }
}
private function structType(expr:Ast.StructType,info:Info,accessBool:Bool=true):ComplexType {
    return TAnonymous(typeFieldListFields(expr.fields,info,accessBool));
}
private function funcType(expr:Ast.FuncType,info:Info):ComplexType {

    return TFunction([],TPath({
        name: "Void",
        pack: [],
    }));
}
private function arrayType(expr:Ast.ArrayType,info:Info):ComplexType {
    //array is pass by copy, slice is pass by ref except for its length
    var type = typeExprType(expr.elt,info);
    return TPath({
        pack: [],
        name: "Array",
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
    if (info.local && info.localRenameMap.exists(name))
        name = info.localRenameMap[name];
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
        case "InterfaceType": (macro {}).expr;
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
    return (macro haxe.Rest.of(${typeExpr(expr.elt,info)})).expr;
}
private function typeIdent(expr:Ast.Ident,info:Info):ExprDef {
    return EConst(CIdent(ident(expr.name)));
}
final builtinFunctions = "append cap close complex copy delete imag len make new panic print println real recover".split(" ");
private function typeCallExpr(expr:Ast.CallExpr,info:Info):ExprDef {
    switch expr.fun.id {
        case "SelectorExpr":
            expr.fun.sel.name = untitle(expr.fun.sel.name); //all functions lowercase
        case "Ident":
            switch expr.fun.name {
                case "new":
                    //Dynamic cannot be constructed
                    var type = typeExprType(expr.args[0],info);
                    if (type == null)
                        return null;
                    return switch type {
                        case TPath(p): ENew(p,[]);
                        default: null;
                    }
                case "make":
                    //Dynamic cannot be constructed
                    var type = typeExprType(expr.args[0],info);
                    if (type == null)
                        return null;
                    return switch type {
                        case TPath(p): ENew(p,[]);
                        default: null;
                    }
                case null:
                default:
                    if (expr.args.length == 1 && basicTypes.indexOf(expr.fun.name) != -1) {
                        var arg = typeExpr(expr.args[0],info);
                        switch expr.fun.name { //to value
                            case "string":
                                return (macro Std.string($arg)).expr;
                            default:
                                return ECast(arg,typeExprType(expr.fun,info));
                        }
                    }
            }
            if (builtinFunctions.indexOf(expr.fun.name) != -1)
                addImport("stdgo.Builtin",info);
        case "ParenExpr":
            //type set
            return null;
        case "ArrayType":
            //return EArrayDecl([for (arg in expr.args) typeExpr(arg,info)]);
            if (expr.fun.elt.type == null && expr.fun.elt.type.id == "Basic")
                return null;
            var to = getExprType(expr.fun.elt); //Array<to>
            var from = getExprType(expr.args[0]); //from -> to array
            if (from == NULL) {
                return (macro []).expr;
            }
            switch to {
                case UINT8: //string -> byte array
                    switch from {
                        case STRING:
                            return (macro [for (c in ${typeExpr(expr.args[0],info)}.split("")) c.charCodeAt(0)]).expr;
                        default:
                            trace('unsupported array type conversion: $from->$to');
                    }
                default:
                    trace('unsupported array type conversion: $from');
            }
            return null;
        case "InterfaceType":
            //set dynamic
            return null;
    }
    var args = [for (arg in expr.args) typeExpr(arg,info)];
    if (!expr.ellipsis.noPos) {
        var last = args.pop();
        last = macro ...$last;
        args.push(last);
    }
    return ECall(typeExpr(expr.fun,info),args);
}
private function getExprType(expr:Ast.Expr):Kind {
    switch expr.id {
        case "Ident":
            var expr:Ast.Ident = expr;
            if (expr.type == null)
                INVALID;
            switch expr.type.id {
                case "Basic":
                var kind:Int = expr.type._kind;
                return switch kind {
                    case string: STRING;
                    case uint8: UINT8;
                    case uint16: UINT16;
                    case uint32: UINT32;
                    case uint64: UINT64;
                    case int: INT;
                    case int8: INT8;
                    case int16: INT16;
                    case int32: INT32;
                    case int64: INT64;
                    case float32: FLOAT32;
                    case float64: FLOAT64;
                    case bool: BOOL;
                    case complex64: COMPLEX64;
                    case complex128: COMPLEX128;
                    case untypedNil: NULL;
                    default: 
                    trace("invalid basic ident type conversion to kind: " + kind);
                    INVALID;
                }
                default: return INVALID;
            }
        case "BasicLit":
            var expr:Ast.BasicLit = expr;
            return switch expr.kind {
                case Ast.Token.STRING: STRING;
                case Ast.Token.INT: INT;
                case Ast.Token.FLOAT: FLOAT;
                case Ast.Token.IDENT:
                    trace("token ident value: " + expr.value);
                    INVALID;
                default:
                    trace("unknown expr kind token: " + expr.kind);
                    INVALID;
            }
        default:
            trace("unknown get expr type: " + expr.id);
    }
    return INVALID;
}
private function typeBasicLit(expr:Ast.BasicLit,info:Info):ExprDef {
    return switch expr.kind {
        case STRING: EConst(CString(expr.value));
        case INT: EConst(CInt(expr.value));
        case FLOAT: EConst(CFloat(expr.value));
        case CHAR: EConst(CString(expr.value));
        case IDENT: EConst(CIdent(ident(expr.value)));
        default:
            error("basic lit kind unknown: " + expr.kind);
            null;
    }
}
private function typeUnaryExpr(expr:Ast.UnaryExpr,info:Info):ExprDef {
    var x = typeExpr(expr.x,info);
    if (expr.op == AND) {
        //pointer access
        return (macro new stdgo.Pointer($x)).expr;
    }else{
        var type = typeUnOp(expr.op);
        if (type == null)
            return x.expr;
        return EUnop(type,false,x);
    }
}
private function typeCompositeLit(expr:Ast.CompositeLit,info:Info):ExprDef {
    var type = typeExprType(expr.type,info);
    if (expr.elts.length == 0) {
        if (type == null)
            return null;
        return switch type {
            case TPath(p): ENew(p,[]);
            default: null;
        }
    }else{
        if (type == null) {
            if (info.typeStack.length == 0)
                return null;
            //type grab underlying type
            switch info.typeStack[0] {
                case TPath(p):
                    if (p.params != null && p.params.length == 1) {
                        switch (p.params[0]) {
                            case TPType(t):
                                type = t;
                            default:
                        }
                    }
                default:
            }
        }else{
            info.typeStack.push(type);
        }
        switch type {
            case TPath(p):
                switch p.name {
                    case "Array":
                        if (p.pack.length == 0)
                            return EArrayDecl([for (expr in expr.elts) typeExpr(expr,info)]);
                    default:
                        return ENew(p,[for (expr in expr.elts) typeExpr(expr,info)]);
                }
            case TAnonymous(fields):
                //return null;
                return EObjectDecl([
                    for (i in 0...expr.elts.length) {
                        field: fields[i].name,
                        expr: typeExpr(expr.elts[i],info)
                    }
                ]);
            default:
                throw(type);
        }
        return null;
    }
}
private function typeFuncLit(expr:Ast.FuncLit,info:Info):ExprDef {
    return null;
}
private function typeBinaryExpr(expr:Ast.BinaryExpr,info:Info):ExprDef {
    return EBinop(typeOp(expr.op),typeExpr(expr.x,info),typeExpr(expr.y,info));
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
    var count = 0;
    function firstSelector(selector:Ast.Expr) {
        count++;
        return switch selector.x.id {
            case "Ident": return selector;
            default: null; return selector.x;
        }
    }
    var first = firstSelector(expr);
    if (first.x != null && first.x.id == "Ident" && stdgoList.indexOf(first.x.name) != -1) {
        first.x.name = title(first.x.name);
        if (count > 1) {
            first.x = {
                id: "SelectorExpr",
                x: {id: "Ident",name: "stdgo"},
                sel: first.x,
            };
        }
    }
    switch first.id {
        case "StructType": return EConst(CIdent(expr.sel.name));
        default:
    }
    return EField(typeExpr(expr.x,info),expr.sel.name);
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
    return ECast(typeExpr(expr.x,info),typeExprType(expr.type,info));
}
private function typeIndexExpr(expr:Ast.IndexExpr,info:Info):ExprDef {
    return EArray(typeExpr(expr.x,info),typeExpr(expr.index,info));
}
private function typeStarExpr(expr:Ast.StarExpr,info:Info):ExprDef {
    return null;
}
private function typeParenExpr(expr:Ast.ParenExpr,info:Info):ExprDef {
    return EParenthesis(typeExpr(expr.x,info));
}
//SPECS
private function typeFunction(decl:Ast.FuncDecl,info:Info):TypeDefinition {
    var exprs:Array<Expr> = [];
    var metaName = ":noUsing";
    info.localRenameMap.clear(); //clear renaming as it's a new function
    info.local = false;
    if (decl.body.list != null) 
        exprs = [for (stmt in decl.body.list) typeStmt(stmt,info)];
    var block:Expr = {
        expr: EBlock(exprs),
        pos: null
    };
    if (decl.recv != null) { //now is a static extension function
        var recvType = typeExprType(decl.recv.list[0].type,info);
        metaName = ':access(${recvType != null ? printer.printComplexType(recvType) : "#NULL(ACCESS_META)"})';
    }
    var name = nameIdent(untitle(decl.name.name));
    var ret = typeFieldListRes(decl.type.results,info);
    //info.ret = ret;
    return {
        name: name,
        pos: null,
        pack: [],
        fields: [],
        meta: [{pos: null, name: metaName}],
        kind: TDField(FFun({ret: ret,params: null,expr: block, args: typeFieldListArgs(decl.type.params,info)}))
    };
}
private function typeFieldListRes(fieldList:Ast.FieldList,info:Info):ComplexType { //A single type or Anonymous struct type
    if (fieldList != null) {
        var list:Array<{name:String,type:ComplexType}> = [];
        for (group in fieldList.list) {
            var type = typeExprType(group.type,info);
            for (name in group.names) {
                list.push({
                    name: name.name,
                    type: type,
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
        }else if (list.length == 1) {
            return list[0].type;
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
        var type = typeExprType(field.type,info);
        for (name in field.names) {
            args.push({
                name: name.name,
                type: type,
            });
        }
    }
    return args;
}
private function typeFieldListFields(list:Ast.FieldList,info:Info,accessBool:Bool=true):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        var type = typeExprType(field.type,info);
        for (name in field.names) {
            fields.push({
               name: name.name,
               pos: null,
               access: accessBool ? typeAccess(name.name,true) : [],
               kind: FVar(type)
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
        if (newName != name) {
            info.localRenameMap[name] = newName;
        }
        name = newName;
    }
    switch spec.type.id {
        case "StructType":
            var struct:Ast.StructType = spec.type;
            return {
                name: name,
                pos: null,
                fields: typeFieldListFields(struct.fields,info),
                pack: [],
                meta: [{pos: null, name: ":structInit"}],
                kind: TDClass(),
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
                    kind: TDAlias(TPath({name: "Dynamic",pack: []})),
                }
            return null;
            //error("unknown interface type spec"); null;
        default:
            return {
                name: name,
                pack: [],
                pos: null,
                fields: [],
                kind: TDAlias(typeExprType(spec.type,info))
            }
    }
}
private function typeImport(imp:Ast.ImportSpec,info:Info):ImportType {
    var path = (imp.path.value : String).split("/");
    if (stdgoList.indexOf(path[0]) != -1)
        path.unshift("stdgo");
    path[path.length - 1] = title(path[path.length - 1]);
    info.types[untitle(path[path.length - 1])] = path.join(".");
    return {
        path: path,
        alias: imp.name == null ? null : imp.name.name,
    }
}
private function typeValue(value:Ast.ValueSpec,info:Info):Array<TypeDefinition> {
    var mainType = typeExprType(value.type,info);
    info.typeStack = [];
    return [for (i in 0...value.names.length)
        {
            var expr = typeExpr(value.values[i],info);
            {
                name: untitle(cast value.names[i]),
                pos: null,
                pack: [],
                fields: [],
                kind: TDField(FVar(mainType != null ? mainType : (info.typeStack.length > 0 ? info.typeStack[0] : null),expr),typeAccess(cast value.names[i]))
            };
        }
    ];
}
private function typeAccess(name:String,isField:Bool=false):Array<Access> {
    return isTitle(name) ? (isField ? [APublic] : []) : [APrivate];
}
private function ident(name:String):String {
    if (name == "nil")
        name = "null";
    return name;
}
private function nameIdent(string:String):String {
    if (reserved.indexOf(string) != -1)
        string += "_";
    return string;
}
private function normalizePath(path:String):String {
    path = StringTools.replace(path,".","_");
    path = StringTools.replace(path,":","_");
    path = StringTools.replace(path,"-","_");
    var path = path.split("/");
    for (i in 0...path.length)
        path[i] = nameIdent(path[i]);
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
typedef Info = {types:Map<String,String>,imports:Map<String,String>,ret:ComplexType,typeStack:Array<ComplexType>, data:FileType,local:Bool,localRenameMap:Map<String,String>};

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
