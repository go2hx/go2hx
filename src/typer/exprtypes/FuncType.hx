package typer.exprtypes;
/**
 * function type translated
 * @param expr 
 * @param info 
 * @return ComplexType
 * @see https://go.dev/ref/spec#Function_types
 */
function funcType(expr:GoAst.FuncType, info:Info):ComplexType {
	var ret = typer.decls.Function.typeFieldListReturn(expr.results, info, false);
	var params = typer.fields.FieldList.typeFieldListComplexTypes(expr.params, info);
	if (ret == null || params == null)
		return TFunction([], TPath({name: "Void", pack: []}));
	return TFunction(params, ret);
}
