package typer.stmts;

function typeBadStmt(info:Info):MacroExpr {
	throw info.panic() + "BAD STATEMENT TYPED";
}
