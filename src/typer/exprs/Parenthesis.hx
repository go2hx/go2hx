package typer.exprs;

function typeParenExpr(expr:GoAst.ParenExpr, info:Info):ExprDef {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	return x != null ? EParenthesis(x) : null;
} 