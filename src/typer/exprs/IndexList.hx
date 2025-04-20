package typer.exprs;

function typeIndexListExpr(expr:GoAst.IndexListExpr, info:Info):ExprDef {

	final x = typer.exprs.Expr.typeExpr(expr.x, info);
	final t = typeof(expr.x, info, false);
	switch t {
		case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
			final objType = expr.x.objType;
			var args = [];
			if (objType != null) {
				switch typeof(objType, info, false, []) {
					case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
						args = genericIndices(expr.indices, params, typeParams, info);
					default:
				}
			}
			return typeFunctionLiteral(args, params, results, x, info).expr;
		default:
	}
	return (macro $x).expr;
} 