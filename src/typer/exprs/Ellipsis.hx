package typer.exprs;
/**
 * ellipsis translated
 * @param expr 
 * @param info 
 * @return MacroExpr
 */
function typeEllipsis(expr:GoAst.Ellipsis, info:Info):MacroExpr {
	var e = typer.exprs.Expr.typeExpr(expr.elt, info);
	var t = typeof(expr.elt, info, false);
	return typeRest(e, t, info);
}

function typeRest(expr:Expr, t:GoType, info:Info):MacroExpr {
	expr = typer.exprs.Expr.toGoType(expr);
	t = getArrayElem(t);
	final ct = toComplexType(t, info);
	return macro...($expr : Array<$ct>);
}
