package typer.exprs;

function typeParenExpr(expr:GoAst.ParenExpr, info:Info):MacroExpr {
	final x = typer.exprs.Expr.typeExpr(expr.x, info);
	return if (x != null) {
		macro($x);
	} else {
		null;
	}
}
