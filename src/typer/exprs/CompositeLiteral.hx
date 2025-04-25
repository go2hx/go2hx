package typer.exprs;

function typeCompositeLit(expr:GoAst.CompositeLit, info:Info):ExprDef {
	var setToSliceType = false;
	var sliceType:GoType = null;
	if (expr.type == null) {
		// catch #NULL_TYPE from goto
		// trace(expr.type,expr.exprType.id);
		if (expr.exprType.id == "ArrayType") {
			setToSliceType = true;
			switch expr.exprType.elt.name {
				case "rune":
					sliceType = GoType.basic(int32_kind);
				case "int":
					sliceType = GoType.basic(int_kind);
				case "string":
					sliceType = GoType.basic(string_kind);
				default:
					// throw "unknown expr.exprType.elt.name: " + expr.exprType.elt.name;
			}
		} else {
			return (macro @:invalid_compositelit_null null).expr;
		}
	}
	var type = typeof(expr.type, info, false);
	if (setToSliceType || type == null) {
		type = GoType.sliceType({get: () -> sliceType});
	}
	// var ct = typeExprType(expr.type, info);
	var ct = toComplexType(type, info);
	final e = compositeLit(type, ct, expr, info);
	// trace(printer.printExpr({expr: e, pos: null}));
	return e;
}


function compositeLit(type:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):ExprDef {
	final keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final underlying = getUnderlying(type);
	if (isInvalid(underlying)) {
		return (macro @:invalid_compositelit null).expr;
	}
	switch removeTypeParam(underlying) {
		case interfaceType(_, _):
			// trace(underlying);
			// trace(type);
			return (macro @:compositeLit_interface null).expr;
		case refType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return e.expr;
		case pointerType(_.get() => elem):
			final e = toExpr(compositeLit(elem, complexTypeElem(ct), expr, info));
			return (macro stdgo.Go.pointer($e)).expr;
		case structType(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			var isAlias = false;
			switch type {
				case named(_, _, _, alias, _):
					if (alias) {
						isAlias = true;
					}
				case structType(_):
					isAlias = true;
				default:
			}
			if (!isAlias) {
				switch ct {
					case TPath(p):
						if (p.pack.length == 0 && StringTools.startsWith(p.name, "T__struct_")) isAlias = true;
					default:
				}
			}
			if (keyValueBool) {
				final fields = fields.copy();
				for (i in 0...expr.elts.length) {
					final elt:GoAst.KeyValueExpr = expr.elts[i];
					final key = formatHaxeFieldName(elt.key.name, info);
					for (field in fields) {
						if (field.name == key) {
							final value = assignTranslate(typeof(elt.value, info, false), field.type.get(), typer.exprs.Expr.typeExpr(elt.value, info), info);
							objectFields.push({
								field: field.name,
								expr: value,
							});
							if (isAlias)
								fields.remove(field);
							break;
						}
					}
				}
				if (isAlias) {
					for (field in fields) {
						objectFields.push({
							field: field.name,
							expr: HaxeAst.defaultValue(field.type.get(), info, true),
						});
					}
				}
				var e = toExpr(EObjectDecl(objectFields));
				return (macro($e : $ct)).expr;
			} else {
				final args = [
					for (i in 0...expr.elts.length)
						assignTranslate(typeof(expr.elts[i], info, false), fields[i].type.get(), typer.exprs.Expr.typeExpr(expr.elts[i], info), info)
				];
				if (isAlias && args.length < fields.length) {
					for (i in args.length...fields.length) {
						args.push(HaxeAst.defaultValue(fields[i].type.get(), info, true));
					}
				}
				if (isAlias) {
					var objectFields:Array<ObjectField> = [];
					for (i in 0...fields.length) {
						objectFields.push({
							field: fields[i].name,
							expr: args[i],
						});
					}
					var e = toExpr(EObjectDecl(objectFields));
					return (macro($e : $ct)).expr;
				} else {
					final p = getTypePath(ct, info);
					// generic named type needs fields filled in
					switch type {
						case named(_, _, _, _, _.get() => params):
							// guard against extern package named types without params such as reflect.Value
							if (params != null && params.length > 0) {
								for (i in args.length...fields.length) {
									args.push(HaxeAst.defaultValue(fields[i].type.get(), info, true));
								}
							}
						default:
					}
					final e = macro new $p($a{args});
					return (macro($e : $ct)).expr;
				}
			}
		case sliceType(_.get() => elem):
			return compositeLitList(elem, keyValueBool, -1, underlying, toComplexType(type, info), expr, info).expr;
		case arrayType(_.get() => elem, len):
			return compositeLitList(elem, keyValueBool, len, underlying, toComplexType(type, info), expr, info).expr;
		case mapType(_.get() => var keyType, _.get() => valueType):
			return compositeLitMapList(keyType, valueType, underlying, toComplexType(type, info), expr, info).expr;
		default:
			throw info.panic() + "not supported CompositeLit type: " + underlying;
	}
}

function compositeLitMapList(keyType:GoType, valueType:GoType, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):Expr {
	var params:Array<Expr> = [];
	final keys:Array<Expr> = [];
	final values:Array<Expr> = [];
	function run(elt:GoAst.Expr) {
		if (elt.id == "CompositeLit") {
			switch getUnderlying(valueType) {
				case interfaceType(empty, _):
					if (empty) {
						return typer.exprs.Expr.typeExpr(elt, info);
					}
				case basic(_):
					return typer.exprs.Expr.typeExpr(elt, info);
				default:
			}
			final t = typeof(elt, info, false);
			final ct = toComplexType(t, info);
			return toExpr(compositeLit(t, ct, elt, info));
		}
		return typer.exprs.Expr.typeExpr(elt, info);
	}
	final exprs:Array<Expr> = [];
	for (elt in expr.elts) {
		final eltKeyType = typeof(elt.key, info, false);
		final eltValueType = typeof(elt.value, info, false);
		final key = assignTranslate(eltKeyType, keyType, run(elt.key), info, false);
		final value = assignTranslate(eltValueType, valueType, run(elt.value), info, false);
		exprs.push(macro x.set($key, $value));
	}
	final keyComplexType = toComplexType(keyType, info);
	final valueComplexType = toComplexType(valueType, info);
	return createMap(underlying, keyComplexType, valueComplexType, exprs, info, ct);
}