package typer.stmts;
/**
 * create a block statement from BlockStmt, process the stmt.list
 * @param stmt 
 * @param info 
 * @param isFunc 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Block
 */
function typeBlockStmt(stmt:GoAst.BlockStmt, info:Info, isFunc:Bool):MacroExpr {
	if (stmt.list == null && (stmt.lbrace == -1 || info.returnTypes.length > 0)) {
		if (isFunc) {
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
/**
 * process the stmt.list and return a Haxe Expr
 * @param list 
 * @param info 
 * @param isFunc 
 * @return Expr EBlock + pos
 */
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
	// add file location comments
	if (list != null) { // file://./If.hx#10
		final stmts = [for (stmt in list) typer.stmts.Stmt.typeStmt(stmt, info)];
		var isWindows = Sys.systemName().toLowerCase() == "windows";
		for (i in 0...stmts.length) {
			var location = list[i].location;
			if (location == null || location == "")
				continue;
			if (isWindows) {
				location = haxe.io.Path.normalize(location);
				location = "/" + location;
			}
			final commentString = 'file://$location';
			stmts[i] = macro @:comment(${HaxeAst.makeString(commentString)}) ${stmts[i]};
		}
		exprs = exprs.concat(stmts);
	}
	// defer system
	if (list != null && info.global.deferBool && isFunc) {
		final ret = typer.stmts.Return.typeReturnStmt({returnPos: 0, results: []}, info);
		final e = ret;
		var catchBlock:Array<Expr> = [macro var exe:Dynamic = __exception__.native];
		catchBlock.push(macro if ((exe is haxe.ValueException)) exe = exe.value);
		catchBlock.push(macro if ((exe is go.AnyInterface.AnyInterfaceData) == false) {
			if (__exception__.message == "__return__")
				throw "__return__";
			exe = new go.AnyInterface((__exception__.message : go.GoString), new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.GoType.basic(17)));
		});
		catchBlock.push(macro go.Go.recover_exception = exe);
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
							if (!(exe is go.AnyInterface.AnyInterfaceData)) {
								if (__exception__.message == "__return__")
									throw "__return__";
								exe = new go.AnyInterface((__exception__.message : go.GoString), new go._internal.internal.reflect.Reflect._Type(go._internal.internal.reflect.GoType.basic(17)));
							};
							go.Go.recover_exception = exe;
							f();
						}
					}
					f();
				});
				exprs.push(macro if (go.Go.recover_exception != null) {
					final e = go.Go.recover_exception;
					go.Go.recover_exception = null;
					@:throw1 throw e;
				});
				exprs.push(last);
				catchBlock.push(macro if (go.Go.recover_exception != null) {
					final e = go.Go.recover_exception;
					go.Go.recover_exception = null;
					//@:throw2 throw __exception__.details();
					@:throw3 throw e;
				});
				catchBlock.push(last);
			// catchBlock = catchBlock.concat(exprs);
			default:
				catchBlock = catchBlock.concat([
					macro go.Go.recover_exception != null ? {
						final e = go.Go.recover_exception;
						go.Go.recover_exception = null;
						throw e;
					} : $e
				]);
		}
		exprs.unshift(macro var __deferstack__:Array<{ran:Bool, f:Void->Void}> = []);
		// exprs.push(typeDeferReturn(info, true));
		exprs.push(ret);
		// recover
		final tryBool = info.global.tryBool;
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
	// return list of exprs making an EBlock -> EBlock + pos = Expr
	return toExpr(EBlock(exprs));
}
