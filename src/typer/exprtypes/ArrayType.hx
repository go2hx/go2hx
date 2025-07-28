package typer.exprtypes;

function arrayTypeExpr(expr:GoAst.ArrayType, info:Info):ComplexType {
	// array is pass by copy, slice is pass by ref except for its length
	var type = typeExprType(expr.elt, info);
	if (expr.len != null) {
		// array
		var len:Expr = null;
		switch expr.len.id {
			case "BasicLit":
				len = toExpr(EConst(CInt(expr.len.value)));
			case "Ellipsis":
				len = toExpr(EConst(CInt("0")));
			default:
				len = typer.exprs.Expr.typeExpr(expr.len, info);
				len = macro($len : go.GoInt).toBasic();
		}
		return TPath({
			pack: ["go"],
			name: "GoArray",
			params: type != null ? [TPType(type), TPExpr(len)] : [],
		});
	}
	// slice
	return TPath({
		pack: ["go"],
		name: "Slice",
		params: type != null ? [TPType(type)] : []
	});
}
