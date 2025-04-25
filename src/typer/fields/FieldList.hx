package typer.fields;

function typeFieldListFields(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	final docs:Array<GoAst.CommentGroup> = [];
	final comments:Array<GoAst.CommentGroup> = [];
	final fieldList = typeFieldListFieldTypes(list, info, access, defaultBool, docs, comments);
	return typeFields(fieldList, info, access, defaultBool, docs, comments);
}

function getParams(params:GoAst.FieldList, info:Info, allowNonGeneric:Bool = false):Array<TypeParamDecl> {
	final list:Array<TypeParamDecl> = [];
	if (params == null)
		return list;
	for (field in params.list) {
		for (name in field.names) {
			list.push({
				name: className(name.name, info),
				// constraints: [ct],
			});
		}
	}
	return list;
}