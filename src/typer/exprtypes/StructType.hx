package typer.exprtypes;
/**
 * struct type translated
 * @param expr 
 * @param info 
 * @return ComplexType
 * @see https://go.dev/ref/spec#Struct_types
 */
function structTypeExpr(expr:GoAst.StructType, info:Info):ComplexType {
	if (expr.fields == null || expr.fields.list == null) // || expr.fields.list.length == 0)
		return HaxeAst.invalidComplexType();
	var fields = typer.fields.FieldList.typeFieldListFields(expr.fields, info, [], false);
	return TAnonymous(fields);
}
