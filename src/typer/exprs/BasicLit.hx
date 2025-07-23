package typer.exprs;

/**
 * BasicLiteral, for example:
 * "hello world"
 * 0
 * 0.2
 * 0i10
 * @param expr 
 * @param info 
 * @return Expr
 */
function typeBasicLit(expr:GoAst.BasicLit, info:Info):MacroExpr {
	if (expr.basic) {
		var e = switch expr.token {
			case CHAR:
				final const = HaxeAst.makeString(getRune(expr.value));
				final ct = TPath({name: "GoRune", pack: []});
				macro($const.code : $ct);
			case STRING:
				if (!expr.raw) {
					makeStringLit(decodeEscapeSequences(expr.value));
				} else {
					HaxeAst.makeString(rawEscapeSequences(expr.value));
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
				var e = toExpr(EConst(CInt(expr.value, "i64")));
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
		return e;
	}
	return if (expr.info & GoAst.BasicInfo.isFloat != 0) {
		final f = toExpr(EConst(CFloat(expr.value)));
		macro($f : stdgo.GoFloat64);
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
				return macro(new stdgo.GoUIntptr($e) : $ct);
			default:
		}
		// casting
		macro($e : $ct);
	} else if (expr.info & GoAst.BasicInfo.isComplex != 0) {
		final index = expr.value.indexOf("i");
		var realFloat = expr.value.substr(0, index);
		var imagFloat = expr.value.substr(index + 1);
		final imag = toExpr(EConst(CFloat(imagFloat, "f64")));
		final real = toExpr(EConst(CFloat(realFloat, "f64")));
		macro new stdgo.GoComplex128($real, $imag);
	} else {
		trace(expr);
		macro null;
	}
}

private function decodeEscapeSequences(value:UnicodeString):Array<{?s:String, ?code:Int}> {
	var backslash = false;
	var i = 0;
	final values:Array<{?s:String, ?code:Int}> = [];
	var buff = new StringBuf();
	function escapeHex(value:Int) {
		if (buff.length > 0)
			values.push({s: buff.toString()});
		values.push({code: value});
		buff = new StringBuf();
	}
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					// var hex = value.substr(i + 1, 2);
					var high = StringTools.fastCodeAt(value, i + 1);
					var low = StringTools.fastCodeAt(value, i + 2);
					high = (high & 0xF) + ((high & 0x40) >> 6) * 9;
					low = (low & 0xF) + ((low & 0x40) >> 6) * 9;
					final num = ((high << 4) | low) & 0xFF;
					escapeHex(num);
					i += 2;
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					escapeHex(num);
					i += 3;
				case '"'.code:
					buff.add('"');
				case 'a'.code:
					buff.add("\\x07");
				case 'b'.code:
					buff.add("\\x08");
				case 'e'.code:
					buff.add("\\x1B");
				case 'f'.code:
					buff.add("\\x0C");
				case 'v'.code:
					buff.add("\\x0B");
				case 'u'.code:
					buff.add("\\u" + value.substr(i + 1, 4));
					i += 4;
				case 'U'.code:
					buff.add("\\u{" + value.substr(i + 1, 8) + "}");
					i += 8;
				default:
					buff.add("\\" + String.fromCharCode(code));
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}
	if (backslash)
		buff.add("\\");
	if (buff.length > 0)
		values.push({s: buff.toString()});
	return values;
}

private function makeStringLit(values:Array<{?s:String, ?code:Int}>):MacroExpr {
	var e:Expr = macro("" : stdgo.GoString);
	final exprs:Array<Expr> = [];
	for (value in values) {
		final expr = if (value.s != null) {
			HaxeAst.makeString(value.s);
		} else {
			final code = value.code;
			makeExpr(code);
		}
		exprs.push(expr);
	}
	if (exprs.length == 1) {
		switch exprs[0].expr {
			case EConst(CString(_)):
				return macro(${exprs[0]} : stdgo.GoString);
			default:
		}
	}
	return macro stdgo.Go.str($a{exprs});
}

private function getRune(value:String):String {
	var backslash = false;
	var i = 0;
	var buff = new StringBuf();
	while (i < value.length) {
		if (backslash) {
			final code = value.charCodeAt(i);
			switch code {
				case 'x'.code:
					return "\\u00" + value.substr(i + 1, 2);
				case '0'.code, '1'.code, '2'.code, '3'.code, '4'.code, '5'.code, '6'.code, '7'.code, '8'.code, '9'.code:
					var num = 0;
					for (j in 0...3) {
						final numCode = Std.parseInt(value.charAt(i + j));
						final expo = Std.int(Math.pow(8, 2 - j));
						num += numCode * expo;
					}
					var s:String = '$num';
					while (s.length < 3)
						s = '0$s';
					return '\\u0$s';
				case '"'.code:
					return '"';
				case 'a'.code:
					return "\\x07";
				case 'b'.code:
					return "\\u0008";
				case 'e'.code:
					return "\\x1B";
				case 'f'.code:
					return "\\x0C";
				case 'v'.code:
					return "\\x0B";
				case 'u'.code:
					return "\\u" + value.substr(i + 1, 4);
				case 'U'.code:
					return "\\u{" + value.substr(i + 1, 8) + "}";
				case 't'.code, 'r'.code, 'n'.code, "\\".code:
					return "\\" + String.fromCharCode(code);
				default:
					return value.substr(1);
			}
			backslash = false;
			i++;
			continue;
		}
		final code = value.charCodeAt(i);
		switch code {
			case "\\".code:
				backslash = true;
			// case "$".code:
			//	buff.add("$$");
			default:
				try {
					buff.addChar(code);
				} catch (_) {
					buff.addChar(97);
				}
		}
		i++;
	}

	if (backslash)
		return "\\";
	return value;
}

function rawEscapeSequences(value:String):String {
	var backslash = false;
	var i = 0;
	while (i < value.length) {
		if (backslash) {
			if (value.charCodeAt(i) != "\\".code) {
				value = value.substr(0, i) + "\\" + value.substr(i);
				i++;
			} else {
				value = value.substr(0, i) + "\\" + value.substr(i);
			}
			backslash = false;
			i++;
			continue;
		}
		if (value.charCodeAt(i) == "\\".code)
			backslash = true;
		i++;
	}
	if (backslash)
		value += "\\";
	return value;
}
