package typer.exprs;

function typeBad(expr:GoAst.BadExpr, info:Info):ExprDef {
	throw info.panic() + "BAD EXPRESSION TYPED";
}
