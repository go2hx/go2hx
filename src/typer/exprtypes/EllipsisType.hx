package typer.exprtypes;

function ellipsisType(expr:GoAst.Ellipsis, info:Info):ComplexType {

	var t = typeExprType(expr.elt, info);
	return TPath({
		name: "Rest",
		pack: ["haxe"],
		params: [TPType(t)],
	});
}  