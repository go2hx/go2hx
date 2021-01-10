import haxe.io.Path;
import haxe.ds.StringMap;
import haxe.macro.Type.ClassField;
import haxe.macro.Type.ClassKind;
import haxe.macro.Context;
import haxe.macro.Type.ClassType;
import haxe.macro.Type.ModuleType;
import haxe.macro.Expr;
import haxe.DynamicAccess;
function main(data:DataType){
    var list:Array<Module> = [];
    for (pkg in data.pkgs) {
        if (pkg.files == null)
            continue;
        var module:Module = {path: pkg.path,files: []};
        for (file in pkg.files) {
            if (file.decls == null)
                continue;
            file.path = Path.normalize(file.path);
            var index = file.path.lastIndexOf("/");
            if (index != -1)
                file.path = file.path.substr(index + 1);
            file.path = Path.withoutExtension(file.path);
            var data:FileType = {name: file.path,imports: [],defs: []};
            for (decl in file.decls) {
                switch decl.id {
                    case "GenDecl":
                        for (spec in cast(decl.specs,Array<Dynamic>)) {
                            switch spec.id {
                                case "ImportSpec":
                                    data.imports.push(typeImport(spec));
                                case "ValueSpec":
                                    data.defs = data.defs.concat(typeValue(spec));
                                case "TypeSpec":
                                    data.defs.push(typeType(spec));
                                default:
                                    trace("unknown spec: " + spec.id);
                            }
                        }
                    case "FuncDecl":
                        data.defs.push(typeFunc(decl));
                    default:

                }
            }
            module.files.push(data);
        }
        list.push(module);
    }
    return list;
}
function typeStmt(stmt:Dynamic):Expr {
    if (stmt == null)
        return null;
    var def = switch stmt.id {
        case "ReturnStmt": typeReturnStmt(stmt);
        case "IfStmt": typeIfStmt(stmt);
        case "ExprStmt": typeExprStmt(stmt);
        case "AssignStmt": typeAssignStmt(stmt);
        case "ForStmt": typeForStmt(stmt);
        case "SwitchStmt": typeSwitchStmt(stmt);
        case "TypeSwitchStmt": typeTypeSwitchStmt(stmt);
        case "DeclStmt": typeDeclStmt(stmt);
        case "RangeStmt": typeRangeStmt(stmt);
        case "DeferStmt": typeDeferStmt(stmt);
        case "IncDecStmt": typeIncDecStmt(stmt);
        case "LabeledStmt": typeLabeledStmt(stmt);
        case "BlockStmt": typeBlockStmt(stmt);
        case "BadStmt": trace("BAD STATEMENT TYPED"); null;
        case "GoStmt": typeGoStmt(stmt);
        default:
            trace("unknown stmt id: " + stmt.id);
            null;
    }
    return def == null ? {trace("stmt null: " + stmt.id); null;} : {
        expr: def,
        pos: null,
    };
}
//STMT
function typeGoStmt(stmt:Ast.GoStmt):ExprDef {
    return null;
}
function typeBlockStmt(stmt:Ast.BlockStmt):ExprDef {
    return EBlock([
        for (stmt in stmt.list) typeStmt(stmt)
    ]);
}
function typeLabeledStmt(stmt:Ast.LabeledStmt):ExprDef {
    return null;
}
function typeIncDecStmt(stmt:Ast.IncDecStmt):ExprDef {
    return null;
}
function typeDeferStmt(stmt:Ast.DeferStmt):ExprDef {
    return null;
}
function typeRangeStmt(stmt:Ast.RangeStmt):ExprDef {
    return null;
}
function typeDeclStmt(stmt:Ast.DeclStmt):ExprDef {
    return null;
}
function typeTypeSwitchStmt(stmt:Ast.TypeSwitchStmt):ExprDef {
    return null;
}
function typeSwitchStmt(stmt:Ast.SwitchStmt):ExprDef {
    return null;
}
function typeForStmt(stmt:Ast.ForStmt):ExprDef {
    return null;
}
function typeAssignStmt(stmt:Ast.AssignStmt):ExprDef {
    return null;
}
function typeExprStmt(stmt:Ast.ExprStmt):ExprDef {
    return typeExpr(stmt.x).expr;
}
function typeIfStmt(stmt:Ast.IfStmt):ExprDef {
    return EBlock([
        typeStmt(stmt.init),
        {pos: null, expr: EIf(typeExpr(stmt.cond),typeStmt(stmt.body),typeStmt(stmt.elseStmt))},
    ]);
}
function typeReturnStmt(stmt:Ast.ReturnStmt):ExprDef {
    if (stmt.results.length == 0)
        return EReturn();
    if (stmt.results.length == 1)
        return EReturn(typeExpr(stmt.results[0]));
    //multireturn
    return EReturn();
}
function typeExprType(expr:Dynamic):ComplexType { //get the type of an expr
    if (expr == null)
        return null;
    return switch expr.id {
        case "MapType": mapType(expr);
        case "ChanType": chanType(expr);
        case "InterfaceType": interfaceType(expr);
        case "StructType": structType(expr);
        case "FuncType": funcType(expr);
        case "ArrayType": arrayType(expr);
        case "StarExpr": starType(expr); //pointer
        case "Ident": identType(expr); //identifier type
        case "SelectorExpr": selectorType(expr);//path
        case "Ellipsis": ellipsisType(expr); //Rest arg
        default: trace("Type expr unknown: " + expr); null;
    }
}
//TYPE EXPR
function mapType(expr:Ast.MapType):ComplexType {
    return null;
}
function chanType(expr:Ast.ChanType):ComplexType {
    return null;
}
function interfaceType(expr:Ast.InterfaceType):ComplexType {
    return null;
}
function structType(expr:Ast.StructType):ComplexType {
    return null;
}
function funcType(expr:Ast.FuncType):ComplexType {
    return null;
}
function arrayType(expr:Ast.ArrayType):ComplexType {
    return null;
}
function starType(expr:Ast.StarExpr):ComplexType {
    return null;
}
function identType(expr:Ast.Ident):ComplexType {
    return null;
}
function selectorType(expr:Ast.SelectorExpr):ComplexType {
    return null;
}
function ellipsisType(expr:Ast.Ellipsis):ComplexType {
    return null;
}
function typeExpr(expr:Dynamic):Expr {
    if (expr == null)
        return null;
    var def = switch expr.id {
        case "Ident": typeIdent(expr);
        case "CallExpr": typeCallExpr(expr);
        case "BasicLit": typeBasicLit(expr);
        case "UnaryExpr": typeUnaryExpr(expr);
        case "SelectorExpr": typeSelectorExpr(expr);
        case "BinaryExpr": typeBinaryExpr(expr);
        case "FuncLit": typeFuncLit(expr);
        case "CompositeLit": typeCompositeLit(expr);
        case "SliceExpr": typeSliceExpr(expr);
        case "TypeAssertExpr": typeAssertExpr(expr);
        case "IndexExpr": typeIndexExpr(expr);
        case "StarExpr": typeStarExpr(expr);
        case "ParenExpr": typeParenExpr(expr);
        case "Ellipsis": typeEllipsis(expr);
        case "KeyValueExpr": typeKeyValueExpr(expr);
        case "BadExpr": trace("BAD EXPRESSION TYPED"); null;
        default:
            trace("unknown expr id: " + expr.id);
            null;
    };
    return def == null ? {trace("expr null: " + expr.id); null;} : {
        expr: def,
        pos: null,
    };
}
//EXPR
function typeKeyValueExpr(expr:Ast.KeyValueExpr):ExprDef {
    return null;
}
function typeEllipsis(expr:Ast.Ellipsis):ExprDef {
    return null;
}
function typeIdent(expr:Ast.Ident):ExprDef {
    return EConst(CIdent(ident(expr.name)));
}
function typeCallExpr(expr:Ast.CallExpr):ExprDef {
    return ECall(typeExpr(expr.fun),[for (arg in expr.args) typeExpr(arg)]);
}
function typeBasicLit(expr:Ast.BasicLit):ExprDef {
    return switch expr.kind {
        case STRING: EConst(CString(expr.value));
        case INT: EConst(CInt(expr.value));
        case FLOAT: EConst(CFloat(expr.value));
        case CHAR: EConst(CString(expr.value));
        case IDENT: EConst(CIdent(ident(expr.value)));
        default:
            trace("basic lit kind unknown: " + expr.kind);
            null;
    }
}
function typeUnaryExpr(expr:Ast.UnaryExpr):ExprDef {
    return null;
}
function typeCompositeLit(expr:Ast.FuncLit):ExprDef {
    return null;
}
function typeFuncLit(expr:Ast.FuncLit):ExprDef {
    return null;
}
function typeBinaryExpr(expr:Ast.BinaryExpr):ExprDef {
    return null;
}
function typeSelectorExpr(expr:Ast.SelectorExpr):ExprDef {
    return EField(typeExpr(expr.x),expr.sel.name);
}
function typeSliceExpr(expr:Ast.SliceExpr):ExprDef {
    var x = typeExpr(expr.x);

    return null;
}
function typeAssertExpr(expr:Ast.TypeAssertExpr):ExprDef {
    return ECast(expr.x,typeExprType(expr.type));
}
function typeIndexExpr(expr:Ast.IndexExpr):ExprDef {
    return EArray(typeExpr(expr.x),typeExpr(expr.index));
}
function typeStarExpr(expr:Ast.StarExpr):ExprDef {
    return null;
}
function typeParenExpr(expr:Ast.ParenExpr):ExprDef {
    return EParenthesis(typeExpr(expr.x));
}
//SPECS
function typeFunc(decl:Ast.FuncDecl):TypeDefinition {
    var exprs:Array<Expr> = [];
    if (decl.body.list != null) 
        exprs = [for (stmt in decl.body.list) typeStmt(stmt)];
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
           def.meta = [{pos: null,name: "using"}];
    }
    return def;
}
function typeFieldListRes(field:Ast.FieldList) { //A single type or Anonymous struct type
    return null;
}
function typeFieldListArgs(field:Ast.FieldList):Array<FunctionArg> { //Array of FunctionArgs
    return [];
}
function typeType(spec:Ast.TypeSpec):TypeDefinition {
    return {
        name: spec.name.name,
        pos: null,
        params: [], //<---- fill this for typedefs
        fields: [], //<--- this for interfaces
        pack: [],
        kind: TypeDefKind.TDStructure,
    };
}
function typeImport(imp:Ast.ImportSpec):ImportType {
    return {
        path: imp.path.value,
        alias: imp.name,
    }
}
function typeValue(value:Ast.ValueSpec):Array<TypeDefinition> {
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
function ident(name:String):String {
    if (name == "nil")
        name = "null";
    return name;
}
typedef DataType = {args:Array<String>,pkgs:Array<PackageType>};
typedef PackageType = {path:String,name:String,files:Array<{path:String,decls:Array<Dynamic>}>};
typedef Module = {path:String,files:Array<FileType>}
typedef ImportType = {path:String,alias:String}
typedef FileType = {name:String,imports:Array<ImportType>,defs:Array<TypeDefinition>};
