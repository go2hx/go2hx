package typer.exprtypes;
/**
 * ellipsis treated as type and translated
 * ...T
 * @param expr 
 * @param info 
 * @return ComplexType
 */
function ellipsisType(expr:GoAst.Ellipsis, info:Info):ComplexType {
	var t = typeExprType(expr.elt, info);
	return TPath({
		name: "Rest",
		pack: ["haxe"],
		params: [TPType(t)],
	});
}
