package typer.exprs;

function typeEllipsis(expr:GoAst.Ellipsis, info:Info):ExprDef {

	var e = typer.exprs.Expr.typeExpr(expr.elt, info);
	var t = typeof(expr.elt, info, false);
	var rest = typer.exprs.Expr.typeRest(e, t, info);
	return rest != null ? rest.expr : null;
} 