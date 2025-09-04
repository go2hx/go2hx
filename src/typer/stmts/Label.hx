package typer.stmts;
/**
 * label statement translated
 * label may exist if a package that is an extern, uses a goto label
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Labeled_statements
 */
function typeLabeledStmt(stmt:GoAst.LabeledStmt, info:Info):MacroExpr {
	final name = HaxeAst.makeString(stmt.label.name);
	var stmtExpr = typer.stmts.Stmt.typeStmt(stmt.stmt, info);
	return macro @:label($name) $stmtExpr;
}
