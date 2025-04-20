package typer.exprs;

function typeIndexExpr(expr:GoAst.IndexExpr, info:Info):ExprDef {

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
	final obj = destructureExpr(x, t);
	x = obj.x;
	t = obj.t;
	t = getUnderlyingRefNamed(t);
	switch t {
		case arrayType(_, _), sliceType(_), basic(untyped_string_kind), basic(string_kind):
			index = assignTranslate(typeof(expr.index, info, false), basic(int_kind), index, info, false);
			index = macro($index : stdgo.GoInt); // explicit casting needed for macro typeParam system otherwise compilation breaks
		case mapType(_.get() => indexType, _.get() => valueType):
			index = assignTranslate(typeof(expr.index, info, false), indexType, index, info, false);
			final value = defaultValue(valueType, info);
			final e = macro($x[$index] ?? $value);
			return e.expr;
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
			return typeFunctionLiteral(args, params, results, x, info).expr;
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
	final e = macro $x[$index];
	return e.expr;
}