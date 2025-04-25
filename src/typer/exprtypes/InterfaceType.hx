package typer.exprtypes;

function interfaceTypeExpr(expr:GoAst.InterfaceType, info:Info):ComplexType {

	if (expr.methods.list.length == 0) {
		// dynamic
		return HaxeAst.anyInterfaceType();
	} else {
		// anonymous struct
		var fields = typer.fields.FieldList.typeFieldListFields(expr.methods, info, [], false);
		return TAnonymous(fields);
	}
} 