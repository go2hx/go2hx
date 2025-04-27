package typer.stmts;

function typeDeclStmt(stmt:GoAst.DeclStmt, info:Info):ExprDef {
	if (stmt.decl.decls == null)
		return (macro {}).expr; // blank
	var decls:Array<GoAst.GenDecl> = stmt.decl.decls;
	var vars:Array<Var> = [];
	var vars2:Array<Var> = [];
	for (decl in decls) {
		info.lastValue = null;
		info.lastType = null;
		if (decl.tok == CONST) {
			continue;
		}
		for (spec in decl.specs) {
			switch spec.id {
				case "TypeSpec":
					var spec:GoAst.TypeSpec = spec;
					final name = spec.name.name;
					final pos = spec.pos;
					spec.name.name = "T_" + info.funcName + "___localname___" + name + "_" + pos;
					info.renameClasses[name] = className(spec.name.name, info);
					info.data.defs.push(typer.specs.Spec.typeSpec(spec, info));
				case "ValueSpec": // typeValue
					var spec:GoAst.ValueSpec = spec;
					var type = spec.type.id != null ? typeExprType(spec.type, info) : null;
					var value = macro @:default_null null;
					var args:Array<Expr> = [];
					if (spec.names.length > spec.values.length && spec.values.length > 0) {
						// destructure
						var tmp = "__tmp__";
						var func = typer.exprs.Expr.typeExpr(spec.values[0], info);
						var data = GoAst.castTranslate(spec.values[0], func, info);
						func = data.expr;
						vars2.push({
							name: tmp,
							expr: func
						});
						var type = typeof(spec.values[0], info, false);
						switch type {
							case tuple(_, _):
							default:
								return (macro @:destructure_non_tuple {}).expr;
						}
						var tuples = getReturnTupleType(type);

						for (i in 0...spec.names.length) {
							final fieldName = "_" + i;
							final type = toComplexType(tuples[i], info);
							final name = typer.exprs.Ident.nameIdent(spec.names[i].name, false, true, info);
							vars2.push({
								name: name,
								expr: macro __tmp__.$fieldName,
								type: type,
							});
						}
					} else {
						var specType = typeof(spec.type, info, false);
						if (specType == null || specType == invalidType) {
							specType = typeof(spec.names[0], info, false);
						}
						// concat because this is in a for loop
						for (i in 0...spec.names.length) {
							var expr:Expr = null;
							if (spec.values[i] == null) {
								if (type != null) {
									expr = typer.exprs.Expr.defaultValue(specType, info);
								} else {
									expr = typer.exprs.Expr.typeExpr(info.lastValue, info);
									type = toComplexType(info.lastType, info);
									expr = typer.exprs.Expr.explicitConversion(typeof(info.lastValue, info, false), info.lastType, expr, info);
								}
							} else {
								info.lastValue = spec.values[i];
								info.lastType = specType;
								expr = typer.exprs.Expr.typeExpr(spec.values[i], info);
								expr = typer.exprs.Expr.explicitConversion(typeof(info.lastValue, info, false), info.lastType, expr, info);
							}
							var nameStr = spec.names[i]?.name;
							if (nameStr == null)
								nameStr = '_$i';
							var name = typer.exprs.Ident.nameIdent(nameStr, false, true, info);
							var t = typeof(spec.type, info, false);
							var exprType = type;
							switch exprType {
								case TPath({pack: [], name: "NullType"}):
									final specType = typeof(spec.names[i], info, false);
									if (specType != null) exprType = toComplexType(specType, info);
								default:
							}
							if (HaxeAst.isInvalidComplexType(exprType))
								exprType = null;
							vars.push({
								name: name,
								type: exprType,
								expr: expr,
							});
						}
					}
				default:
					throw info.panic() + "unknown id: " + spec.id;
			}
		}
	}
	if (vars.length > 0) {
		// final e = createTempVars(vars, false);
		final e = toExpr(EVars(vars));
		if (vars2.length > 0) {
			final e2:Expr = {expr: EVars(vars2), pos: null};
			return (macro @:mergeBlock {
				${e2};
				${e};
			}).expr;
		} else {
			return e.expr;
		}
	} else if (vars2.length > 0) {
		return EVars(vars2);
	}
	return (macro {}).expr; // blank expr def
} // ($expr : $type);
