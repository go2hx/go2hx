package typer.stmts;

/**
 * switch x.(type) {}
 * @param stmt 
 * @param info 
 * @return ExprDef
 */
function typeTypeSwitchStmt(stmt:GoAst.TypeSwitchStmt, info:Info):MacroExpr { // a switch statement of a type
	var init:Expr = stmt.init == null ? null : typer.stmts.Stmt.typeStmt(stmt.init, info);
	var assign:Expr = null;
	var assignType:GoType = null;
	var setVar:String = "";
	switch stmt.assign.id {
		case "ExprStmt":
			var stmt:GoAst.ExprStmt = stmt.assign;
			switch stmt.x.id {
				case "TypeAssertExpr":
					final stmt:GoAst.TypeAssertExpr = stmt.x;
					assignType = typeof(stmt.x, info, false);
					assign = typer.exprs.Expr.typeExpr(stmt.x, info);
				default:
					trace("unknown assign expr: " + stmt.x.id);
			}
		case "AssignStmt":
			var stmt:GoAst.AssignStmt = stmt.assign;
			var rhs = stmt.rhs[0];
			switch rhs.id {
				case "TypeAssertExpr":
					final rhs:GoAst.TypeAssertExpr = rhs;
					assign = typer.exprs.Expr.typeExpr(rhs.x, info);
					assignType = typeof(rhs.x, info, false);
				default:
					trace("unknown assign rhs type switch expr: " + rhs.id);
			}
			final lhs = stmt.lhs[0];
			switch lhs.id {
				case "Ident":
					final lhs:GoAst.Ident = lhs;
					setVar = typer.exprs.Ident.nameIdent(lhs.name, false, true, info);
				default:
					trace("unknown assign lhs type switch expr: " + rhs.id);
			}
		default:
			trace("unknown assign: " + stmt.assign.id);
	}
	var types:Array<GoType> = [];
	function condition(obj:GoAst.CaseClause, i:Int = 0) {
		if (obj.list.length == 0)
			return null;
		final value = if (obj.list[i].name == "nil") {
			types.push(interfaceType(true, []));
			macro __type__ == null;
		} else {
			final t = toReflectType(typeof(obj.list[i], info, false), info, [], true);
			types.push(typeof(obj.list[i], info, false));
			var e = macro __type__;
			if (!isAnyInterface(assignType))
				e = typer.exprs.Expr.toAnyInterface(e, assignType, info);
			macro stdgo.Go.typeEquals($e, $t);
		}
		if (i + 1 >= obj.list.length)
			return value;
		final next = condition(obj, i + 1);
		return toExpr(EBinop(OpBoolOr, value, next));
	}
	var defaultBlock:Expr = null;
	function ifs(i:Int = 0) {
		final obj:GoAst.CaseClause = stmt.body.list[i];
		types = [];
		final cond = condition(obj);
		final block = typer.stmts.Block.typeStmtList(obj.body, info, false);
		if (setVar != "") {
			switch block.expr {
				case EBlock(exprs):
					var type:ComplexType = toComplexType(assignType, info);
					var defValue = typer.exprs.Expr.defaultValue(assignType, info, false);

					var set = macro __type__?.__underlying__();
					if (types.length == 1) {
						type = toComplexType(types[0], info);
						defValue = typer.exprs.Expr.defaultValue(types[0], info, false);
						set = macro __type__ == null ? $defValue : __type__.__underlying__();
						// trace(assignType);
						// trace(types[0]);
						if (!isAnyInterface(assignType) && isInterface(types[0]) && isInterface(assignType)) {
							// hard cast if interface to interface (typedef anon)
							set = macro __type__ == null ? $defValue : cast __type__;
						} else if (!isAnyInterface(types[0])) {
							if (isInterface(types[0])) {
								set = macro $set == null ? $defValue : $set.value;
							} else {
								set = macro $set == null ? $defValue : stdgo.Go.fromAsInterfaceToValue($set.value);
							}
						}
					} else {
						// to AnyInterface
						if (!isAnyInterface(assignType))
							set = macro __type__ == null ? $defValue : cast __type__;
					}
					exprs.unshift(macro var $setVar:$type = $set);
					block.expr = EBlock(exprs);
				default:
			}
		}
		if (cond == null)
			defaultBlock = block;
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return defaultBlock == null ? macro if ($cond)
				$block : macro if ($cond) $block else $defaultBlock;
		}
		final next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond) $block else $next;
	}
	if (stmt.body == null || stmt.body.list == null)
		return macro {};
	var expr = ifs();
	final hasBreakBool = HaxeAst.hasBreak(expr);
	if (hasBreakBool) { // no fallthrough stmt for TypeSwitch
		final continueBool = HaxeAst.continueInsideSwitch(expr);
		if (continueBool) {
			expr = macro {
				var __continue__ = false;
				var __bool__ = true;
				while (__bool__) {
					__bool__ = false;
					$expr;
					break;
				}
				if (__continue__)
					continue;
			}
		} else {
			expr = macro {
				var __bool__ = true;
				while (__bool__) {
					__bool__ = false;
					$expr;
					break;
				}
			}
		}
	}
	final t = macro final __type__ = $assign;
	if (init != null) {
		return switch expr.expr {
			case EBlock(exprs):
				exprs.unshift(init);
				exprs.unshift(t);
				macro $b{exprs};
			default:
				macro {
					$init;
					$t;
					$expr;
				}
		};
	}
	return macro {
		$t;
		$expr;
	};
} // make Go equality exprs work in Haxe
