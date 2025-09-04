package typer.stmts;
/**
 * if statement translate
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#If_statements
 */
function typeIfStmt(stmt:GoAst.IfStmt, info:Info):MacroExpr {
	// `else` field -> `elseStmt` field
	elseToElseStmtField(stmt);

	final init = Stmt.typeStmt(stmt.init, info);
	final cond = typer.exprs.Expr.typeExpr(stmt.cond, info);
	final body = Block.typeBlockStmt(stmt.body, info, false);
	final elseExpr = Stmt.typeStmt(stmt.elseStmt, info);

	final expr = macro if ($cond) $body else $elseExpr;
	return if (init != null) {
		macro {$init; $expr;};
	} else {
		expr;
	}
}

function elseToElseStmtField(stmt:GoAst.IfStmt):GoAst.IfStmt {
	final obj:haxe.DynamicAccess<Dynamic> = cast stmt;
	stmt.elseStmt = obj["else"];
	return stmt;
}
