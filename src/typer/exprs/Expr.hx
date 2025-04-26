package typer.exprs;

function typeExpr(expr:Dynamic, info:Info):Expr {
	if (expr == null)
		return null;
	var def = switch expr.id {
		case "Ident": Ident.typeIdent(expr, info, false).expr;
		case "CallExpr": Call.typeCallExpr(expr, info).expr;
		case "BasicLit": BasicLit.typeBasicLit(expr, info);
		case "UnaryExpr": Unary.typeUnaryExpr(expr, info);
		case "SelectorExpr": Selector.typeSelectorExpr(expr, info);
		case "BinaryExpr": Binary.typeBinaryExpr(expr, info);
		case "FuncLit": FunctionLiteral.typeFuncLit(expr, info);
		case "CompositeLit": CompositeLiteral.typeCompositeLit(expr, info);
		case "SliceExpr": Slice.typeSliceExpr(expr, info);
		case "TypeAssertExpr": Assert.typeAssertExpr(expr, info);
		case "IndexExpr": Index.typeIndexExpr(expr, info);
		case "StarExpr": Star.typeStarExpr(expr, info);
		case "ParenExpr": Parenthesis.typeParenExpr(expr, info);
		case "Ellipsis": Ellipsis.typeEllipsis(expr, info);
		case "MapType": MapType.typeMapType(expr, info);
		case "InterfaceType": InterfaceType.typeInterfaceType(expr, info);
		case "IndexListExpr": IndexList.typeIndexListExpr(expr, info);
		case "BadExpr": Bad.typeBad(expr, info);
		default:
			trace("unknown expr id: " + expr.id);
			null;
			// (macro throw "unknown expr").expr;
	};
	if (def == null)
		throw info.panic() + "expr null: " + expr.id;
	return toExpr(def);
}

function typeOp(token:GoAst.Token):Binop {
	return switch token {
		case ADD: OpAdd;
		case SUB: OpSub;
		case MUL: OpMult;
		case QUO: OpDiv;
		case ASSIGN: OpAssign;
		case EQL: OpEq;
		case NEQ: OpNotEq;
		case GTR: OpGt;
		case GEQ: OpGte;
		case LSS: OpLt;
		case LEQ: OpLte;
		case AND: OpAnd;
		case OR: OpOr;
		case XOR: OpXor;
		case LAND: OpBoolAnd;
		case LOR: OpBoolOr;
		case SHL: OpShl;
		case SHR: OpShr;
		case REM: OpMod;

		case ADD_ASSIGN: OpAssignOp(OpAdd);
		case SUB_ASSIGN: OpAssignOp(OpSub);
		case MUL_ASSIGN: OpAssignOp(OpMult);
		case QUO_ASSIGN: OpAssignOp(OpDiv);
		case REM_ASSIGN: OpAssignOp(OpMod);
		case SHL_ASSIGN: OpAssignOp(OpShl);
		case SHR_ASSIGN: OpAssignOp(OpShr);
		case XOR_ASSIGN: OpAssignOp(OpXor);
		case OR_ASSIGN: OpAssignOp(OpOr);

		case AND_ASSIGN: OpAssignOp(OpAnd);
		case AND_NOT_ASSIGN: null;
		case RANGE: OpInterval;
		case ELLIPSIS: OpInterval;
		default:
			throw "unknown op token: " + token;
			OpInterval;
	}
}

