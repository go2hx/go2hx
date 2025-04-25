package typer.stmts;

function typeGoStmt(stmt:GoAst.GoStmt, info:Info):ExprDef {
	var call = typer.exprs.Expr.typeExpr(stmt.call, info);
	return (macro stdgo.Go.routine(() -> $call)).expr;
}
