package typer.exprtypes;
/**
 * unary expr x field type, translated
 * @param expr 
 * @param info 
 * @return ComplexType
 */
function unaryType(expr:GoAst.UnaryExpr, info:Info):ComplexType {
	return typeExprType(expr.x, info);
}
