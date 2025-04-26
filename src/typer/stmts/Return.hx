package typer.stmts;

function typeReturnStmt(stmt:GoAst.ReturnStmt, info:Info):ExprDef {
	function ret(e:ExprDef, blank:Bool = false) {
		if (info.global.deferBool) {
			final exprs:Array<Expr> = [];
			switch e {
				case EReturn(expr):
					if (expr == null || blank) {
						exprs.push(HaxeAst.typeDeferReturn(info, false));
						exprs.push(toExpr(e));
					} else {
						switch expr.expr {
							case EConst(_):
								exprs.push(HaxeAst.typeDeferReturn(info, false));
								exprs.push(toExpr(e));
							default:
								final ct = info.returnType;
								exprs.push(macro final __ret__:$ct = $expr);
								if (info.returnNames.length > 1 && info.returnNamed) {
									for (i in 0...info.returnNames.length) {
										final name = info.returnNames[i];
										final fieldName = "_" + i;
										exprs.push(macro $i{name} = __ret__.$fieldName);
									}
								}
								exprs.push(HaxeAst.typeDeferReturn(info, false));
								exprs.push(macro return __ret__);
						}
					}
				default:
					exprs.push(HaxeAst.typeDeferReturn(info, false));
					exprs.push(toExpr(e));
			}
			return (macro $b{exprs}).expr;
		}
		return e;
	}
	// blank return
	if (stmt.results.length == 0) {
		if (info.returnTypes.length == 0)
			return ret(EReturn());
		if (info.returnTypes.length == 1) {
			if (info.returnNames.length == 1 && info.returnNamed)
				return ret(EReturn(macro $i{info.returnNames[0]}), true);
			return ret(EReturn(typer.exprs.Expr.defaultValue(info.returnTypes[0], info)), true);
		}
		final fields:Array<ObjectField> = [
			for (i in 0...info.returnTypes.length)
				{field: "_" + i, expr: info.returnNamed ? macro $i{info.returnNames[i]} : typer.exprs.Expr.defaultValue(info.returnTypes[i], info)}
		];
		return ret(EReturn(toExpr(EObjectDecl(fields))), true);
	}
	if (stmt.results.length == 1) {
		var e = typer.exprs.Expr.typeExpr(stmt.results[0], info);
		var retType = info.returnTypes[0];
		if (info.returnTypes.length > 1) {
			retType = tuple(info.returnTypes.length, info.returnNamed ? {
				get: () -> [
					for (i in 0...info.returnTypes.length)
						_var(info.returnNames[i], {get: () -> info.returnTypes[i]})
				]
			} : {get: () -> info.returnTypes});
		}
		if (retType != null) {
			final t = typeof(stmt.results[0], info, false);
			e = typer.exprs.Expr.assignTranslate(t, retType, e, info);
		}
		if (info.returnNamed) {
			if (info.returnNames.length == 1) {
				final x = macro $i{info.returnNames[0]};
				if (!Assign.isSelfAssignValue(x, e))
					e = macro $x = $e;
			}
		}
		return ret(EReturn(e));
	}
	// multireturn
	var expr = toExpr(EObjectDecl([
		for (i in 0...stmt.results.length) {
			var e = typer.exprs.Expr.typeExpr(stmt.results[i], info);
			final retType = info.returnTypes[i];
			if (retType != null) {
				final t = typeof(stmt.results[i], info, false);
				e = typer.exprs.Expr.assignTranslate(t, retType, e, info);
			}
			{
				field: "_" + i,
				expr: e,
			};
		}
	]));
	if (info.returnNamed) {
		final ct = info.returnType;
		final decls:Array<Expr> = [macro @:typeReturnStmt2 final __tmp__:$ct = $expr];
		expr = macro $b{decls};
		for (i in 0...stmt.results.length) {
			final fieldName = "_" + i;
			final e = macro __tmp__.$fieldName;
			final x = macro $i{info.returnNames[i]};
			if (!Assign.isSelfAssignValue(x, e))
				decls.push(macro $x = $e);
		}
		decls.push(macro __tmp__);
	}
	return ret(EReturn(expr));
}
