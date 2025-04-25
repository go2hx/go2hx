package typer.exprtypes;

function binaryType(expr:GoAst.BinaryExpr, info:Info):ComplexType {
	function rec(e:GoAst.Expr):Array<ComplexType> {
		switch e.id {
			case "BinaryExpr":
				return rec(e.x).concat(rec(e.y));
			default:
				return [typeExprType(e, info)];
		}
	}
	final params = rec(expr);
	return TFunction(params, TPath({name: "Void", pack: []}));
}