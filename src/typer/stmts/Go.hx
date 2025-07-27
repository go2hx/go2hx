package typer.stmts;

function typeGoStmt(stmt:GoAst.GoStmt, info:Info):MacroExpr {
	var call = typer.exprs.Expr.typeExpr(stmt.call, info);
	switch call.expr {
		case ECall(e, args):
			var vars:Array<Expr> = [];
			for (i in 0...args.length) {
				final name = "__tmp__" + i;
				vars[i] = macro final $name = ${args[i]};
			}
			for (i in 0...args.length) {
				args[i] = macro $i{"__tmp__" + i};
			}
			return macro {
				@:mergeBlock $b{vars};
				go.Go.routine(() -> $e($a{args}));
			};
		default:
			return macro go.Go.routine(() -> $call);
	}
}
