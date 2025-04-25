package typer.exprtypes;

function unaryType(expr:GoAst.UnaryExpr, info:Info):ComplexType {

	return typeExprType(expr.x, info);
} 