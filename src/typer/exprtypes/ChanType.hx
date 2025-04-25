package typer.exprtypes;

function chanTypeExpr(expr:GoAst.ChanType, info:Info):ComplexType {

	var type = typeExprType(expr.value, info);
	return TPath({
		name: "Chan",
		pack: ["stdgo"],
		params: [TPType(type)],
	});
} 