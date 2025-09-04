package typer.exprs;
/**
 * parenthesis expr translated
 * @param expr 
 * @param info 
 * @return MacroExpr
 * @see https://go.dev/ref/spec#Operands
 */
function typeParenExpr(expr:GoAst.ParenExpr, info:Info):MacroExpr {
	final x = typer.exprs.Expr.typeExpr(expr.x, info);
	return if (x != null) {
		macro($x);
	} else {
		null;
	}
}
