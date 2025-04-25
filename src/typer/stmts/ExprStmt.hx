package typer.stmts;

function typeExprStmt(stmt:GoAst.ExprStmt, info:Info):ExprDef {
	var expr = typer.exprs.Expr.typeExpr(stmt.x, info);
	return expr != null ? expr.expr : null;
} // written by Eliott issue #17
