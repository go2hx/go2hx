package typer.exprs;

function typeUnaryExpr(expr:GoAst.UnaryExpr, info:Info):ExprDef {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	final t = typeof(expr, info, false); // use expr type potentially instead of expr.x?
	final isNamed = isNamed(t);
	if (expr.op == AND) {
		return switch t {
			case refType(_.get() => elem):
				if (elem == invalidType) {
					return (macro stdgo.Go.pointer($x)).expr;
				} else {
					final t = typeof(expr, info, false);
					final ct = toComplexType(t, info);
					return (macro(stdgo.Go.setRef($x) : $ct)).expr;
				}
			case pointerType(_):
				return (macro stdgo.Go.pointer($x)).expr;
			default:
				x.expr;
		}
	} else {
		final op = typeUnOp(expr.op);
		if (op == null)
			return switch expr.op {
				case XOR: (macro(-1 ^ $x)).expr;
				case ARROW: (macro $x.__get__()).expr; // $chan.get
				default: x.expr;
			}
		switch expr.op {
			case SUB:
				switch x.expr {
					case ECheckType(e, t):
						switch e.expr {
							case EConst(c):
								switch c {
									case CInt(v): return ECheckType(toExpr(EConst(CInt('-$v'))), t);
									case CFloat(f): return ECheckType(toExpr(EConst(CFloat('-$f'))), t);
									case CString(s, kind): return ECheckType(HaxeAst.makeString('-$s'), t);
									default:
								}
							default:
						}
					default:
				}
			default:
		}
		var e = toExpr(EUnop(op, false, x));
		if (isNamed)
			e = typer.exprs.Expr.assignTranslate(getUnderlying(t), t, e, info);
		return e.expr;
	}
}

private function typeUnOp(token:GoAst.Token):Unop {
	return switch token {
		case NOT: OpNot;
		case SUB: OpNeg;
		case TIDLE: OpNeg;
		case ARROW: null;
		case XOR: null;
		case ADD: null;
		default:
			throw "unknown unop token: " + token;
			OpNegBits;
	}
}