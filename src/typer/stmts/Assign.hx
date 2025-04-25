package typer.stmts;


function typeAssignStmt(stmt:GoAst.AssignStmt, info:Info):ExprDef {

	switch stmt.tok {
		case ADD_ASSIGN, SUB_ASSIGN, MUL_ASSIGN, QUO_ASSIGN, REM_ASSIGN, SHL_ASSIGN, SHR_ASSIGN, XOR_ASSIGN, AND_ASSIGN, AND_NOT_ASSIGN, OR_ASSIGN:
			// remove checkType from x in x = y

			var assign = HaxeAst.removeCoalAndCheckType(typer.exprs.Expr.typeExpr(stmt.lhs[0], info));
			var assignName = "";
			var assignExpr = null;
			switch assign.expr {
				case EField(e, field):
					switch e.expr {
						case ECall(_, _):
							assignExpr = e;
							assignName = "__t__";
							info.localIdents.push(assignName);
							stmt.lhs[0] = {id: "Ident", name: '_t__.$field'};
							assign = HaxeAst.removeCoalAndCheckType(typer.exprs.Expr.typeExpr(stmt.lhs[0], info));
						default:
					}
				case EConst(_):
				default:
			}
			final expr = toExpr(typer.exprs.Binary.typeBinaryExpr({
				x: stmt.lhs[0],
				y: {id: "ParenExpr", x: stmt.rhs[0]},
				op: nonAssignToken(stmt.tok),
				opPos: 0,
				type: stmt.lhs[0],
			}, info));
			if (assignName != "")
				info.localIdents.remove(assignName);
			if (stmt.lhs[0].id == "IndexExpr" || stmt.lhs[0].id == "StarExpr" && stmt.lhs[0].x.id == "IndexExpr") { // prevent invalid assign to null
				switch HaxeAst.escapeParens(assign).expr {
					case ETernary(econd, eif, _):
						return (macro if ($econd) $expr).expr;
					default:
				}
			}
			if (assignName != "") {
				return (macro {
					final __t__ = $assignExpr;
					$assign = $expr;
				}).expr;
			}
			return (macro $assign = $expr).expr;
		case ASSIGN: // x = y
			var blankBool:Bool = true;
			for (lhs in stmt.lhs) {
				if (lhs.id != "Ident" || lhs.name != "_") {
					blankBool = false;
					break;
				}
			}
			if (blankBool) {
				var exprs:Array<Expr> = [];
				for (rhs in stmt.rhs) {
					final e = typer.exprs.Expr.typeExpr(rhs, info);
					exprs.push(e);
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				return (macro $b{exprs}).expr;
			}

			if (stmt.lhs.length == stmt.rhs.length) { // w,x = y,z
				var op = typeOp(stmt.tok);
				var exprs:Array<Expr> = [];
				var destructExprs:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					var x = typer.exprs.Expr.typeExpr(stmt.lhs[i], info);
					var y = typer.exprs.Expr.typeExpr(stmt.rhs[i], info);
					// check if empty
					if (stmt.lhs[i].id == "Ident" && stmt.lhs[i].name == "_") {
						exprs.unshift(y);
						continue;
					}
					var toType = typeof(stmt.lhs[i], info, false);
					if (op == OpAssign) {
						// __append__ -> __append__
						var callExpr:Expr = {expr: y.expr, pos: y.pos};
						switch callExpr.expr {
							case EParenthesis(e):
								callExpr = e;
							default:
						}
						// remove Haxe compiler error: "Assigning a value to itself"
						if (isSelfAssignValue(x, y))
							continue;
					}
					var fromType = typeof(stmt.rhs[i], info, false);
					y = assignTranslate(fromType, toType, y, info);
					if (stmt.lhs[i].id == "IndexExpr") { // prevent invalid assign to null
						switch HaxeAst.escapeParens(x).expr {
							case ETernary(econd, eif, _):
								exprs.push(macro if ($econd) $eif = $y);
								continue;
							default:
						}
					}
					if (stmt.lhs[i].id == "StarExpr" && !isPointer(toType)) {
						// set underlying not the ref
						// trace(toType);
						final underlyingType = getUnderlying(toType);
						switch underlyingType {
							case interfaceType(empty, methods):
								if (empty) {
									return (macro $x.__setData__($y)).expr;
								} else {
									final exprs:Array<Expr> = [
										for (field in methods) {
											final field = field.name;
											macro x.$field = __tmp__.$field;
										}
									];
									exprs.unshift(@:assign1 macro var x = $x);
									exprs.unshift(macro var __tmp__ = $y);
									return (macro $b{exprs}).expr;
								}
							case sliceType(_), mapType(_, _), arrayType(_, _):
								exprs.push(macro $x.__setData__($y));
								continue;
							case structType(fields):
								final exprs:Array<Expr> = [
									for (field in fields) {
										final field = field.name;
										macro x.$field = __tmp__?.$field;
									}
								];
								exprs.unshift(@:assign2 macro var x = $x);
								exprs.unshift(macro var __tmp__ = $y);
								return (macro $b{exprs}).expr;
							default:
						}
					}
					if (x == null || y == null)
						return null;
					// remove checkType from x in x = y
					x = HaxeAst.removeCoalAndCheckType(x);
					var expr = toExpr(EBinop(op, x, y));
					if (x.expr.match(EConst(CIdent("_")))) // blank means no assign/define just the rhs expr
						expr = y;
					if (op == null) {
						switch stmt.tok {
							case AND_NOT_ASSIGN: // &^=
								expr = toExpr(EBinop(OpAssignOp(OpAnd), x, macro - 1 ^ ($y)));
							default:
								throw info.panic() + "op is null";
						}
					}
					destructExprs.push(expr);
					exprs.push(expr);
				}
				if (exprs.length == 1)
					return exprs[0].expr;
				var tmpIndex = 0;
				var inits:Array<Expr> = [];
				for (expr in destructExprs) {
					switch expr.expr { // in case it's an array/slice/map get and has a null if check
						case EIf(_, e, _):
							expr = e;
						default:
					}
					switch expr.expr {
						case EBinop(op, e1, e2):
							var tmpName = "__tmp__" + tmpIndex;
							tmpIndex++;
							inits.push(macro final $tmpName = ${e2});
							expr.expr = EBinop(op, e1, macro @:binopAssign $i{tmpName});
						default:
							inits.push(expr);
					}
				}
				exprs = orderOperations(inits, exprs);
				return EBlock(exprs);
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) { // x,y = z
				// assign, destructure system
				var func = typer.exprs.Expr.typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<GoType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				switch t {
					case tuple(_, _.get() => vars):
						for (i in 0...vars.length) {
							final v = vars[i];
							switch v {
								case _var(_, _.get() => type):
									names.push('_$i');
									types.push(type);
								default:
									names.push('_$i');
									types.push(v);
							}
						}
					default:
						types.push(t);
				}
				var assigns:Array<Expr> = [];
				for (i in 0...stmt.lhs.length) {
					if (stmt.lhs[i].id == "Ident" && stmt.lhs[i].name == "_")
						continue;
					var e = HaxeAst.removeCoalAndCheckType(typer.exprs.Expr.typeExpr(stmt.lhs[i], info));
					var fieldName = names[i];
					if (fieldName == null)
						fieldName = '_$i';
					var e2 = macro @:tmpset0 __tmp__.$fieldName;
					e2 = assignTranslate(types[i], typeof(stmt.lhs[i], info, false), e2, info);
					if (stmt.lhs[i].id == "IndexExpr") { // prevent invalid assign to null
						switch HaxeAst.escapeParens(e).expr {
							case ETernary(econd, eif, _):
								assigns.push(macro if ($econd) $eif = ${e2});
								continue;
							default:
						}
					}
					final toType = typeof(stmt.lhs[i], info, false);
					var normalAssign = true;
					if (stmt.lhs[i].id == "StarExpr" && !isPointer(toType)) {
						final x = e;
						final y = e2;
						normalAssign = false;
						// set underlying not the ref
						final underlyingType = getUnderlying(toType);
						switch underlyingType {
							case interfaceType(empty, methods):
								if (empty) {
									return (macro $x.__setData__($y)).expr;
								} else {
									final exprs:Array<Expr> = [
										for (field in methods) {
											final field = field.name;
											macro x.$field = $y?.$field;
										}
									];
									assigns.unshift(@:assign3 macro var x = $x);
									assigns = assigns.concat(exprs);
								}
							case sliceType(_), mapType(_, _):
								return (macro $x.__setData__($y)).expr;
							case structType(fields):
								final exprs:Array<Expr> = [
									for (field in fields) {
										final field = field.name;
										macro x.$field = $y?.$field;
									}
								];
								assigns.unshift(@:assign0 macro var x = $x);
								assigns = assigns.concat(exprs);
							default:
								normalAssign = true;
						}
					}
					if (normalAssign)
						assigns.push(macro $e = ${e2});
				}
				return EBlock([macro var __tmp__ = $func].concat(assigns));
			} else {
				throw info.panic() + "unknown type assign type: " + stmt;
			}
		case DEFINE: // x:= y
			if (stmt.lhs.length == stmt.rhs.length) {
				// normal vars
				final vars:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					var expr = typer.exprs.Expr.typeExpr(stmt.rhs[i], info);
					final name = typer.exprs.Ident.nameIdent(stmt.lhs[i].name, false, true, info);
					final toType = typeof(stmt.lhs[i], info, false);
					final fromType = typeof(stmt.rhs[i], info, false);
					expr = assignTranslate(fromType, toType, expr, info);
					var ct = toComplexType(toType, info);
					function f(ct:ComplexType):Bool {
						if (ct == null)
							return true;
						switch ct {
							case TPath(p):
								if (p.name == "InvalidType" && p.pack.length == 0 && name == "___f__") {
									return true;
								}
								if (p.params != null && p.params.length > 0) // p.params = p.params.map(_ -> TPType(TPath({name: "Unknown", pack: []})));
									return true;
							case TFunction(args, ret):
								for (arg in args)
									if (f(arg))
										return true;
								return f(ret);
							default:
						}
						return false;
					}
					if (f(ct))
						ct = null;
					if (ct != null)
						expr = macro($expr : $ct);
					vars.push({
						name: name,
						// type: ct,
						expr: expr,
					});
				}
				return HaxeAst.createTempVars(vars, true).expr;
			} else if (stmt.lhs.length > stmt.rhs.length && stmt.rhs.length == 1) {
				// define, destructure system
				var func = typer.exprs.Expr.typeExpr(stmt.rhs[0], info);
				var t = typeof(stmt.rhs[0], info, false);
				var names:Array<String> = [];
				var types:Array<ComplexType> = [];
				var data = castTranslate(stmt.rhs[0], func, info);
				func = data.expr;
				switch t {
					case tuple(_, _.get() => vars):
						for (i in 0...vars.length) {
							var v = vars[i];
							switch v {
								case _var(_, _.get() => type):
									names.push('_$i');
									types.push(toComplexType(type, info));
								default:
									names.push('_$i');
									types.push(toComplexType(v, info));
							}
						}
					default:
				}
				var defines:Array<Var> = [];
				for (i in 0...stmt.lhs.length) {
					if (stmt.lhs[i].id != "Ident")
						throw info.panic() + "define left side not an ident";
					var varName = typer.exprs.Ident.nameIdent(stmt.lhs[i].name, false, true, info);
					var fieldName = names[i];
					if (fieldName == null)
						fieldName = '_$i';
					defines.push({name: varName, expr: macro __tmp__.$fieldName, type: types[i]});
				}
				return EVars([{name: "__tmp__", expr: func}].concat(defines));
			} else {
				throw info.panic() + "unknown type assign define type: " + stmt;
			}
		default:
			throw info.panic() + "type assign tok not found: " + stmt.tok;
	}
} 