// implicit conversion: checkType
function assignTranslate(fromType:GoType, toType:GoType, expr:Expr, info:Info, passCopy:Bool = true):Expr {
	if (goTypesEqual(fromType, toType, 0)) {
		if (passCopy) {
			return HaxeAst.passByCopy(toType, expr, info);
		}
		return expr;
	}
	fromType = cleanType(fromType);
	toType = cleanType(toType);
	var y = expr;

	if (fromType == null)
		return expr;

	switch fromType {
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					if (!isNamed(toType)) {
						return typer.exprs.Expr.defaultValue(toType, info);
					} else {
						return macro null;
					}
				default:
			}
		default:
	}

	if (passCopy && toType != null)
		y = HaxeAst.passByCopy(toType, y, info);

	if (isAnyInterface(toType) && !HaxeAst.isRestExpr(expr)) {
		y = typer.exprs.Expr.toAnyInterface(y, fromType, info);
	}
	// trace(fromType, toType);
	if (isAnyInterface(fromType) && !isInvalid(toType) && !isInterface(toType)) {
		switch expr.expr {
			case EBinop(_, _, _):
			default:
				final ct = toComplexType(toType, info);
				if (ct != null) {
					y = macro($y.value : $ct);
				}
		}
	}
	if (isStruct(fromType) && isStruct(toType)) {
		var equal = false;
		var fromType = fromType;
		var toType = toType;
		switch fromType {
			case refType(_.get() => elem):
				fromType = elem;
			default:
		}
		switch toType {
			case refType(_.get() => elem):
				toType = elem;
			default:
		}
		switch fromType {
			case named(path, _, _):
				switch toType {
					case named(path2, _, _):
						equal = path == path2;
					default:
				}
			default:
		}
		if (!equal)
			return HaxeAst.translateStruct(expr, fromType, toType, info);
	}
	// trace(toType);
	// trace(getUnderlying(getUnderlying(fromType)));
	// trace(fromType);
	// trace(isNamed(fromType), !isInterface(fromType), isInterface(toType), !isAnyInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		y = wrapperExpr(fromType, y, info);
		return y;
	}
	switch fromType {
		case tuple(_, _.get() => vars):
			switch toType {
				case tuple(_, _.get() => vars2):
					final fields:Array<ObjectField> = [
						for (i in 0...vars.length) {
							final fieldName = "_" + i;
							{field: fieldName, expr: assignTranslate(vars[i], vars2[i], macro __tmp__.$fieldName, info, false)};
						}
					];
					final obj = toExpr(EObjectDecl(fields));
					return macro({
						@:assignTranslate final __tmp__ = $y;
						$obj;
					});
				default:
			}
		default:
	}
	return y;
}

function toAnyInterface(x:Expr, t:GoType, info:Info, needWrapping:Bool = true):Expr {
	if (isRef(t))
		t = getElem(t);
	switch t {
		case named(_, _, _, _):
			if (!isInterface(t) && !isAnyInterface(t) && needWrapping) {
				x = wrapperExpr(t, x, info);
			}
		case basic(kind):
			switch kind {
				case untyped_nil_kind:
					return macro(null : stdgo.AnyInterface);
				default:
			}
		default:
	}
	return macro stdgo.Go.toInterface($x);
}

function toGoType(expr:Expr):Expr {
	switch expr.expr {
		case EConst(c):
			switch c {
				case CString(_, _):
					return macro($expr : stdgo.GoString);
				case CInt(_):
					return macro($expr : stdgo.GoInt);
				case CFloat(_):
					return macro($expr : stdgo.GoFloat64);
				default:
			}
		default:
	}
	return expr;
}

function wrapperExpr(t:GoType, y:Expr, info:Info):Expr {
	var self = y;
	var selfPointer = false;
	if (isPointer(t)) {
		selfPointer = true;
		t = getElem(t);
		self = macro $y.value;
	} else if (isRef(t)) {
		t = getElem(t);
	}
	switch t {
		case named(name, methods, type, alias, params):
			if (!alias && methods.length == 0 && !isStruct(type))
				return y;
			if (type == invalidType)
				return y;
			if (isInterface(type)) {
				return selfPointer ? self : y;
			}
			return macro stdgo.Go.asInterface($y);
		default:
	}
	return y;
}

