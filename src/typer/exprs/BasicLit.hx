package typer.exprs;

function typeBasicLit(expr:GoAst.BasicLit, info:Info):ExprDef {
	if (expr.basic) {
		var e = switch expr.token {
			case CHAR:
				final const = makeString(getRune(expr.value));
				final ct = TPath({name: "GoRune", pack: []});
				macro($const.code : $ct);
			case STRING:
				if (!expr.raw) {
					makeStringLit(decodeEscapeSequences(expr.value));
				} else {
					makeString(rawEscapeSequences(expr.value));
				}
			case FLOAT:
				final e = toExpr(EConst(CFloat(expr.value, "f64")));
				macro($e : stdgo.GoFloat64);
			case IMAG:
				final index = expr.value.indexOf("i");
				var imagFloat = expr.value.substr(0, index);
				var realFloat = expr.value.substr(index + 1);
				final imag = toExpr(EConst(CFloat(imagFloat, "f64")));
				final real = toExpr(EConst(CFloat(realFloat, "f64")));
				macro new stdgo.GoComplex128($real, $imag);
			case INT:
				var e = toExpr(EConst(CInt(expr.value, "i32")));
				e;
			default:
				throw info.panic() + "unknown token: " + expr.token;
		}
		final t = typeof(expr.type, info, false);
		final ct = toComplexType(t, info);
		switch getUnderlying(t) {
			case basic(uintptr_kind): // uintptr
				e = macro(new stdgo.GoUIntptr($e) : $ct);
			case invalidType:
			default:
				e = macro($e : $ct);
		}
		return e.expr;
	}
	return if (expr.info & GoAst.BasicInfo.isFloat != 0) {
		ECheckType(toExpr(EConst(CFloat(expr.value))), TPath({name: "GoFloat64", pack: ["stdgo"]}));
	} else if (expr.info & GoAst.BasicInfo.isInteger != 0) {
		final t = typeof(expr.type, info, false);
		final underlyingType = getUnderlying(t);
		final kind = switch underlyingType {
			case basic(int64_kind):
				"i64";
			case basic(uint_kind), basic(uint32_kind), basic(uint8_kind), basic(uint16_kind):
				"u32";
			case basic(uint64_kind):
				"i64";
			default:
				"i32";
		}
		final e = toExpr(switch underlyingType {
			case basic(uint64_kind):
				final value = haxe.UInt64Helper.parseString(expr.value);
				final s = @:privateAccess (value : haxe.Int64).toString();
				EConst(CInt(s, "i64"));
			case basic(int64_kind):
				EConst(CInt(expr.value, "i64"));
			case basic(uint32_kind), basic(uint_kind):
				final value = haxe.Int64Helper.parseString(expr.value);
				EConst(CInt(Std.string(value.low), kind));
			default:
				EConst(CInt(expr.value));
		});
		final ct = toComplexType(t, info);
		final t = typeof(expr.type, info, false);
		switch getUnderlying(t) {
			case basic(uintptr_kind): // uintptr
				return (macro(new stdgo.GoUIntptr($e) : $ct)).expr;
			default:
		}
		// casting
		(macro($e : $ct)).expr;
	} else if (expr.info & GoAst.BasicInfo.isComplex != 0) {
		final index = expr.value.indexOf("i");
		var imagFloat = expr.value.substr(0, index);
		var realFloat = expr.value.substr(index + 1);
		final imag = toExpr(EConst(CFloat(imagFloat, "f64")));
		final real = toExpr(EConst(CFloat(realFloat, "f64")));
		(macro new stdgo.GoComplex128($real, $imag)).expr;
	} else {
		trace(expr);
		(macro null).expr;
	}
}