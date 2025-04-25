package typer.exprtypes;

function mapTypeExpr(expr:GoAst.MapType, info:Info):ComplexType {

	var keyType = typeExprType(expr.key, info);
	var valueType = typeExprType(expr.value, info);
	if (keyType == null || valueType == null)
		return null;
	return TPath({
		name: "GoMap",
		pack: ["stdgo"],
		params: [TPType(keyType), TPType(valueType)],
	});
}