package typer.stmts;

function typeBadStmt(stmt:GoAst.BadStmt, info:Info):ExprDef {
	throw info.panic() + "BAD STATEMENT TYPED";
}
