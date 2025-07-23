package typer.exprs; function typeCompositeLit(expr:GoAst.CompositeLit, info:Info):MacroExpr {

	var setToSliceType = false;
	var sliceType:GoType = null;
	if (expr.type == null) {
		// catch #NULL_TYPE from goto
		// trace(expr.type,expr.exprType.id);
		if (expr.exprType.id == "ArrayType") {
			setToSliceType = true;
			switch expr.exprType.elt.name {
				case "rune":
					sliceType = GoType.basic(int32_kind);
				case "int":
					sliceType = GoType.basic(int_kind);
				case "string":
					sliceType = GoType.basic(string_kind);
				default:
					// throw "unknown expr.exprType.elt.name: " + expr.exprType.elt.name;
			}
		} else {
			return macro @:invalid_compositelit_null null;
		}
	}
	var type = typeof(expr.type, info, false);
	if (setToSliceType || type == null) {
		type = GoType.sliceType({get: () -> sliceType});
	}
	// var ct = typeExprType(expr.type, info);
	var ct = toComplexType(type, info);
	final e = compositeLit(type, ct, expr, info);
	// trace(printer.printExpr({expr: e, pos: null}));
	return e;
} function compositeLit(type:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):MacroExpr {

	final keyValueBool:Bool = hasKeyValueExpr(expr.elts);
	final underlying = getUnderlying(type);
	if (isInvalid(underlying)) {
		return macro @:invalid_compositelit null;
	}
	switch removeTypeParam(underlying) {
		case interfaceType(_, _):
			// trace(underlying);
			// trace(type);
			return macro @:compositeLit_interface null;
		case refType(_.get() => elem):
			final e = compositeLit(elem, HaxeAst.complexTypeElem(ct), expr, info);
			return e;
		case pointerType(_.get() => elem):
			final e = compositeLit(elem, HaxeAst.complexTypeElem(ct), expr, info);
			return macro stdgo.Go.pointer($e);
		case structType(fields):
			var objectFields:Array<ObjectField> = [];
			var fields = fields.copy();
			var isAlias = false;
			switch type {
				case named(_, _, _, alias, _):
					if (alias) {
						isAlias = true;
					}
				case structType(_):
					isAlias = true;
				default:
			}
			if (!isAlias) {
				switch ct {
					case TPath(p):
						if (p.pack.length == 0 && StringTools.startsWith(p.name, "T__struct_")) isAlias = true;
					default:
				}
			}
			if (keyValueBool) {
				final fields = fields.copy();
				for (i in 0...expr.elts.length) {
					final elt:GoAst.KeyValueExpr = expr.elts[i];
					final key = formatHaxeFieldName(elt.key.name, info);
					for (field in fields) {
						if (field.name == key) {
							final value = typer.exprs.Expr.explicitConversion(typeof(elt.value, info, false), field.type.get(),
								typer.exprs.Expr.typeExpr(elt.value, info), info);
							objectFields.push({
								field: field.name,
								expr: value,
							});
							if (isAlias)
								fields.remove(field);
							break;
						}
					}
				}
				if (isAlias) {
					for (field in fields) {
						objectFields.push({
							field: field.name,
							expr: typer.exprs.Expr.defaultValue(field.type.get(), info, true),
						});
					}
				}
				var e = toExpr(EObjectDecl(objectFields));
				return macro($e : $ct);
			} else {
				final args = [
					for (i in 0...expr.elts.length)
						typer.exprs.Expr.explicitConversion(typeof(expr.elts[i], info, false), fields[i].type.get(),
							typer.exprs.Expr.typeExpr(expr.elts[i], info), info)
				];
				if (isAlias && args.length < fields.length) {
					for (i in args.length...fields.length) {
						args.push(typer.exprs.Expr.defaultValue(fields[i].type.get(), info, true));
					}
				}
				if (isAlias) {
					var objectFields:Array<ObjectField> = [];
					for (i in 0...fields.length) {
						objectFields.push({
							field: fields[i].name,
							expr: args[i],
						});
					}
					var e = toExpr(EObjectDecl(objectFields));
					return macro($e : $ct);
				} else {
					final p = getTypePath(ct, info);
					// generic named type needs fields filled in
					switch type {
						case named(_, _, _, _, _.get() => params):
							// guard against extern package named types without params such as reflect.Value
							if (params != null && params.length > 0) {
								for (i in args.length...fields.length) {
									args.push(typer.exprs.Expr.defaultValue(fields[i].type.get(), info, true));
								}
							}
						default:
					}
					final e = macro new $p($a{args});
					return macro($e : $ct);
				}
			}
		case sliceType(_.get() => elem):
			return compositeLitList(elem, keyValueBool, -1, underlying, toComplexType(type, info), expr, info);
		case arrayType(_.get() => elem, len):
			return compositeLitList(elem, keyValueBool, len, underlying, toComplexType(type, info), expr, info);
		case mapType(_.get() => var keyType, _.get() => valueType):
			return compositeLitMapList(keyType, valueType, underlying, toComplexType(type, info), expr, info);
		default:
			throw info.panic() + "not supported CompositeLit type: " + underlying;
	}
} function compositeLitList(elem:GoType, keyValueBool:Bool, len:Int, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):MacroExpr {

	final p = getTypePath(toComplexType(underlying, info), info);
	var value = typer.exprs.Expr.defaultValue(elem, info, false);
	if (keyValueBool) {
		var exprs:Array<{expr:Expr, index:Int}> = [];
		function run(elt:GoAst.Expr, index:Int) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null)
					return {index: index, expr: typer.exprs.CompositeLiteral.compositeLit(elem, HaxeAst.complexTypeElem(ct), elt, info)};
			}
			return {index: index, expr: typer.exprs.Expr.typeExpr(elt, info)};
		}
		var index:Int = 0;
		for (elt in expr.elts) {
			if (elt.id == "KeyValueExpr") { // array expansion syntax uses KeyValue, value being a string word representation of the number
				var elt:GoAst.KeyValueExpr = elt;
				final index = Std.parseInt(elt.key.value);
				var expr = run(elt.value, index);
				expr.expr = typer.exprs.Expr.explicitConversion(typeof(elt.value, info, false), elem, expr.expr, info);
				exprs.push(expr);
			} else {
				var expr = run(elt, index);
				expr.expr = typer.exprs.Expr.explicitConversion(typeof(elt, info, false), elem, expr.expr, info);
				exprs.push(expr);
			}
			index++;
		}
		var length = makeExpr(len);
		var sets:Array<Expr> = [];
		var max = 0;
		for (i in 0...exprs.length) {
			var index = exprs[i].index;
			if (index > max)
				max = index;
			var value = exprs[i].expr;
			sets.push(macro s[${makeExpr(index)}] = $value);
		}
		sets.push(macro s);
		if (len == -1) {
			length = makeExpr(max + 1);
			// final e = macro new $p($length, $length, ...([for (i in 0...$length) $value]));
			final e = createSlice(p, elem, length, macro 0, e -> e, info, null);
			sets.unshift(macro var s = $e);
			return macro $b{sets};
		} else {
			return toExpr(EBlock([macro var s:$ct = new $p($length, $length, ...[for (i in 0...$length) $value])].concat(sets)));
		}
	} else {
		var exprs:Array<Expr> = [];
		for (elt in expr.elts) {
			if (elt.id == "CompositeLit") {
				if (elt.type == null) {
					var e = typer.exprs.CompositeLiteral.compositeLit(elem, toComplexType(elem, info), elt, info);
					e = typer.exprs.Expr.explicitConversion(typeof(elt, info, false), elem, e, info);
					exprs.push(e);
					continue;
				}
			}
			var e = typer.exprs.Expr.typeExpr(elt, info);
			e = typer.exprs.Expr.explicitConversion(typeof(elt, info, false), elem, e, info);
			exprs.push(e);
		}
		final len = makeExpr(len != -1 ? len : exprs.length);
		final e = createSlice(p, elem, len, len, e -> e, info, exprs);
		// return e;
		return macro($e : $ct);
	}
} private function compositeLitMapList(keyType:GoType, valueType:GoType, underlying:GoType, ct:ComplexType, expr:GoAst.CompositeLit, info:Info):MacroExpr {

	var params:Array<Expr> = [];
	final keys:Array<Expr> = [];
	final values:Array<Expr> = [];
	function run(elt:GoAst.Expr) {
		if (elt.id == "CompositeLit") {
			switch getUnderlying(valueType) {
				case interfaceType(empty, _):
					if (empty) {
						return typer.exprs.Expr.typeExpr(elt, info);
					}
				case basic(_):
					return typer.exprs.Expr.typeExpr(elt, info);
				default:
			}
			final t = typeof(elt, info, false);
			final ct = toComplexType(t, info);
			return compositeLit(t, ct, elt, info);
		}
		return typer.exprs.Expr.typeExpr(elt, info);
	}
	final exprs:Array<Expr> = [];
	for (elt in expr.elts) {
		final eltKeyType = typeof(elt.key, info, false);
		final eltValueType = typeof(elt.value, info, false);
		final key = typer.exprs.Expr.explicitConversion(eltKeyType, keyType, run(elt.key), info, false);
		final value = typer.exprs.Expr.explicitConversion(eltValueType, valueType, run(elt.value), info, false);
		exprs.push(macro x.set($key, $value));
	}
	final keyComplexType = toComplexType(keyType, info);
	final valueComplexType = toComplexType(valueType, info);
	return createMap(underlying, keyComplexType, valueComplexType, exprs, info, ct);
} function createMap(t:GoType, keyComplexType:ComplexType, valueComplexType:ComplexType, exprs:Array<Expr>, info:Info, ct:ComplexType):MacroExpr {

	var k:GoType = null;
	var v:GoType = null;
	switch getUnderlying(t) {
		case mapType(_.get() => var keyType, _.get() => var valueType):
			k = keyType;
			v = valueType;
		default:
			throw info.panic() + "underlying t invalid type createMap";
	}
	final keyT = toReflectType(k, info, [], true);
	final defaultValueExpr = typer.exprs.Expr.defaultValue(v, info, true);
	var isObjectMap = false;
	var isUIntptrMap = false;
	function createRefPointerMap(name:String) {
		final keyElemComplexType = keyComplexType;
		final p:TypePath = {
			name: "GoMap",
			sub: name,
			pack: ["stdgo"],
			params: [TPType(keyComplexType), TPType(valueComplexType)]
		};
		return macro({
			final x = new $p();
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
	}
	final uk = getUnderlying(k);
	final p:TypePath = {name: "GoMap", pack: ["stdgo"], params: [TPType(keyComplexType), TPType(valueComplexType)]};
	switch uk {
		case interfaceType(empty, _):
			if (!empty) {
				isObjectMap = true;
			} else {
				return macro({
					final x = new stdgo.GoMap.GoAnyInterfaceMap<$valueComplexType>();
					x.__defaultValue__ = () -> $defaultValueExpr;
					@:mergeBlock $b{exprs};
					cast x;
				} : stdgo.GoMap<$keyComplexType, $valueComplexType>);
			}
		case structType(_), arrayType(_):
			isObjectMap = true;
		case pointerType(_):
			return createRefPointerMap("GoPointerMap");
		case refType(_):
			return createRefPointerMap("GoRefMap");
		case basic(kind):
			switch kind {
				case bool_kind, untyped_bool_kind: p.sub = "GoBoolMap";
				case int_kind, int8_kind, int16_kind, int32_kind, uint_kind, uint8_kind, uint16_kind, uint32_kind: p.sub = "GoIntMap";
				case int64_kind, untyped_int_kind: p.sub = "GoInt64Map";
				case uint64_kind: p.sub = "GoUInt64Map";
				case float32_kind, float64_kind: p.sub = "GoFloat64Map";
				case complex64_kind, complex128_kind, untyped_complex_kind: p.sub = "GoComplex128Map";
				case string_kind, untyped_string_kind: p.sub = "GoStringMap";
				case uintptr_kind: isUIntptrMap = true;
				// case unsafepointer_kind: KindType.unsafePointer;
				case unsafepointer_kind: isObjectMap = true;
				default: throw info.panic() + 'Unknown BasicKind: $kind';
			}
		case chanType(_, _):
			return createRefPointerMap("GoChanMap");
		default:
	}
	if (p.sub != null) {
		p.params = [p.params[1]];
	}
	if (isObjectMap) {
		return macro(({
			final x = new stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType>();
			x.t = new stdgo._internal.internal.reflect.Reflect._Type($keyT);
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	if (isUIntptrMap) {
		return macro(({
			final x = new stdgo.GoMap.GoUIntptrMap<$valueComplexType>();
			x.__defaultValue__ = () -> $defaultValueExpr;
			@:mergeBlock $b{exprs};
			cast x;
		} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
	}
	return macro(({
		final x = new $p();
		x.__defaultValue__ = () -> $defaultValueExpr;
		@:mergeBlock $b{exprs};
		x;
	} : stdgo.GoMap<$keyComplexType, $valueComplexType>) : $ct);
} private function hasKeyValueExpr(elts:Array<GoAst.Expr>) {

	for (e in elts) {
		if (e.id == "KeyValueExpr")
			return true;
	}
	return false;
} function createSlice(p:TypePath, elem:GoType, size:Expr, cap:Expr, returnExpr:Expr->Expr, info:Info, sets:Array<Expr>):MacroExpr {

	var param = toComplexType(elem, info);
	var value = typer.exprs.Expr.defaultValue(elem, info);
	if (value == null)
		value = macro stdgo.Go.expectedValue();
	if (size == null)
		return returnExpr(macro new $p(0, 0));

	function createArgs(len:Expr, cap:Expr, sets:Array<Expr>):Array<Expr> {
		if (sets == null)
			return [len, cap];
		return [len, cap, macro...$a{sets}];
	}
	switch getUnderlying(elem) {
		case structType(_), arrayType(_):
			if (sets == null) {
				sets = [
					macro for (i in 0...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()) $value
				];
			} else {
				return macro new $p($size, $cap, ...$a{sets}.concat([
					for (i in ${makeExpr(sets.length)}...($size > $cap ? $size : $cap : stdgo.GoInt).toBasic()
				) $value]));
			}
			return returnExpr(macro new $p($a{createArgs(size, cap, sets)}));
		case basic(kind):
			switch kind {
				case int8_kind, int16_kind, int32_kind, uint8_kind, uint16_kind, uint32_kind, float32_kind, float64_kind, untyped_float_kind,
					untyped_int_kind, int_kind, uint_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber32__());
				case int64_kind, uint64_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setNumber64__());
				case string_kind:
					return returnExpr(macro new $p($a{createArgs(size, cap, sets)}).__setString__());
				default:
			}
		default:
	}
	return macro new $p($a{createArgs(size, cap, sets)});
}
