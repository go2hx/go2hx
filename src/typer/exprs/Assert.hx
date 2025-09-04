package typer.exprs;
/**
 * assert expr translated
 * @param expr 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Type_assertions
 */
function typeAssertExpr(expr:GoAst.TypeAssertExpr, info:Info):MacroExpr { // a -> b conversion
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
		return setAssert(e, t, ct, info);
	e = typer.exprs.Expr.toAnyInterface(e, fromType, info);
	return setAssert(e, t, ct, info);
}

private function setAssert(e:haxe.macro.Expr, gt:GoType, ct:ComplexType, info:Info):Expr {
	final rt = toReflectType(gt, info, [], false);
	return macro (go.Go.typeAssert($e, $rt) : $ct);
}
