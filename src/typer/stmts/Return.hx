package typer.stmts;

typedef IntermediateReturnStmtType = {
	blank:Bool,
	returnTypes:Array<GoType>,
	returnNamed:Bool,
	returnNames:Array<String>,
	results:Array<Dynamic>,
	info:Info,
};

function typeReturnStmt(stmt:GoAst.ReturnStmt, info:Info):MacroExpr {
	final stmt = typeReturnStmtAnalyze(stmt, info);
	return typeReturnStmtEmit(stmt);
}

function typeReturnStmtAnalyze(stmt:GoAst.ReturnStmt, info:Info):IntermediateReturnStmtType {
	final irStmt:IntermediateReturnStmtType = {
		blank: stmt.results.length == 0,
		returnTypes: info.returnTypes,
		returnNames: info.returnNames,
		returnNamed: info.returnNamed,
		results: stmt.results,
		info: info,
	};
	return irStmt;
}

function typeReturnStmtEmit(stmt:IntermediateReturnStmtType):MacroExpr {
	final info = stmt.info;
	// blank return
	if (stmt.blank) {
		if (stmt.returnTypes.length == 0)
			return postProcess(macro return, info);
		if (stmt.returnTypes.length == 1) {
			if (stmt.returnNames.length == 1 && info.returnNamed)
				return postProcess(macro return $i{stmt.returnNames[0]}, info, true);
			final value = typer.exprs.Expr.defaultValue(stmt.returnTypes[0], info);
			return postProcess(macro return $value, info, true);
		}
		final fields:Array<ObjectField> = [
			for (i in 0...info.returnTypes.length)
				{field: "_" + i, expr: info.returnNamed ? macro $i{info.returnNames[i]} : typer.exprs.Expr.defaultValue(info.returnTypes[i], info)}
		];
		final decl = toExpr(EObjectDecl(fields));
		return postProcess(macro return $decl, info, true);
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
			e = typer.exprs.Expr.explicitConversion(t, retType, e, info);
		}
		if (info.returnNamed) {
			if (info.returnNames.length == 1) {
				final x = macro $i{info.returnNames[0]};
				if (!Assign.isSelfAssignValue(x, e))
					e = macro $x = $e;
			}
		}
		return postProcess(macro return $e, info);
	}
	// multireturn
	var expr = toExpr(EObjectDecl([
		for (i in 0...stmt.results.length) {
			var e = typer.exprs.Expr.typeExpr(stmt.results[i], info);
			final retType = info.returnTypes[i];
			if (retType != null) {
				final t = typeof(stmt.results[i], info, false);
				e = typer.exprs.Expr.explicitConversion(t, retType, e, info);
			}
			{
				field: "_" + i,
				expr: e,
			};
		}
	]));
	if (info.returnNamed) {
		final ct = info.returnType;
		final decls:Array<MacroExpr> = [macro @:typeReturnStmt2 final __tmp__:$ct = $expr];
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
	return postProcess(macro return $expr, info);
}

function postProcess(e:MacroExpr, info, blank:Bool = false):MacroExpr {
	if (info.global.deferBool) {
		final exprs:Array<MacroExpr> = [];
		switch e.expr {
			case EReturn(expr):
				if (expr == null || blank) {
					exprs.push(HaxeAst.typeDeferReturn(info, false));
					exprs.push(e);
				} else {
					switch expr.expr {
						case EConst(_):
							exprs.push(HaxeAst.typeDeferReturn(info, false));
							exprs.push(e);
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
				exprs.push(e);
		}
		return (macro $b{exprs});
	}
	return e;
}
