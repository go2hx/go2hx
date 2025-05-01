package typer.exprtypes;

function selectorType(expr:GoAst.SelectorExpr, info:Info):ComplexType {
	final t = typeof(expr, info, false);
	final ct = toComplexType(t, info);
	return ct;
}
