package typer.exprtypes;
/**
 * chan type translated
 * @param expr 
 * @param info 
 * @return ComplexType
 * @see https://go.dev/ref/spec#Channel_types
 */
function chanTypeExpr(expr:GoAst.ChanType, info:Info):ComplexType {
	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: ["go"],
		params: [TPType(type)],
	});
}
