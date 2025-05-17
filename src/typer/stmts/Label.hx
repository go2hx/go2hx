package typer.stmts;

function typeLabeledStmt(stmt:GoAst.LabeledStmt, info:Info):MacroExpr {
	// analysis/goto is supposed to transforms gotos into a flattened control flow
	throw info.panic() + "BAD STATEMENT TYPED";
}
