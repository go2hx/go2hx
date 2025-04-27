package typer.stmts;

function typeIfStmt(stmt:GoAst.IfStmt, info:Info):ExprDef {
	// `else` field -> `elseStmt` field
	elseToElseStmtField(stmt);

	final init = Stmt.typeStmt(stmt.init, info);
	final cond = typer.exprs.Expr.typeExpr(stmt.cond, info);
	final body = Block.typeBlockStmt(stmt.body, info, false);
	final elseExpr = Stmt.typeStmt(stmt.elseStmt, info);

	final expr = macro if ($cond) $body else $elseExpr;
	if (init != null)
		return (macro {$init; $expr;}).expr;
	return expr.expr;
}

function elseToElseStmtField(stmt:GoAst.IfStmt) {
	final obj:haxe.DynamicAccess<Dynamic> = cast stmt;
	stmt.elseStmt = obj["else"];
	return stmt;
}
