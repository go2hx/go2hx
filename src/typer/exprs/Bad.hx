package typer.exprs;

function typeBad(expr:GoAst.BadExpr, info:Info):MacroExpr {
	throw info.panic() + "BAD EXPRESSION TYPED";
}
