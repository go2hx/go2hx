package typer.exprs;

function typeUnaryExpr(expr:GoAst.UnaryExpr, info:Info):MacroExpr {
	var x = typer.exprs.Expr.typeExpr(expr.x, info);
	final t = typeof(expr, info, false); // use expr type potentially instead of expr.x?
	final isNamed = isNamed(t);
	if (expr.op == AND) {
		return switch t {
			case refType(_.get() => elem):
				if (elem == invalidType) {
					return macro stdgo.Go.pointer($x);
				} else {
					final t = typeof(expr, info, false);
					final ct = toComplexType(t, info);
					final gt = toReflectType(t, info, [], false);
					return macro (stdgo.Go.setRef($x, $gt) : $ct);
				}
			case pointerType(_):
				return macro stdgo.Go.pointer($x);
			default:
				x;
		}
	} else {
		final op = typeUnOp(expr.op);
		if (op == null)
			return switch expr.op {
				case XOR: macro(-1 ^ $x);
				case ARROW: macro $x.__get__(); // $chan.get
				default: x;
			}
		switch expr.op {
			case SUB:
				switch x.expr {
					case ECheckType(e, t):
						switch e.expr {
							case EConst(c):
								switch c {
									case CInt(v):
										final v = toExpr(EConst(CInt('-$v')));
										return macro ($v : $t);
									case CFloat(f):
										final f = toExpr(EConst(CFloat('-$f')));
										return macro ($f : $t);
									case CString(s, kind): 
										final s = HaxeAst.makeString('-$s');
										return macro ($s : $t);
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
			e = typer.exprs.Expr.explicitConversion(getUnderlying(t), t, e, info);
		return e;
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
