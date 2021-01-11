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
            file.path = Path.normalize(file.path);
            var index = file.path.lastIndexOf("/");
            if (index != -1)
                file.path = file.path.substr(index + 1);
            file.path = Path.withoutExtension(file.path);
            var data:FileType = {name: file.path,imports: [],defs: []};
            data.name = normalizePath(data.name);
            var info:Info = {types: []};
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
                data.defs.push(typeFunc(decl,info));
            }
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
    return EBlock([
        for (stmt in stmt.list) typeStmt(stmt,info)
    ]);
}
private function typeLabeledStmt(stmt:Ast.LabeledStmt,info:Info):ExprDef {
    return null;
}
private function typeIncDecStmt(stmt:Ast.IncDecStmt,info:Info):ExprDef {
    return null;
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
    /*if (stmt.init != null) {
        trace("init " + stmt.init);
    }
    if (stmt.post == null) {

    }else if (stmt.post.id == "IncDecStmt" && post.tok == Ast.Token.INC) {
        var post:Ast.IncDecStmt = stmt.post;
        post.
    }*/
    var it = typeExpr(stmt.cond,info);
    return EFor(it,{pos: null, expr: typeBlockStmt(stmt.body,info)});
}
private function typeAssignStmt(stmt:Ast.AssignStmt,info:Info):ExprDef {
    return null;
}
private function typeExprStmt(stmt:Ast.ExprStmt,info:Info):ExprDef {
    var expr = typeExpr(stmt.x,info);
    return expr != null ? expr.expr : null;
}
private function typeIfStmt(stmt:Ast.IfStmt,info:Info):ExprDef {
    return EBlock([
        typeStmt(stmt.init,info),
        {pos: null, expr: EIf(typeExpr(stmt.cond,info),typeStmt(stmt.body,info),typeStmt(stmt.elseStmt,info))},
    ]);
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
    return switch expr.id {
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
}
//TYPE EXPR
private function mapType(expr:Ast.MapType,info:Info):ComplexType {
    return null;
}
private function chanType(expr:Ast.ChanType,info:Info):ComplexType {
    return null;
}
private function interfaceType(expr:Ast.InterfaceType,info:Info):ComplexType {
    return null;
}
private function structType(expr:Ast.StructType,info:Info):ComplexType {
    return null;
}
private function funcType(expr:Ast.FuncType,info:Info):ComplexType {
    return null;
}
private function arrayType(expr:Ast.ArrayType,info:Info):ComplexType {
    return null;
}
private function starType(expr:Ast.StarExpr,info:Info):ComplexType {
    return null;
}
private function identType(expr:Ast.Ident,info:Info):ComplexType {
    return null;
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
        default:
            trace("unknown expr id: " + expr.id);
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
private function typeCallExpr(expr:Ast.CallExpr,info:Info):ExprDef {
    switch expr.fun.id {
        case "SelectorExpr":
            expr.fun.sel.name = untitle(expr.fun.sel.name); //all functions lowercase
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
    return null;
}
private function typeCompositeLit(expr:Ast.FuncLit,info:Info):ExprDef {
    return null;
}
private function typeFuncLit(expr:Ast.FuncLit,info:Info):ExprDef {
    return null;
}
private function typeBinaryExpr(expr:Ast.BinaryExpr,info:Info):ExprDef {
    trace("y: " + expr.y);
    return EBinop(typeOp(expr.op),typeExpr(expr.x,info),typeExpr(expr.y,info));
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
        default: {error("unknown token: " + token); OpInterval;};
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
private function typeFunc(decl:Ast.FuncDecl,info:Info):TypeDefinition {
    var exprs:Array<Expr> = [];
    if (decl.body.list != null) 
        exprs = [for (stmt in decl.body.list) typeStmt(stmt,info)];
    var block:Expr = {
        expr: EBlock(exprs),
        pos: null
    };
    var def:TypeDefinition = {
        name: decl.name.name,
        pos: null,
        pack: [],
        fields: [],
        kind: TDField(FFun({ret: typeFieldListRes(decl.type.results),params: null,expr: block, args: typeFieldListArgs(decl.type.params)})), //args = Array<FunctionArg>, ret = ComplexType
    };
    if (decl.recv != null) { //now is a static extension function
           def.meta = [{pos: null,name: ":using"}];
    }
    return def;
}
private function typeFieldListRes(field:Ast.FieldList) { //A single type or Anonymous struct type
    return null;
}
private function typeFieldListArgs(field:Ast.FieldList):Array<FunctionArg> { //Array of FunctionArgs
    return [];
}
private function typeType(spec:Ast.TypeSpec,info:Info):TypeDefinition {
    return {
        name: spec.name.name,
        pos: null,
        params: [], //<---- fill this for typedefs
        fields: [], //<--- this for interfaces
        pack: [],
        kind: TypeDefKind.TDStructure,
    };
}
private function typeImport(imp:Ast.ImportSpec,info:Info):ImportType {
    var path = (imp.path.value : String).split("/");
    if (gostdList.indexOf(path[0]) != -1)
        path.unshift("stdgo");
    path[path.length - 1] = title(path[path.length - 1]);
    info.types[untitle(path[path.length - 1])] = path.join(".");
    return {
        path: path,
        alias: imp.name,
    }
}
private function typeValue(value:Ast.ValueSpec,info:Info):Array<TypeDefinition> {
    var defs:Array<TypeDefinition> = [];
    for (name in value.names) {
        var ty = ComplexType.TPath({pack: ["TYPE"],name: "TYPE"});
        defs.push({
            name: name.name,
            pos: null,
            pack: [],
            fields: [],
            kind: TDField(FVar(ty,null),null)
        });
    }
    return defs;
}
private function ident(name:String):String {
    if (name == "nil")
        name = "null";
    return name;
}
private function normalizePath(path:String):String {
    path = StringTools.replace(path,".","_");
    path = StringTools.replace(path,":","_");
    path = StringTools.replace(path,"-","_");
    return path;
}
function title(string:String):String {
    return string.charAt(0).toUpperCase() + string.substr(1);
}
function untitle(string:String):String {
    return string.charAt(0).toLowerCase() + string.substr(1);
}
typedef Info = {types:Map<String,String>}

typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:Array<String>,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