// explicit conversion: assignTranslate
function checkType(e:Expr, ct:ComplexType, fromType:GoType, toType:GoType, info:Info):Expr {
	// trace(fromType, toType);
	if (e != null) {
		switch e.expr {
			case EBinop(_, _, _):
				e = macro($e);
			case EConst(c):
				switch c {
					case CIdent(i):
						if (i == "null") {
							var value = typer.exprs.Expr.defaultValue(toType, info);
							if (ct != null) {
								return macro($value : $ct);
							}
						}
					default:
				}
			default:
		}
	}
	if (isInterface(pointerUnwrap(fromType)) && !isInterface(pointerUnwrap(toType))) {
		if (isPointer(fromType) && !isPointer(toType)) {
			switch ct {
				case TPath(p):
					if (p.params != null) { // not an unsafe pointer
						switch p.params[0] {
							case TPType(t):
								ct = t;
							default:
						}
					}
				default:
			}
		}
		return macro(($e.__underlying__().value : Dynamic) : $ct);
	}
	if (isStruct(fromType) && isStruct(toType)) {
		return HaxeAst.translateStruct(e, fromType, toType, info);
	}

	if (isPointerStruct(fromType) && isPointerStruct(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				final get = checkType(macro $e.value, toComplexType(fromElem, info), fromElem, toElem, info);
				final set = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final child = checkType(macro p.ref, toComplexType(fromElem, info), toElem, fromElem, info);
				return macro {
					var p = new $p(() -> $get, null, false, $e);
					p.convert = v -> $set;
					p;
				};
			default:
				throw info.panic() + "struct type not tpath: " + ct;
		}
	}

	if (isPointer(fromType) && isPointer(toType)) {
		final ct = toComplexType(toType, info);
		final fromElem = getElem(fromType);
		final toElem = getElem(toType);
		switch ct {
			case TPath(p):
				var e = macro $e.value;
				final get = checkType(e, toComplexType(toElem, info), fromElem, toElem, info);
				final v = checkType(macro v, toComplexType(fromElem, info), toElem, fromElem, info);
				final set = checkType(macro $e = $v, toComplexType(toElem, info), fromElem, toElem, info);
				return macro new $p(() -> $get, v -> $set);
			default:
				throw info.panic() + "pointer not tpath: " + ct;
		}
	}
	if (isAnyInterface(toType))
		return e;
	// trace(fromType, toType, isNamed(fromType), isInterface(toType));
	if (isNamed(fromType) && !isInterface(fromType) && isInterface(toType) && !isAnyInterface(toType)) {
		return wrapperExpr(fromType, e, info);
	}
	// trace(fromType, toType);
	if ((isRef(fromType) || isPointer(fromType))
		&& !isAnyInterface(fromType)
		&& !isInterface(fromType)
		&& !isAnyInterface(toType)
		&& isInterface(toType)) {
		e = wrapperExpr(fromType, e, info);
	}
	switch getUnderlying(toType) {
		case basic(unsafepointer_kind):
			if (fromType != toType) {
				e = typer.exprs.Expr.toAnyInterface(e, toType, info);
			}
		case basic(uintptr_kind):
			if (fromType != toType) {
				e = macro(new stdgo.GoUIntptr($e) : $ct);
			}
		default:
			switch fromType {
				case basic(unsafepointer_kind):
					if (fromType != toType) {
						final rt = toReflectType(toType, info, [], false);
						e = macro $e.__convert__($rt);
					}
				default:
			}
	}

	return macro($e : $ct);
}

