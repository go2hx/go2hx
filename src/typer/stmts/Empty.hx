package typer.stmts;
/**
 * empty statement, results in nothing
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Empty_statements
 */
function typeEmptyStmt():MacroExpr {
	return macro {};
}
