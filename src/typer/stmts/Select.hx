package typer.stmts;
/**
 * select statement translate
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Select_statements
 */
function typeSelectStmt(stmt:GoAst.SelectStmt, info:Info):MacroExpr {
	var defaultBlock:Expr = null;
	var list:Array<Expr> = [];
	if (stmt.body.list == null)
		return macro @:null_select {};
	var needsReturn = true;
	final resets:Array<Expr> = [];
	final defines:Array<Expr> = [];
	var defineCount = 0;
	function ifs(i:Int):MacroExpr {
		final obj:GoAst.CommClause = stmt.body.list[i];
		var varName = "";
		if (obj != null && obj.comm != null && obj.comm.id == "AssignStmt" && obj.comm.lhs[0].name != "_") {
			varName = typer.exprs.Ident.nameIdent(obj.comm.lhs[0].name, false, true, info);
		}
		var block = (obj == null || obj.body == null) ? macro {} : typer.stmts.Block.typeStmtList(obj.body, info, false);
		var cond:Expr = null;
		if (needsReturn && !HaxeAst.exprWillReturn(block))
			needsReturn = false;
		if (obj == null || obj.comm == null) { // default true
			defaultBlock = block;
		} else {
			var comm:Dynamic = obj.comm;
			if (comm.id == "AssignStmt") {
				if (comm.lhs.length > 1) { // smart get
					var ok = typer.exprs.Expr.typeExpr(comm.lhs[1], info);
					list.push(macro {
						${typer.stmts.Stmt.typeStmt(comm, info)};
						if ($ok) {
							$block;
							return;
						}
					});
					return ifs(i + 1);
				}
				comm = comm.rhs[0];
			} else if (comm.id == "ExprStmt") {
				comm = comm.x;
			}
			if (comm.id == "UnaryExpr") { // get
				var expr:GoAst.UnaryExpr = comm;
				var e = typer.exprs.Expr.typeExpr(expr.x, info);
				final chanName = "__c__" + defineCount++;
				defines.push(macro var $chanName = null);
				cond = macro {
					if ($i{chanName} == null) {
						$i{chanName} = $e;
					}
					$i{chanName} != null
					&& $i{chanName}.__isGet__(true);
				};
				resets.push(macro $i{chanName}.__reset__());
				e = macro $i{chanName}.__get__();
				if (varName != "") {
					if (obj.comm.tok == GoAst.Token.DEFINE) {
						e = macro var $varName = $e;
					} else {
						// varName = ""
						e = typer.exprs.Expr.explicitConversion(typeof(obj.comm.rhs[0], info, false), typeof(obj.comm.lhs[0], info, false), e, info, false);
						if (obj.comm.tok == GoAst.Token.ASSIGN && varName != "")
							e = macro $i{varName} = $e;
					}
				}
				block = macro $b{[e, block]};
			} else { // send
				var stmt:GoAst.SendStmt = comm;
				var value = typer.exprs.Expr.typeExpr(stmt.value, info);
				var e = typer.exprs.Expr.typeExpr(stmt.chan, info);
				final chanName = "__c__" + defineCount++;
				defines.push(macro var $chanName = $e);
				cond = macro $e != null && $i{chanName}.__isSend__(true);
				resets.push(macro $i{chanName}.__reset__());

				var t = typeof(stmt.chan, info, false);
				final valueType = typeof(stmt.value, info, false);
				value = typer.exprs.Expr.explicitConversion(valueType, getElem(t), value, info);

				e = macro $i{chanName}.__send__($value);
				block = macro $b{[e, block]};
			}
		}
		if (cond == null)
			defaultBlock = block;
		block = macro $b{[macro __select__ = false, block]};
		if (i + 1 >= stmt.body.list.length) {
			if (cond == null)
				return block;
			return if (defaultBlock == null) {
				macro if ($cond)
					$block;
			} else {
				defaultBlock = macro $b{[macro __select__ = false, defaultBlock]};
				macro if ($cond)
					$block
				else
					$defaultBlock;
			}
		}
		final next = ifs(i + 1);
		if (cond == null)
			return next;
		return macro if ($cond) $block else $next;
	}
	var e = ifs(0);
	e = macro {
		var __select__ = true;
		@:mergeBlock $b{defines};
		while (__select__) {
			$e;
			@:define("(sys || hxnodejs)") Sys.sleep(0.01);
			go._internal.internal.Async.tick();
		}
		@:mergeBlock $b{resets};
	};
	if (needsReturn) {
		e = macro $b{[e, typer.stmts.Return.typeReturnStmt({results: [], returnPos: 0}, info)]};
	}
	return e;
}
