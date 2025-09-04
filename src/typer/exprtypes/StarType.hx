package typer.exprtypes;
/**
 * star expr treated as type and translated
 * @param expr 
 * @param info 
 * @return ComplexType
 */
function starType(expr:GoAst.StarExpr, info:Info):ComplexType { // pointer type

	var type = typeExprType(expr.x, info);
	var t = typeof(expr.x, info, false);
	if (isRefValue(t)) {
		return TPath({
			pack: ["go"],
			name: "Ref",
			params: type != null ? [TPType(type)] : [],
		});
	}

	return TPath({
		pack: ["go"],
		name: "Pointer",
		params: type != null ? [TPType(type)] : [],
	});
}
