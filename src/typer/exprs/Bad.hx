package typer.exprs;
/**
 * bad expr, the Go compiler could not figure out how to type this
 * @param info 
 * @return MacroExpr
 */
function typeBad(info:Info):MacroExpr {
	throw info.panic() + "BAD EXPRESSION TYPED";
}
