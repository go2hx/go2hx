package typer.stmts;
/**
 * create a bad statement, a statement that the Go compiler did not know how to process
 * @param info 
 * @return MacroExpr
 */
function typeBadStmt(info:Info):MacroExpr {
	throw info.panic() + "BAD STATEMENT TYPED";
}
