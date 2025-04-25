package typer.fields;

function typeFieldListFields(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool):Array<Field> {
	final docs:Array<GoAst.CommentGroup> = [];
	final comments:Array<GoAst.CommentGroup> = [];
	final fieldList = typeFieldListFieldTypes(list, info, access, defaultBool, docs, comments);
	return typeFields(fieldList, info, access, defaultBool, docs, comments);
}