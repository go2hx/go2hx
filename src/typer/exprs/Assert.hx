package typer.exprs;

function typeAssertExpr(expr:GoAst.TypeAssertExpr, info:Info):ExprDef { // a -> b conversion
	var e = typer.exprs.Expr.typeExpr(expr.x, info);
	if (expr.type == null)
		return e.expr;
	var t = typeof(expr.type, info, false);
	if (typeof(expr.x, info, false) == t) // same type
		return e.expr;
	switch e.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						var e = typer.exprs.Expr.defaultValue(t, info);
						return e.expr;
					}
				default:
			}
		default:
	}
	final ct = typeExprType(expr.type, info);
	final fromType = typeof(expr.x, info, false);
	// non anyInterface conversions are always known to work at compile time
	final t = typeof(expr.type, info, false);
	if (isAnyInterface(fromType))
		return (macro(stdgo.Go.typeAssert(($e : $ct)) : $ct)).expr;
	e = typer.exprs.Expr.toAnyInterface(e, fromType, info);
	return (macro(stdgo.Go.typeAssert(($e : $ct)) : $ct)).expr;
}