function translateEquals(x:Expr, y:Expr, typeX:GoType, typeY:GoType, op:Binop, info:Info):Expr {
	if (typeX == null || typeY == null)
		return toExpr(EBinop(op, x, y));
	switch typeX {
		case named(path, _, _, _):
			if (path == "reflect.Type") {
				var e = macro($x.string() : String) == ($y.string() : String);
				switch op {
					case OpNotEq:
						e = macro !($e);
					default:
				}
				return e;
			}
		default:
	}
	var nilExpr:Expr = null;
	var nilType:GoType = null;
	switch x.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = y;
						nilType = typeY;
					}
				default:
					final ct = toComplexType(typeX, info);
					if (ct != null) x = macro($x : $ct);
			}
		default:
	}
	switch y.expr {
		case EConst(c):
			switch c {
				case CIdent(s):
					if (s == "null") {
						nilExpr = x;
						nilType = typeX;
					}
				default:
					final ct = toComplexType(typeY, info);
					if (ct != null) y = macro($y : $ct);
			}
		default:
	}
	var value = nilExpr;
	if (value != null) {
		if (isNamed(nilType))
			nilType = getUnderlying(nilType);
		switch nilType {
			case refType(_):
				switch op {
					case OpEq:
						return macro({
							final value = $value;
							(value == null || (value : Dynamic).__nil__);
						});
					default:
						return macro({
							final value = $value;
							(value != null && ((value : Dynamic).__nil__ == null || (!(value : Dynamic).__nil__)));
						});
				}
			default:
		}
		if (isInterface(typeX) || isInterface(typeY)) {
			return toExpr(EBinop(op, x, y));
		}
		switch op {
			case OpEq:
				return macro $value == null;
			default:
				return macro $value != null;
		}
	}
	if (isInterface(typeX) || isInterface(typeY)) {
		if (isPointer(typeX))
			x = macro $x.value;
		if (isPointer(typeY))
			y = macro $y.value;
		if (!isAnyInterface(getElem(typeX)))
			x = typer.exprs.Expr.toAnyInterface(x, typeX, info);
		if (!isAnyInterface(getElem(typeY)))
			y = typer.exprs.Expr.toAnyInterface(y, typeY, info);
	}
	var t = getUnderlying(typeX);
	switch t {
		case structType(_), arrayType(_, _):
			return toExpr(EBinop(op, typer.exprs.Expr.toAnyInterface(x, typeX, info, false), typer.exprs.Expr.toAnyInterface(y, typeY, info, false)));
		case sliceType(_), refType(_):
			var run = true;
			if (isRef(t)) {
				switch getElem(t) {
					case sliceType(_):
						// pointer slice is redunant as slice acts already like a pointer
					default:
						run = false;
				}
			}
			if (run) {
				var e = macro($x == $y);
				switch op {
					case OpNotEq:
						return (macro !$e);
					default:
				}
			}
		default:
	}
	switch t {
		case arrayType(_, _):
			switch getUnderlying(typeY) {
				case arrayType(_, _):
					// set x and y to AnyInterface
					x = typer.exprs.Expr.toAnyInterface(x, typeX, info, false);
					y = typer.exprs.Expr.toAnyInterface(y, typeY, info, false);
					return toExpr(EBinop(op, x, y));
				default:
			}
		default:
	}
	return toExpr(EBinop(op, x, toExpr(EParenthesis(y))));
}

function typeRest(expr:Expr, t:GoType, info:Info):Expr {
	expr = toGoType(expr);
	t = getArrayElem(t);
	final ct = toComplexType(t, info);
	return macro...($expr : Array<$ct>);
}

