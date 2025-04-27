package typer.stmts;

function typeExprStmt(stmt:GoAst.ExprStmt, info:Info):MacroExpr {
	return typer.exprs.Expr.typeExpr(stmt.x, info);
} // written by Eliott issue #17
