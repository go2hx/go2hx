package typer.exprtypes;

function indexListType(expr:GoAst.IndexListExpr, info:Info):ComplexType {

	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			p.params = expr.indices.map(e -> TPType(typeExprType(e, info)));
		default:
	}
	return ct;
}