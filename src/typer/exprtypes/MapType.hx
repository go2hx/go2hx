package typer.exprtypes;
/**
 * map type translated
 * @param expr 
 * @param info 
 * @return ComplexType
 * @see https://go.dev/ref/spec#Map_types
 */
function mapTypeExpr(expr:GoAst.MapType, info:Info):ComplexType {
	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	return TPath({
		name: "GoMap",
		pack: ["go"],
		params: [TPType(keyType), TPType(valueType)],
	});
}
