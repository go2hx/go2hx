package typer.stmts;

function typeSendStmt(stmt:GoAst.SendStmt, info:Info):ExprDef {
	var chan = typer.exprs.Expr.typeExpr(stmt.chan, info);
	var t = typeof(stmt.chan, info, false);
	var value = typer.exprs.Expr.typeExpr(stmt.value, info);
	final valueType = typeof(stmt.value, info, false);
	value = typer.exprs.Expr.explicitConversion(valueType, getElem(t), value, info);
	return (macro $chan.__send__($value)).expr;
}
