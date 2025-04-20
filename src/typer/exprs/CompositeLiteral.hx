package typer.exprs;

function typeCompositeLit(expr:GoAst.CompositeLit, info:Info):ExprDef {
	var setToSliceType = false;
	var sliceType:GoType = null;
	if (expr.type == null) {
		// catch #NULL_TYPE from goto
		// trace(expr.type,expr.exprType.id);
		if (expr.exprType.id == "ArrayType") {
			setToSliceType = true;
			switch expr.exprType.elt.name {
				case "rune":
					sliceType = GoType.basic(int32_kind);
				case "int":
					sliceType = GoType.basic(int_kind);
				case "string":
					sliceType = GoType.basic(string_kind);
				default:
					// throw "unknown expr.exprType.elt.name: " + expr.exprType.elt.name;
			}
		} else {
			return (macro @:invalid_compositelit_null null).expr;
		}
	}
	var type = typeof(expr.type, info, false);
	if (setToSliceType || type == null) {
		type = GoType.sliceType({get: () -> sliceType});
	}
	// var ct = typeExprType(expr.type, info);
	var ct = toComplexType(type, info);
	final e = compositeLit(type, ct, expr, info);
	// trace(printer.printExpr({expr: e, pos: null}));
	return e;
}