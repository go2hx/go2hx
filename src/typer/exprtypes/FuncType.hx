package typer.exprtypes;

function funcType(expr:GoAst.FuncType, info:Info):ComplexType {
	var ret = typer.decls.Function.typeFieldListReturn(expr.results, info, false);
	var params = typer.fields.FieldList.typeFieldListComplexTypes(expr.params, info);
	if (ret == null || params == null)
		return TFunction([], TPath({name: "Void", pack: []}));
	return TFunction(params, ret);
}
