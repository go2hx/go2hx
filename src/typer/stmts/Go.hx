package typer.stmts;

function typeGoStmt(stmt:GoAst.GoStmt, info:Info):MacroExpr {
	var call = typer.exprs.Expr.typeExpr(stmt.call, info);
	return macro stdgo.Go.routine(() -> $call);
}
