package typer.exprs;

function typeAssertExpr(expr:GoAst.TypeAssertExpr, info:Info):Expr { // a -> b conversion
	var e = typer.exprs.Expr.typeExpr(expr.x, info);
	if (expr.type == null)
		return e;
	var t = typeof(expr.type, info, false);
	if (typeof(expr.x, info, false) == t) // same type
		return e;

	if(HaxeAst.isNull(e))
		return typer.exprs.Expr.defaultValue(t, info);

	final ct = typeExprType(expr.type, info);
	final fromType = typeof(expr.x, info, false);
	// non anyInterface conversions are always known to work at compile time
	final t = typeof(expr.type, info, false);
	if (isAnyInterface(fromType))
		return macro(stdgo.Go.typeAssert(($e : $ct)) : $ct);

	e = typer.exprs.Expr.toAnyInterface(e, fromType, info);
	return macro (stdgo.Go.typeAssert(($e : $ct)) : $ct);
}
