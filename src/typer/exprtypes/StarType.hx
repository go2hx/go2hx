package typer.exprtypes;

function starType(expr:GoAst.StarExpr, info:Info):ComplexType { // pointer type

	var type = typeExprType(expr.x, info);
	var t = typeof(expr.x, info, false);
	if (isRefValue(t)) {
		return TPath({
			pack: ["stdgo"],
			name: "Ref",
			params: type != null ? [TPType(type)] : [],
		});
	}

	return TPath({
		pack: ["stdgo"],
		name: "Pointer",
		params: type != null ? [TPType(type)] : [],
	});
} 