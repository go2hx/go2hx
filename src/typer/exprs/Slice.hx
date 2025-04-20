package typer.exprs;

function typeSliceExpr(expr:GoAst.SliceExpr, info:Info):ExprDef {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	final xType = typeof(expr.x, info, false);
	if (isPointer(xType)) // get pointer reference of slice/array if pointer type
		x = macro $x.value;
	var low = expr.low != null ? typer.exprs.Expr.typeExpr(expr.low, info) : macro 0;
	var high = expr.high != null ? typer.exprs.Expr.typeExpr(expr.high, info) : null;
	final ct = toComplexType(typeof(expr, info, false), info);
	x = if (high != null) {
		if (expr.slice3) {
			var max = typer.exprs.Expr.typeExpr(expr.max, info);
			max = assignTranslate(typeof(expr.max, info, false), basic(int_kind), max, info);
			macro $x.__slice__($low, $high, $max);
		} else {
			macro $x.__slice__($low, $high);
		}
	} else {
		macro $x.__slice__($low);
	}
	return (macro($x : $ct)).expr;
}