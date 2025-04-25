package typer.stmts;

function typeEmptyStmt(stmt:GoAst.EmptyStmt, info:Info):ExprDef {
	return (macro {}).expr;
}
