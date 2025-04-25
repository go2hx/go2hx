package typer.stmts;

function typeIncDecStmt(stmt:GoAst.IncDecStmt, info:Info):ExprDef {

	var x = typer.exprs.Expr.typeExpr(stmt.x, info);
	x = HaxeAst.escapeParens(x);
	var t = typeof(stmt.x, info, false);
	function setTok(x:Expr) {
		return switch stmt.tok {
			case INC: return (macro $x++);
			case DEC: return (macro $x--);
			default:
				throw info.panic() + "unknown IncDec token: " + stmt.tok;
				null;
		}
	}
	switch HaxeAst.escapeParens(x).expr {
		case ETernary(econd, eif, _):
			x = macro if ($econd) $eif;
		case EBinop(OpNullCoal, e1, e2):
			return (macro(@:typeIncDecStmt_escapeParens ${e1} != null ? ${setTok(e1)} : ${e2})).expr;
		default:
	}
	return setTok(x).expr;
}