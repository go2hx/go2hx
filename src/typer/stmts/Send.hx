package typer.stmts;
/**
 * send statement translate, for example in Go:
 * chan <- sent_data
 * @param stmt 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Send_statements
 */
function typeSendStmt(stmt:GoAst.SendStmt, info:Info):MacroExpr {
	var chan = typer.exprs.Expr.typeExpr(stmt.chan, info);
	var t = typeof(stmt.chan, info, false);

	var value = typer.exprs.Expr.typeExpr(stmt.value, info);
	final valueType = typeof(stmt.value, info, false);
	value = typer.exprs.Expr.explicitConversion(valueType, getElem(t), value, info);

	return macro $chan.__send__($value);
}
