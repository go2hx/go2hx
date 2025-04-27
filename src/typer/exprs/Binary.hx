package typer.exprs;
/**
 * A + B
 * @param expr 
 * @param info 
 * @param walk walk the binaryExpr to figure out operator precedence
 * @return ExprDef
 */
function typeBinaryExpr(expr:GoAst.BinaryExpr, info:Info, walk:Bool = true):Expr {
	var x = if (expr.x.id == "BinaryExpr") {
		typeBinaryExpr(expr.x, info, false);
	} else {
		typer.exprs.Expr.typeExpr(expr.x, info);
	}
	var y = if (expr.y.id == "BinaryExpr") {
		typeBinaryExpr(expr.y, info, false);
	} else {
		typer.exprs.Expr.typeExpr(expr.y, info);
	}

	var typeX = typeof(expr.x, info, false);
	var typeY = typeof(expr.y, info, false);

	switch expr.op { // operators that don't exist in haxe need to be handled here
		case AND_NOT: // &^ referenced from Tardisgo
			return typeBinaryExpr({
				x: expr.x,
				y: {
					id: "ParenExpr",
					x: {
						id: "BinaryExpr",
						x: expr.y,
						y: {
							id: "BasicLit",
							value: "-1",
							basic: true,
							token: GoAst.Token.INT,
							type: {
								id: "Basic",
								kind: GoAst.BasicKind.int32_kind
							}
						},
						op: GoAst.Token.XOR,
						type: expr.type,
						opPos: 0,
					},
				},
				op: GoAst.Token.AND,
				type: expr.type,
				opPos: 0,
			}, info, false);
		default:
	}
	var op = typer.exprs.Expr.typeOp(expr.op);
	y = typer.exprs.Expr.toGoType(y);
	x = typer.exprs.Expr.toGoType(x);
	// A == B or A != B
	switch op {
		case OpEq, OpNotEq: // op == and op !=
			return typer.exprs.Expr.translateEquals(x, y, typeX, typeY, op, info);
		default:
	}
	if ((isInvalid(typeX) || isInterface(typeX)) && op != OpBoolAnd && !isInvalid(typeY) && op == OpAssign) {
		x = typer.exprs.Expr.toAnyInterface(x, typeX, info);
		y = typer.exprs.Expr.toAnyInterface(y, typeY, info);
	}
	var e = toExpr(EBinop(op, x, y));
	e = typer.exprs.Expr.explicitConversion(getUnderlying(typeX), typeof(expr.type, info, false), e, info);
	if (walk)
		e = walkBinary(e);
	final ct = toComplexType(typeof(expr.type, info, false), info);
	if (ct != null)
		e = macro($e : $ct);
	return e;
} // (A op2 B) op C

function walkBinary(e:Expr):Expr {
	switch e.expr {
		case EBinop(op, e1, c): // (A op2 B) op C
			final p = HaxeAst.opPrecedence(op);
			e1 = walkBinary(e1);
			c = walkBinary(c);
			switch e1.expr {
				case EBinop(op2, a, b):
					final p2 = HaxeAst.opPrecedence(op2);
					if (p2 >= p) e1 = macro(${e1});
				default:
			}
			switch c.expr {
				case EBinop(op2, a, b):
					final p2 = HaxeAst.opPrecedence(op2);
					if (p2 >= p) c = macro(${c});
				default:
			}
			e = toExpr(EBinop(op, e1, c));
		default:
	}
	return e;
}
