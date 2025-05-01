package typer.exprs;

function typeIndexExpr(expr:GoAst.IndexExpr, info:Info):Expr {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	switch x.expr {
		case EConst(c):
			switch c {
				case CString(_):
					x = macro($x : stdgo.GoString);
				default:
			}
		default:
	}
	var index = typer.exprs.Expr.typeExpr(expr.index, info);
	var t = typeof(expr.x, info, false);
	final obj = HaxeAst.destructureExpr(x, t);
	x = obj.x;
	t = obj.t;
	t = getUnderlyingRefNamed(t);
	switch t {
		case arrayType(_, _), sliceType(_), basic(untyped_string_kind), basic(string_kind):
			index = typer.exprs.Expr.explicitConversion(typeof(expr.index, info, false), basic(int_kind), index, info, false);
			index = macro($index : stdgo.GoInt); // explicit casting needed for macro typeParam system otherwise compilation breaks
		case mapType(_.get() => indexType, _.get() => valueType):
			index = typer.exprs.Expr.explicitConversion(typeof(expr.index, info, false), indexType, index, info, false);
			final value = typer.exprs.Expr.defaultValue(valueType, info);
			return macro($x[$index] ?? $value);
		case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams): // generic param
			final objType = expr.x.objType;
			var args = [];
			if (objType != null) {
				switch typeof(objType, info, false, []) {
					case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
						args = genericIndices([expr.index], params, typeParams, info);
					default:
				}
			}
			return typeFunctionLiteral(args, params, results, x, info);
		case typeParam(_, _):
			// nothing
			index = macro @:param_index $index;
		case invalidType:
			index = macro @:invalid_index_invalid_type $index;
		case structType(_):
			index = macro @:invalid_index_struct $index;
		case interfaceType(_, _):
			index = macro @:invalid_index_interface $index;
		default:
			trace("invalid_index: " + t);
			trace(expr.x);
			trace(hashTypeToExprType(expr.x.type, info));
			trace(typeExprType(expr.x, info));
			throw info.panic() + "invalid index";
	}
	return macro $x[$index];
}

function typeFunctionLiteral(args:Array<Expr>, params:Array<GoType>, results:Array<GoType>, x:Expr, info:Info):MacroExpr {
	final funcArgs = params.map(param -> switch param {
		case _var(name, _.get() => type):
			({
				name: name,
				type: toComplexType(type, info),
			} : FunctionArg);
		default:
			throw info.panic() + "param not var: " + param;
	});
	final exprArgs = funcArgs.map(arg -> macro $i{arg.name});
	if (funcArgs.length > 0 && HaxeAst.isRestType(funcArgs[funcArgs.length - 1].type)) {
		exprArgs[exprArgs.length - 1] = macro...$e{exprArgs[exprArgs.length - 1]};
	}
	final ret = getReturn(results, info);
	var expr = macro $x($a{args.concat(exprArgs)});
	if (!HaxeAst.isVoid(ret))
		expr = macro return $expr;
	return toExpr(EFunction(FAnonymous, {
		ret: ret,
		args: funcArgs,
		expr: expr,
	}));
}

function genericIndices(indices:Array<GoAst.Expr>, params:Array<GoType>, typeParams:Array<GoType>, info:Info):Array<Expr> {
	var genericExprs:Array<GoAst.Expr> = indices; // genericTypes but exprs
	var removalGenericExprs:Array<GoAst.Expr> = [];
	for (i in 0...typeParams.length) {
		switch typeParams[i] {
			case typeParam(_, _):

			default:
				if (genericExprs.length > i)
					removalGenericExprs.push(genericExprs[i]);
		}
	}
	for (expr in removalGenericExprs) {
		genericExprs.remove(expr);
	}
	final argTypes = params.map(p -> toComplexType(p, info)); // params are args
	for (i in 0...argTypes.length) {
		for (genericExpr in genericExprs) {
			final a = argTypes[i];
			final b = typeExprType(genericExpr, info);
			switch a {
				case TPath(p):
					if (isTypeParam(params[i])) {
						/*if (p.params == null) {
							genericExprs.remove(genericExpr);
							break;
						}*/
						/*var next = false;
							for (param in p.params) {
								switch param {
									case TPType(a):
										if (compareComplexType(a, b)) { // checking if arg already has type matching for macro to use
											genericExprs.remove(genericExpr);
											break;
										}
									default:
								}
							}
							if (next)
								break; */
					}
				default:
			}
		}
	}
	final args:Array<Expr> = [];
	/*if (genericExprs.length > 0) {
		for (genericExpr in genericExprs) {
			final t = typeof(genericExpr, info, false);
			final defaultType = typer.exprs.Expr.defaultValue(t, info);
			args.push(defaultType);
		}
	}*/
	return args;
}
