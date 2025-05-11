package typer.stmts;

function typeSwitchStmt(stmt:GoAst.SwitchStmt, info:Info):MacroExpr { // always an if else chain to deal with int64s and complex numbers
	if (stmt.body == null || stmt.body.list == null)
		return macro {};
	final init = typer.stmts.Stmt.typeStmt(stmt.init, info);
	// this is an if else chain
	var tag:Expr = null;
	var tagType:GoType = null;
	if (stmt.tag != null) {
		tagType = typeof(stmt.tag, info, false);
		tag = typer.exprs.Expr.typeExpr(stmt.tag, info);
	}
	var hasFallThrough = false;
	for (i in 0...stmt.body.list.length) {
		var obj:GoAst.CaseClause = stmt.body.list[i];
		if (obj.body != null) {
			for (i in 0...obj.body.length) {
				if (obj.body[i].id == "BranchStmt") {
					final stmt:GoAst.BranchStmt = obj.body[i];
					switch stmt.tok {
						case FALLTHROUGH:
							hasFallThrough = true;
						default:
					}
				}
			}
		}
	}
	if (hasFallThrough) {
		for (i in 0...stmt.body.list.length) {
			var obj:GoAst.CaseClause = stmt.body.list[i];
			var localFallThrough = false;
			if (obj.body != null) {
				for (i in 0...obj.body.length) {
					if (obj.body[i].id == "BranchStmt") {
						final branch:GoAst.BranchStmt = obj.body[i];
						switch branch.tok {
							case FALLTHROUGH:
								localFallThrough = true;
							default:
						}
					}
				}

				if (!localFallThrough) {
					var breakStmt = {
						id: "BranchStmt",
						tokPos: 0,
						label: null,
						tok: GoAst.Token.BREAK
					};
					obj.body.push(breakStmt);
				}
			}
		}
		info.switchTag = tag;
		info.switchTagType = tagType;
	}
	function condition(obj:GoAst.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		var value = typer.exprs.Expr.typeExpr(obj.list[i], info);
		if (tag != null) {
			value = typer.exprs.Expr.translateEquals(macro __value__, value, tagType, typeof(obj.list[i], info, false), OpEq, info);
		}
		if (i + 1 >= obj.list.length)
			return value;
		var next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	var defaultBlock:Expr = null;
	function ifs(i:Int = 0) {
		var obj:GoAst.CaseClause = stmt.body.list[i];
		var cond = condition(obj);
		// info.switchNextTag = stmt.body.list.length <= i + 1 ? null : stmt.body.list[i + 1].list[0];
		if (hasFallThrough) {
			final index:Expr = makeExpr(i);
			if (cond != null)
				cond = macro __switchIndex__ == $index || (__switchIndex__ == -1 && ($cond));
			info.switchIndex = i;
		}
		var block = typer.stmts.Block.typeStmtList(obj.body, info, false);
		if (cond == null)
			defaultBlock = block;
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return defaultBlock == null ? macro if ($cond)
				$block : macro if ($cond) $block else $defaultBlock;
		}
		var next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond) $block else $next;
	}
	var expr = ifs();
	final hasBreakBool = HaxeAst.hasBreak(expr);
	if (tag != null) {
		expr = macro {
			final __value__ = $tag;
			$expr;
		};
	}
	if (hasFallThrough || hasBreakBool) {
		if (hasBreakBool) {
			function func(expr:Expr):MacroExpr {
				return switch expr.expr {
					case EBlock(exprs):
						toExpr(EBlock([for (i in 0...exprs.length) func(exprs[i])]));
					case EIf(econd, eif, eelse):
						switch eif.expr {
							case EBlock(exprs):
								exprs.push(macro break);
								eif.expr = EBlock(exprs);
							default:
						}
						if (eelse != null) {
							switch eelse.expr {
								case EBlock(exprs):
									// exprs.push(macro break);
									// eelse.expr = EBlock(exprs);
								default:
									func(eelse);
							}
						}
						expr.expr = EIf(econd, eif, eelse);
						expr;
					default:
						expr;
				}
			}
			expr = func(expr);
		}
		var needsReturn = HaxeAst.exprWillReturn(expr);
		final continueBool = HaxeAst.continueInsideSwitch(expr);
		if (continueBool) {
			expr = macro {
				var __continue__ = false;
				var __switchIndex__ = -1;
				var __run__ = true;
				while (__run__) {
					__run__ = false;
					$expr;
					break;
				}
				if (__continue__)
					continue;
			};
		} else {
			expr = macro {
				var __switchIndex__ = -1;
				var __run__ = true;
				while (__run__) {
					__run__ = false;
					$expr;
					break;
				}
			};
		}
		if (needsReturn) {
			switch expr.expr {
				case EBlock(exprs):
					exprs.push(typer.stmts.Return.typeReturnStmt({results: [], returnPos: 0}, info));
					expr.expr = EBlock(exprs);
				default:
			}
		}
	}
	return if (init != null) {
		macro {
			$init;
			$expr;
		};
	} else {
		return expr;
	}
}
