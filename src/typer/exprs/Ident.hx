package typer.exprs;

function typeIdent(expr:GoAst.Ident, info:Info, isSelect:Bool):ExprDef {
	var name = nameIdent(expr.name, true, false, info, isSelect, expr.objPath);
	return EConst(CIdent(name));
}