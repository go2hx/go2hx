package typer.stmts;

function typeDeferStmt(stmt:GoAst.DeferStmt, info:Info):MacroExpr {
	info.global.deferBool = true;
	var exprs:Array<Expr> = [];
	var call = typer.exprs.Call.typeCallExpr(stmt.call, info);
	switch call.expr {
		case ECall(e, params):
			exprs.push(macro final __f__ = $e);
			for (i in 0...params.length) {
				var name = "_a" + i;
				final e = macro var $name = ${params[i]};
				exprs.push(e);
				params[i] = macro $i{name};
			}
			call = macro __f__($a{params});
		default:
	}
	var e = macro __deferstack__.unshift({ran: false, f: () -> $call});
	return macro $b{exprs.concat([e])};
}
