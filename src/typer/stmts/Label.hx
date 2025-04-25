package typer.stmts;

function typeLabeledStmt(stmt:GoAst.LabeledStmt, info:Info):ExprDef {

	final name = HaxeAst.makeString(stmt.label.name);
	var stmtExpr = typer.stmts.Stmt.typeStmt(stmt.stmt, info);
	info.global.gotoSystem = true;
	return (macro @:label($name) $stmtExpr).expr;
}  