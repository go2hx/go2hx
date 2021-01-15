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

var gostdList:Array<String>;
var externs:Bool = false;
final reserved = [
    "switch", "case", "break", "continue", "default",
	"abstract", "cast", "catch", "class", "do",
	"dynamic", "else", "enum", "extends", "extern", "true", "false", "final", "for", "function", "if", "interface",
	"implements", "import", "in", "inline", "macro", "new", "null", "operator", "overload", "override", "package", "private",
	"public", "return", "static", "this", "throw", "try", "typedef", "untyped", "using", "var", "while",
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
            var info:Info = {types: [],imports: [],ret: null};
            var declFuncs:Array<Ast.FuncDecl> = [];
            for (decl in file.decls) {
                switch decl.id {
                    case "GenDecl":
                        for (spec in cast(decl.specs,Array<Dynamic>)) {
                            switch spec.id {
                                case "ImportSpec":
                                    data.imports.push(typeImport(spec,info));
                                case "ValueSpec":
                                    data.defs = data.defs.concat(typeValue(spec,info));
                                case "TypeSpec":
                                    data.defs.push(typeType(spec,info));
                                default:
                                    error("unknown spec: " + spec.id);
                            }
                        }
                    case "FuncDecl":
                        declFuncs.push(decl);
                    default:

                }
            }
            for (decl in declFuncs) { //parse function bodies last
                data.defs.push(typeFunction(decl,info));
            }
            data.imports.push({path: ["stdgo","StdTypes","*"],alias: ""});
            for (path => alias in info.imports)
                data.imports.push({path: path.split("."),alias: alias});
            module.files.push(data);
        }
        list.push(module);
    }
    return list;
}
private function typeStmt(stmt:Dynamic,info:Info):Expr {
    if (stmt == null)
        return null;
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
    return EBlock([
        for (stmt in stmt.list) typeStmt(stmt,info)
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
    return null;
}
private function typeDeclStmt(stmt:Ast.DeclStmt,info:Info):ExprDef {
    return null;
}
private function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt,info:Info):ExprDef {
    return null;
}
private function typeSwitchStmt(stmt:Ast.SwitchStmt,info:Info):ExprDef {
    return null;
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
            if (stmt.lhs.length == stmt.rhs.length) {
                //normal vars
                var vars:Array<Var> = [];
                for (i in 0...stmt.lhs.length) {
                    var type = typeExprType(stmt.lhs[i],info);
                    vars.push({
                        name: stmt.lhs[i].name,
                        type: type,
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
private function structType(expr:Ast.StructType,info:Info):ComplexType {
    return TAnonymous(typeFieldListFields(expr.fields,info));
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
    return TPath({
        pack: [],
        name: title(expr.name),
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
    return null;
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
                    var type = typeExprType(expr.args[0],info);
                    if (type == null)
                        return null;
                    return switch type {
                        case TPath(p): ENew(p,[]);
                        default: null;
                    }
                case "make":
                    var type = typeExprType(expr.args[0],info);
                    if (type == null)
                        return null;
                    return switch type {
                        case TPath(p): ENew(p,[]);
                        default: null;
                    }
            }
            if (builtinFunctions.indexOf(expr.fun.name) != -1)
                addImport("gostd.Builtin.*",info);
        case "ParenExpr":
            //type set
            return null;
        case "ArrayType":
            //define array
            return null;
        case "InterfaceType":
            //set dynamic
            return null;
    }
    return ECall(typeExpr(expr.fun,info),[for (arg in expr.args) typeExpr(arg,info)]);
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
    }else {
        if (type != null) {
            switch type {
                case TPath(p):
                    if (p.pack.length == 0 && p.name == "Array") {
                        return ECheckType({expr: EArrayDecl([for (expr in expr.elts) typeExpr(expr,info)]), pos: null},type);
                    }
                default:
            }
        }else{
           
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
    if (first.x != null && first.x.id == "Ident" && gostdList.indexOf(first.x.name) != -1) {
        first.x.name = title(first.x.name);
        if (count > 1) {
            first.x = {
                id: "SelectorExpr",
                x: {id: "Ident",name: "gostd"},
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

    return null;
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
    var name = untitle(decl.name.name);
    if (reserved.indexOf(name) != -1)
        name += "_";
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
    return [];
}
private function typeFieldListFields(list:Ast.FieldList,info:Info):Array<Field> {
    var fields:Array<Field> = [];
    for (field in list.list) {
        for (name in field.names) {
            fields.push({
               name: name.name,
               pos: null,
               access: typeAccess(name.name,true),
               kind: FVar(typeExprType(field.type,info))
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
private function typeType(spec:Ast.TypeSpec,info:Info):TypeDefinition {
    return switch spec.type.id {
        case "StructType":
            var struct:Ast.StructType = spec.type;
            
            {
                name: title(cast spec.name.name),
                pos: null,
                fields: typeFieldListFields(struct.fields,info),
                pack: [],
                meta: [{pos: null, name: ":structInit"}],
                kind: TDClass(),
            }
        default: error("unknown type spec: " + spec.type.id); null;
    }
}
private function typeImport(imp:Ast.ImportSpec,info:Info):ImportType {
    var path = (imp.path.value : String).split("/");
    if (gostdList.indexOf(path[0]) != -1)
        path.unshift("stdgo");
    path[path.length - 1] = title(path[path.length - 1]);
    info.types[untitle(path[path.length - 1])] = path.join(".");
    return {
        path: path,
        alias: imp.name == null ? null : imp.name.name,
    }
}
private function typeValue(value:Ast.ValueSpec,info:Info):Array<TypeDefinition> {
    var type = typeExprType(value.type,info);
    return [for (i in 0...value.names.length)
        {
            {
                name: untitle(cast value.names[i]),
                pos: null,
                pack: [],
                fields: [],
                kind: TDField(FVar(type,typeExpr(value.values[i],info)),typeAccess(cast value.names[i]))
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
    if (reserved.indexOf(name) != -1)
        name += "_";
    return name;
}
private function normalizePath(path:String):String {
    path = StringTools.replace(path,".","_");
    path = StringTools.replace(path,":","_");
    path = StringTools.replace(path,"-","_");
    var path = path.split("/");
    for (i in 0...path.length)
        if (reserved.indexOf(path[i]) != -1)
            path[i] += "_";
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
typedef Info = {types:Map<String,String>,imports:Map<String,String>,ret:ComplexType}

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
