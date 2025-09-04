package typer.stmts;
/**
 * statement to a Go expr
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Expressions
 */
function typeExprStmt(stmt:GoAst.ExprStmt, info:Info):MacroExpr {
	return typer.exprs.Expr.typeExpr(stmt.x, info);
} // written by Eliott issue #17
