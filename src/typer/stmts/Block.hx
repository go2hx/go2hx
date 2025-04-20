package typer.stmts;

function typeBlockStmt(stmt:GoAst.BlockStmt, info:Info, isFunc:Bool):ExprDef {

	if (stmt.list == null) {
		if (isFunc && info.returnTypes.length > 0) {
			final s = makeString("not implemented: " + info.funcName);
			return (macro {
				trace("funclit");
				throw $s;
			}).expr;
		}
		return (macro {}).expr;
	}
	return typeStmtList(stmt.list, info, isFunc);
}