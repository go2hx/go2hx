package typer.exprs;

function typeBad(info:Info):MacroExpr {
	throw info.panic() + "BAD EXPRESSION TYPED";
}
