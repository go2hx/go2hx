package typer.exprtypes;
/**
 * binary expr treated as a type and translated
 * @param expr 
 * @param info 
 * @return ComplexType
 */
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