function defaultValue(type:GoType, info:Info, strict:Bool = true):Expr {
	function ct():ComplexType {
		return toComplexType(type, info);
	}
	if (type == null)
		return macro @:unknown_default_value null;
	return switch type {
		case mapType(_.get() => key, _.get() => value):
			final keyComplexType = toComplexType(key, info);
			final valueComplexType = toComplexType(value, info);
			final keyUnderlying = getUnderlying(key);
			switch keyUnderlying {
				case structType(_):
					return macro(({
						final x:stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType> = null;
						// x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
						// x.__typer.exprs.Expr.defaultValue__ = () -> $typer.exprs.Expr.defaultValueExpr;
						// @:mergeBlock $b{exprs};
						cast x;
					} : stdgo.GoMap<$keyComplexType, $valueComplexType>));
				default:
					// trace(keyUnderlying);
			}
			macro(null : stdgo.GoMap<$keyComplexType, $valueComplexType>);
		case sliceType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Slice<$t>);
		case arrayType(_.get() => elem, len):
			final param = toComplexType(elem, info);
			final size = makeExpr(len);
			final cap = size;
			final p:TypePath = {name: "GoArray", params: [TPType(param)], pack: ["stdgo"]};
			final s = CompositeLiteral.createSlice(p, elem, size, cap, e -> e, info, null);
			s;
		case interfaceType(_):
			final ct = ct();
			macro(null : $ct);
		case chanType(_, _.get() => elem):
			final t = toComplexType(elem, info);
			var value = typer.exprs.Expr.defaultValue(elem, info);
			macro(null : stdgo.Chan<$t>);
		case pointerType(_.get() => elem):
			final t = toComplexType(elem, info);
			macro(null : stdgo.Pointer<$t>);
		case signature(_, _, _, _):
			macro null;
		case refType(_.get() => elem):
			final ct = toComplexType(elem, info);
			switch elem {
				case arrayType(_):
					final s = typer.exprs.Expr.defaultValue(elem, info, strict);
					macro $s.__setNil__();
				default:
					macro(null : stdgo.Ref<$ct>); // pointer can be nil
			}
		case named(path, _, underlying, alias, _):
			switch getUnderlying(underlying) {
				case chanType(_, _):
					final ct = ct();
					macro(null : $ct);
				case refType(_), pointerType(_), interfaceType(_), mapType(_, _), signature(_, _):
					final ct = ct();
					if (ct != null) {
						macro(null : $ct);
					} else {
						macro null;
					}
				case basic(_):
					final ct = ct();
					final e = typer.exprs.Expr.defaultValue(underlying, info);
					macro($e : $ct);
				case structType(fields):
					final ct = ct();
					final fs:Array<ObjectField> = [];
					var e = macro {};
					if (alias) {
						e = createNamedObjectDecl(fields, (_, type) -> typer.exprs.Expr.defaultValue(type, info), info);
					}
					macro($e : $ct);
				case sliceType(_.get() => elem):
					var t = namedTypePath(path, info);
					final ct = ct();
					macro(new $t(0, 0) : $ct);
				case arrayType(_.get() => elem, len):
					final t = namedTypePath(path, info);
					final elem = typer.exprs.Expr.defaultValue(elem, info);
					final len = makeExpr(len);
					macro new $t($len, $len, ...[for (i in 0...$len) $elem]);
				default:
					var t = namedTypePath(path, info);
					macro new $t();
			}
		case basic(kind):
			if (strict) {
				switch kind {
					case bool_kind: macro false;
					case int_kind: macro(0 : stdgo.GoInt);
					case int8_kind: macro(0 : stdgo.GoInt8);
					case int16_kind: macro(0 : stdgo.GoInt16);
					case int32_kind: macro(0 : stdgo.GoInt32);
					case int64_kind: macro(0 : stdgo.GoInt64);
					case string_kind: macro("" : stdgo.GoString);
					case uint_kind: macro(0 : stdgo.GoUInt);
					case uint8_kind: macro(0 : stdgo.GoUInt8);
					case uint16_kind: macro(0 : stdgo.GoUInt16);
					case uint32_kind: macro(0 : stdgo.GoUInt32);
					case uint64_kind: macro(0 : stdgo.GoUInt64);
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind: macro(0 : stdgo.GoFloat32);
					case float64_kind: macro(0 : stdgo.GoFloat64);
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					case untyped_bool_kind, untyped_rune_kind, untyped_string_kind, untyped_int_kind, untyped_float_kind, untyped_complex_kind:
						throw info.panic() + "untyped kind: " + kind;
					default: macro @:default_value null;
				}
			} else {
				switch kind {
					case bool_kind: macro false;
					case string_kind: macro "";
					case int_kind, int8_kind, int16_kind, int32_kind, int64_kind: macro 0;
					case uint_kind, uint8_kind, uint16_kind, uint32_kind, uint64_kind: macro 0;
					case uintptr_kind: macro new stdgo.GoUIntptr(0);
					case float32_kind, float64_kind: macro 0;
					case complex64_kind: macro new stdgo.GoComplex64(0, 0);
					case complex128_kind: macro new stdgo.GoComplex128(0, 0);
					default: macro @:default_value_kind
						null;
				}
			}
		case structType(fields):
			if (fields.length == 0)
				return macro {};
			var fs:Array<ObjectField> = [];
			for (field in fields) {
				if (field.optional)
					continue;
				fs.push({
					field: field.name,
					expr: typer.exprs.Expr.defaultValue(field.type.get(), info, true),
				});
			}
			toExpr(EObjectDecl(fs));
		case invalidType:
			macro @:invalid_type null;
		case tuple(_, _.get() => vars):
			toExpr(EObjectDecl([
				for (i in 0...vars.length) {
					{
						field: "_" + i,
						expr: typer.exprs.Expr.defaultValue(vars[i], info),
					}
				}
			]));
		case typeParam(name, _):
			// null;
			if (strict) {
				final t = TPath({name: className(name, info), pack: []});
				macro stdgo.Go.typer.exprs.Expr.defaultValue((cast(null) : $t));
			} else {
				null;
			}
		case _var(_, _.get() => type):
			defaultValue(type, info, strict);
		default:
			throw info.panic() + "unsupported default value type: " + type;
	}
}
