package typer.stmts;

function typeBlockStmt(stmt:GoAst.BlockStmt, info:Info, isFunc:Bool):MacroExpr {
	if (stmt.list == null) {
		if (isFunc && info.returnTypes.length > 0) {
			final s = HaxeAst.makeString("not implemented: " + info.funcName);
			return macro {
				trace("funclit");
				throw $s;
			};
		}
		return macro {};
	}
	return typeStmtList(stmt.list, info, isFunc);
}

function typeStmtList(list:Array<typer.GoAst.Stmt>, info:Info, isFunc:Bool):Expr {
	if (isFunc) {
		info.localIdents = info.localIdents.copy();
		info.renameIdents = info.renameIdents.copy();
		info.classNames = info.classNames.copy();
	} else {
		info = info.copy();
	}
	var exprs:Array<Expr> = [];
	// add named return values
	if (isFunc) {
		if (info.returnNamed) {
			var vars:Array<Var> = [];
			for (i in 0...info.returnNames.length) {
				vars.push({
					name: info.returnNames[i],
					// type: info.returnComplexTypes[i],
					expr: typer.exprs.Expr.defaultValue(info.returnTypes[i], info),
				});
			}
			exprs.unshift(toExpr(EVars(vars)));
		}
	}
	if (list != null) { // file://./If.hx#10
		final stmts = [for (stmt in list) typer.stmts.Stmt.typeStmt(stmt, info)];
		for (i in 0...stmts.length) {
			final location = list[i].location;
			if (location == null || location == "")
				continue;
			final commentString = 'file://$location';
			stmts[i] = macro @:comment(${HaxeAst.makeString(commentString)}) ${stmts[i]};
		}
		exprs = exprs.concat(stmts);
	}
	// trace(list != null, info.global.deferBool, isFunc);
	if (list != null && info.global.deferBool && isFunc) { // defer system
		final ret = typer.stmts.Return.typeReturnStmt({returnPos: 0, results: []}, info);
		final e = ret;
		var catchBlock:Array<Expr> = [macro var exe:Dynamic = __exception__.native];
		catchBlock.push(macro if ((exe is haxe.ValueException)) exe = exe.value);
		catchBlock.push(macro if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
			if (__exception__.message == "__return__")
				throw "__return__";
			exe = stdgo.Go.toInterface(__exception__.message);
		});
		catchBlock.push(macro stdgo.Go.recover_exception = exe);
		switch e.expr {
			case EBlock(exprs):
				final last = exprs.pop();
				// trace(printer.printExpr(macro $b{exprs}));
				catchBlock.push(macro {
					function f() {
						try {
							$b{exprs.copy()};
						} catch (__exception__2) {
							var exe:Dynamic = __exception__2.native;
							if ((exe is haxe.ValueException))
								exe = exe.value;
							if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
								if (__exception__.message == "__return__")
									throw "__return__";
								exe = stdgo.Go.toInterface(__exception__.message);
							};
							stdgo.Go.recover_exception = exe;
							f();
						}
					}
					f();
				});
				exprs.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				exprs.push(last);
				catchBlock.push(macro if (stdgo.Go.recover_exception != null) {
					final e = stdgo.Go.recover_exception;
					stdgo.Go.recover_exception = null;
					throw e;
				});
				catchBlock.push(last);
			// catchBlock = catchBlock.concat(exprs);
			default:
				catchBlock = catchBlock.concat([
					macro stdgo.Go.recover_exception != null ? {
						final e = stdgo.Go.recover_exception;
						stdgo.Go.recover_exception = null;
						throw e;
					} : $e
				]);
		}
		exprs.unshift(macro var __deferstack__:Array<{ran:Bool, f:Void->Void}> = []);
		// exprs.push(typeDeferReturn(info, true));
		exprs.push(ret);
		// recover
		final tryBool = true;
		if (tryBool) {
			final pos = 1 + (info.returnNamed ? 1 : 0);
			final trydef = macro try $b{exprs.slice(pos)} catch (__exception__) {
				$b{catchBlock};
			};
			// don't include recover and defer stack
			exprs = exprs.slice(0, pos);
			exprs.push(trydef);
		}
	}
	return toExpr(EBlock(exprs));
}
