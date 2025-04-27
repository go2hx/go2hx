package typer.stmts;

function typeIfStmt(stmt:GoAst.IfStmt, info:Info):ExprDef {
	var obj:haxe.DynamicAccess<Dynamic> = cast stmt; // new - set-up DynamicAccess
	final init = stmt.init == null ? null : typer.stmts.Stmt.typeStmt(stmt.init, info);
	stmt.elseStmt = obj.get("else"); // new - dynamically access the JSON element with the reserved name
	var ifStmt:Expr = toExpr(EIf(typer.exprs.Expr.typeExpr(stmt.cond, info), typer.stmts.Stmt.typeStmt(stmt.body, info), typer.stmts.Stmt.typeStmt(stmt.elseStmt, info)));
	if (init != null)
		return EBlock([init, ifStmt]);
	return ifStmt.expr;
}