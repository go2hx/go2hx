package typer.exprtypes;
/**
 * index treated as type and translated
 * @param expr 
 * @param info 
 * @return ComplexType
 */
function indexType(expr:GoAst.IndexExpr, info:Info):ComplexType {
	final ct = typeExprType(expr.x, info);
	switch ct {
		case TPath(p):
			final index = typeExprType(expr.index, info);
			p.params = [TPType(index)];
		default:
	}
	return ct;
}
