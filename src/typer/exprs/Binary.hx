package typer.exprs;

function typeBinaryExpr(expr:GoAst.BinaryExpr, info:Info, walk:Bool = true):ExprDef {
	var x = if (expr.x.id == "BinaryExpr") {
		toExpr(typeBinaryExpr(expr.x, info, false));
	} else {
		typer.exprs.Expr.typeExpr(expr.x, info);
	}
	var y = if (expr.y.id == "BinaryExpr") {
		toExpr(typeBinaryExpr(expr.y, info, false));
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
	var op = typeOp(expr.op);
	y = toGoType(y);
	x = toGoType(x);
	// A == B or A != B
	switch op {
		case OpEq, OpNotEq: // op == and op !=
			return translateEquals(x, y, typeX, typeY, op, info).expr;
		default:
	}
	if ((isInvalid(typeX) || isInterface(typeX)) && op != OpBoolAnd && !isInvalid(typeY) && op == OpAssign) {
		x = toAnyInterface(x, typeX, info);
		y = toAnyInterface(y, typeY, info);
	}
	var e = toExpr(EBinop(op, x, y));
	e = assignTranslate(getUnderlying(typeX), typeof(expr.type, info, false), e, info);
	if (walk)
		e = walkBinary(e);
	final ct = toComplexType(typeof(expr.type, info, false), info);
	if (ct != null)
		e = macro($e : $ct);
	return e.expr;
} // (A op2 B) op C