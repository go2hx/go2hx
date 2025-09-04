package typer.exprtypes;
/**
 * selector expr treated as type and translated
 * @param expr 
 * @param info 
 * @return ComplexType
 */
function selectorType(expr:GoAst.SelectorExpr, info:Info):ComplexType {
	final t = typeof(expr, info, false);
	final ct = toComplexType(t, info);
	return ct;
}
