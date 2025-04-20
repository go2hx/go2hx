package typer.stmts;

function typeForStmt(stmt:GoAst.ForStmt, info:Info):ExprDef {

	final init = stmt.init == null ? null : typer.stmts.Stmt.typeStmt(stmt.init, info);
	var cond = stmt.cond == null ? toExpr(EConst(CIdent("true"))) : typer.exprs.Expr.typeExpr(stmt.cond, info);
	var body = toExpr(typer.stmts.Block.typeBlockStmt(stmt.body, info, false));
	if (body.expr == null)
		body = macro {};
	if (cond.expr == null || body.expr == null) {
		trace("for stmt error: " + cond.expr + " body: " + body.expr);
		return null;
	}
	var def:Expr = null;
	if (stmt.post != null) {
		var post = typer.stmts.Stmt.typeStmt(stmt.post, info);
		if (post == null) {
			trace("for stmt error post: " + stmt.post);
			return null;
		}
		body = cforPostContinue(post, body);
		def = macro while ($cond) {
			@:mergeBlock $body;
			$post;
		};
	} else {
		def = macro while ($cond)
			$body;
	}
	if (init != null) {
		def = macro {
			$init;
			$def;
		};
	}
	return def.expr;
}