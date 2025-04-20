package typer.exprs;

function typeMapType(expr:GoAst.MapType, info:Info):ExprDef {

	return (macro @:invalid_map_type null).expr;
}