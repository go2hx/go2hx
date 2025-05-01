package typer.exprs;

function typeSliceExpr(expr:GoAst.SliceExpr, info:Info):MacroExpr {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	final xType = typeof(expr.x, info, false);
	if (isPointer(xType)) // get pointer reference of slice/array if pointer type
		x = macro $x.value;

	final low = if (expr.low != null) {
		typer.exprs.Expr.typeExpr(expr.low, info);
	} else {
		macro 0;
	}
	final high = if (expr.high != null) {
		typer.exprs.Expr.typeExpr(expr.high, info);
	} else {
		null;
	}

	final ct = toComplexType(typeof(expr, info, false), info);

	final expr = if (high != null) {
		if (expr.slice3) {
			var max = typer.exprs.Expr.typeExpr(expr.max, info);
			max = typer.exprs.Expr.explicitConversion(typeof(expr.max, info, false), basic(int_kind), max, info);
			macro $x.__slice__($low, $high, $max);
		} else {
			macro $x.__slice__($low, $high);
		}
	} else {
		macro $x.__slice__($low);
	}
	return macro($expr : $ct);
}
