package typer.stmts;
// label may exist if a package that is an extern, uses a goto label
function typeLabeledStmt(stmt:GoAst.LabeledStmt, info:Info):MacroExpr {
	final name = HaxeAst.makeString(stmt.label.name);
	var stmtExpr = typer.stmts.Stmt.typeStmt(stmt.stmt, info);
	return macro @:label($name) $stmtExpr;
}
