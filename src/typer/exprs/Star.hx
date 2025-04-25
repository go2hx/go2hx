package typer.exprs;

function typeStarExpr(expr:GoAst.StarExpr, info:Info):ExprDef {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	if (!isPointer(t)) {
		final t = typeof(expr, info, false);
		final ct = toComplexType(t, info);
		return (macro($x : $ct)).expr;
	}
	return (macro $x.value).expr; // pointer code
}
