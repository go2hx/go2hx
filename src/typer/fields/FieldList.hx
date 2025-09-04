package typer.fields;
/**
 * field list translated
 * @param list 
 * @param info 
 * @param access 
 * @param defaultBool 
 * @return Array<Field>
 */
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

function typeFieldListFieldTypes(list:GoAst.FieldList, info:Info, access:Array<Access> = null, defaultBool:Bool = false,
		docs:Array<GoAst.CommentGroup> = null, comments:Array<GoAst.CommentGroup> = null):Array<typer.exprtypes.ExprType.FieldType> {
	var fields:Array<Field> = [];
	var fieldList:Array<typer.exprtypes.ExprType.FieldType> = [];
	function getName(type:GoAst.Expr) {
		return switch type.id {
			case "SelectorExpr": type.sel.name;
			case "Ident": type.name;
			case "StarExpr": getName(type.x);
			case "Pointer": getName(type.elem);
			case "IndexExpr": getName(type.x);
			default: throw info.panic() + "unknown embedded: " + type.id;
		}
	}
	final comments = [];
	final oldCount = info.blankCounter;
	info.blankCounter = 0;
	for (field in list.list) {
		var type = typeof(field.type, info, false);
		var tag = "";
		if (field.tag != "") {
			tag = field.tag;
		}
		if (docs != null)
			docs.push(field.doc);
		if (comments != null)
			comments.push(field.comment);
		if (field.names.length == 0) {
			// embedded
			var name:String = formatHaxeFieldName(getName(field.type), info);
			if (name == null)
				continue;
			fieldList.push({
				name: name,
				type: {get: () -> type},
				tag: tag,
				embedded: true,
				optional: false,
			});
		} else {
			for (n in field.names) {
				final name = formatHaxeFieldName(n.name, info);
				fieldList.push({
					name: name,
					type: {get: () -> type},
					embedded: false,
					tag: tag,
					optional: n.name == "_",
				});
			}
		}
	}
	info.blankCounter = oldCount;
	return fieldList;
}

function typeFieldListComplexTypes(list:GoAst.FieldList, info:Info):Array<ComplexType> {
	var args:Array<ComplexType> = [];
	for (field in list.list) {
		var type = typeExprType(field.type, info);
		if (field.names.length > 0) {
			for (name in field.names) {
				final name = typer.exprs.Ident.nameIdent(name.name, false, true, info);
				args.push(TNamed(name, type));
			}
		} else {
			args.push(type);
		}
	}
	return args;
}

function typeFieldListMethods(list:GoAst.FieldList, info:Info):Array<Field> {
	var fields:Array<Field> = [];
	final oldRenameIdents = info.renameIdents.copy();
	for (field in list.list) {
		var expr:GoAst.FuncType = field.type;

		var ret = typer.decls.Function.typeFieldListReturn(expr.results, info, false);
		var params = typer.decls.Function.typeFieldListArgs(expr.params, info);
		if (ret == null || params == null)
			continue;
		final doc = gen.Doc.getDocComment(field, field);
		for (n in field.names) {
			final name = formatHaxeFieldName(n.name, info);
			fields.push({
				name: name,
				pos: null,
				doc: doc,
				access: [APublic],
				kind: FFun({
					args: params,
					ret: ret,
				})
			});
		}
	}
	info.renameIdents = oldRenameIdents;
	return fields;
}
