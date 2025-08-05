package typer.exprs;

function typeCallExpr(expr:GoAst.CallExpr, info:Info):MacroExpr {
	var args:Array<Expr> = [];
	var tupleArg:Expr = null;
	var forceType = false;
	function returnExpr(e:Expr):MacroExpr {
		switch e.expr {
			case ECall(expr, params):
				switch expr.expr {
					case EMeta(s, e):
						if (s.name == ":define") {
							switch e.expr {
								case ECall(_, params): // Go.typeFunction(...)
									switch params[0].expr {
										case ECall(e3, _): // Go.typeFunction(...())
											expr = e3;
										default: // Go.typeFunction(...)
											expr = params[0];
									}
								default:
							}
						}
					default:
				}
				e.expr = ECall(expr, params);
			default:
		}
		if (tupleArg != null) {
			var fvar = macro {};
			switch e.expr {
				case ECall(f, args):
					fvar = macro var __f__ = $f;
					e = macro __f__($a{args});
				default:
			}
			switch tupleArg.expr {
				case EBlock(exprs):
					exprs.unshift(fvar);
					exprs.unshift(macro @:tupleArg var __tmp__ = $tupleArg);
				default:
					e = macro({
						@:tupleArg var __tmp__ = $tupleArg;
						$fvar;
						var __tmp__ = $tupleArg;
						$e;
					});
			}
		}
		if (forceType) {
			final t = typeof(expr, info, false);
			if (t == invalidType)
				return e;
			final ct = toComplexType(t, info);
			e = macro($e : $ct);
		}
		return e;
	}
	function genArgs(translateType:Bool, pos:Int = 0, ?elem:GoType) {
		final exprArgs = expr.args.slice(pos);
		args = [for (arg in exprArgs) typer.exprs.Expr.typeExpr(arg, info)];
		if (args.length == 1) {
			final t = typeof(exprArgs[0], info, false);
			if (t != null) {
				switch t {
					case tuple(len, _):
						if (len > 1) {
							tupleArg = args[0];
							final tuples = getReturnTupleType(t);
							for (i in 0...tuples.length) {
								final fieldName = "_" + i;
								final type = toComplexType(tuples[i], info);
								args[i] = macro(__tmp__.$fieldName : $type);
							}
						}
					default:
				}
			}
		}
		var type = typeof(expr.fun, info, false);
		// ellipsis
		if (expr.ellipsis != 0) {
			var last = args.pop();
			var t = typeof(exprArgs[exprArgs.length - 1], info, false);
			if (elem != null)
				t = GoType.sliceType({get: () -> elem});
			last = Ellipsis.typeRest(last, t, info);
			args.push(last);
		}
		if (translateType && type != null) {
			if (isInvalid(type)) { // set standard library expected call arguments
				if (expr.fun.id == "SelectorExpr") {
					var fun:GoAst.SelectorExpr = expr.fun;
					if (fun.x.id == "Ident") {
						switch fun.x.name {
							case "unsafe":
								args[0] = typer.exprs.Expr.toAnyInterface(args[0], invalidType, info);
						}
					}
				}
				return;
			}
			// trace("ABC");
			// final t = typeof(expr.calle,info,false);
			var skip = 0;
			if (expr.typeArgs != null) {
				forceType = true;
				// TODO: generic funcs
				/*skip = expr.typeArgs.length;
					expr.typeArgs.reverse();
					for (typeArg in expr.typeArgs) {
						final typeOfTypeArg = typeof(typeArg, info, false);
						final value = typer.exprs.Expr.defaultValue(typeOfTypeArg, info);
						args.unshift(value);
					}
					forceType = true; */
			}
			var sig = getSignature(type);
			if (sig != null) {
				switch sig {
					case signature(variadic, _.get() => params, _, _, _):
						// params:Array<GoType>
						// args:Array<Expr>
						// exprArgs:Array<GoAst.Expr>
						// args:Array<Expr>
						for (i in skip...args.length + (expr.ellipsis > 0 ? -1 : 0)) {
							var fromType = getVar(typeof(exprArgs[i - skip], info, false));
							var toType = switch args[i].expr {
								case EConst(CIdent("null")):
									getVar(params[i - skip]);
								default:
									getOriginVar(fromType, params[i - skip ]);
							}
							final oldToType = getVar(params[i - skip]);
							if (!isAnyInterface(oldToType) && isAnyInterface(toType))
								toType = oldToType;
							//if (expr.typeArgs != null && expr.typeArgs.length > 0)
							//	trace(typeof(expr.typeArgs[0], info, false));
							if (variadic && params.length <= i + 1 - skip) {
								toType = getElem(params[params.length - 1]);
							}
							//trace(isRef(fromType), isRef(toType), expr.typeArgs != null);
							if (isRef(fromType) && isRef(toType) && expr.typeArgs != null && expr.typeArgs.length > i - skip) {
								//trace("here");
								final t = typeof(expr.typeArgs[0], info, false);
								if (goTypesEqual(getElem(fromType), t, 5)) {
									final elem = getElem(toType);
									toType = pointerType({get: () -> elem});
								}
							}
							// trace(new gen.Printer().printExpr(args[i]));
							// trace(fromType, toType, tupleArg != null);
							if (tupleArg != null) {
								switch getVar(typeof(exprArgs[0 - skip], info, false)) {
									case tuple(_, _.get() => types):
										fromType = getVar(types[i - skip]);
									default:
								}
							}
							args[i] = typer.exprs.Expr.explicitConversion(fromType, toType, args[i], info);
							switch exprArgs[i - skip]?.id {
								case "Ident":
									final typeArgs = exprArgs[i - skip]?.typeArgs;
									if (typeArgs != null && typeArgs.length > 0) {
										switch fromType {
											case signature(_, _.get() => params, _.get() => results, _, _.get() => typeParams):
												args[i] = Index.typeFunctionLiteral([], params, results, args[i], info);
											default:
										}
									}
								default:
							}
						}
					default:
				}
			}
		}
	}
	final isFunction = GoAst.isFunction(expr.fun, info);
	if (!isFunction) {
		final ct = typeExprType(expr.fun, info);
		var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
		final fromType = typeof(expr.args[0], info, false);
		final toType = typeof(expr.fun, info, false);
		if (typer.exprtypes.ExprType.isAnyInterface(toType) && !HaxeAst.isRestExpr(e)) {
			return typer.exprs.Expr.toAnyInterface(e, fromType, info);
		}
		return returnExpr(typer.exprs.Expr.implicitConversion(e, ct, fromType, toType, info));
	}
	switch expr.fun.id {
		case "IndexExpr", "IndexListExpr":
			var t = typeof(expr.fun.x, info, false);
			t = getUnderlyingRefNamed(t);
			switch t {
				case signature(_, _, _, _, _): // generic param
					final expr = typer.exprs.Expr.typeExpr(expr.fun.x, info);
					genArgs(true);
					return macro $expr($a{args});
				default:
			}
		case "ArrayType":
			return Assert.typeAssertExpr({
				type: expr.fun,
				x: expr.args[0],
				lparen: 0,
				rparen: 0,
			}, info);
		case "SelectorExpr":
			expr.fun.x = GoAst.escapeParensRaw(expr.fun.x);
			final selKind = typer.exprs.Selector.selectorKind(expr.fun);
			final selType = typeof(expr.fun, info, false);
			switch selType {
				case signature(_, _, _, _):
					final recv = typeof(expr.fun.recv, info, false);
					switch recv {
						case _var(_, _.get() => type):
							final xType = typeof(expr.fun.x, info, false);
							final xTypePointer = isPointer(xType);
						default:
					}
				default:
			}
			switch expr.fun.sel.name {
				case "String":
					// expr.fun.sel.name = "ToString"; // titled in order to export
					if (typeof(expr.type, info, false).match(basic(string_kind))) {
						var e = typer.exprs.Expr.typeExpr(expr.fun, info);
						genArgs(true);
						return returnExpr(macro($e($a{args}) : go.GoString));
					}
				case "Exit":
					if (expr.fun.x.id == "Ident" && expr.fun.x.name == "os") {
						genArgs(true);
						return (macro @:define("(sys || hxnodejs)") Sys.exit($a{args}));
					}
				case "Sizeof", "Offsetof", "Alignof":
					if (expr.fun.x.id == "Ident" && expr.fun.x.name == "unsafe") {
						final args = [for (i in 0...expr.args.length) {
							final e = typer.exprs.Expr.typeExpr(expr.args[i], info);
							final t = typer.exprtypes.ExprType.typeof(expr.args[i], info, false);
							// function toAnyInterface(x:Expr, t:GoType, info:Info, needWrapping:Bool = true):MacroExpr {
							typer.exprs.Expr.toAnyInterface(e, t, info);
						}];
						var e = typer.exprs.Expr.typeExpr(expr.fun, info);
						return returnExpr(macro $e($a{args}));
					}
			}
		case "FuncLit":
			final expr = FunctionLiteral.typeFuncLit(expr.fun, info);
			genArgs(true);
			return returnExpr(macro({
				var a = $expr;
				a($a{args});
			}));
		case "Ident":
			if (!info.renameIdents.exists(expr.fun.name) && info.localIdents.indexOf(untitle(expr.fun.name)) == -1) {
				final funcName = expr.fun.name;
				switch funcName {
					case "panic":
						genArgs(false);
						return returnExpr(macro throw ${typer.exprs.Expr.toAnyInterface(args[0], typeof(expr.args[0], info, false), info)});
					case "recover":
						return returnExpr(macro({
							final r = go.Go.recover_exception;
							go.Go.recover_exception = null;
							r;
						}));
					case "min", "max":
						genArgs(false);
						return (macro go.Go.$funcName($a{args}));
					case "append":
						final t = typeof(expr.args[0], info, false);
						var eType = t;
						eType = getElem(eType);
						genArgs(false, eType);
						var e = args.shift();
						if (args.length == 0)
							return returnExpr(e);

						for (i in 0...args.length) {
							final aType = typeof(expr.args[i + 1], info, false);
							args[i] = typer.exprs.Expr.explicitConversion(aType, eType, args[i], info);
						}
						var ct = toComplexType(typeof(expr, info, false), info);
						var e = macro $e.__append__($a{args});
						if (!HaxeAst.isInvalidComplexType(ct))
							e = macro($e : $ct);
						return returnExpr(e);
					case "copy":
						genArgs(false);
						// return returnExpr(macro go.Go.copySlice($a{args}));
						return returnExpr(macro ${args[0]}.__copyTo__($a{args.slice(1)}));
					case "delete":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var key = typer.exprs.Expr.typeExpr(expr.args[1], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						switch removeTypeParam(t) {
							case mapType(_.get() => var keyType, _):
								key = typer.exprs.Expr.explicitConversion(typeof(expr.args[1], info, false), keyType, key, info, false);
							case invalidType:
							case tuple(_, _.get() => vars):
								return (macro {
									final e = $e;
									e._0.__remove__(e._1);
								});
							default:
								throw info.panic() + "first arg of delete builtin function not of type map: " + t;
						}
						return returnExpr(macro if ($e != null) $e.__remove__($key));
					case "clear":
						genArgs(false);
						final t = getUnderlying(typeof(expr.args[0], info, false));
						final s = args[0];
						switch t {
							case sliceType(_.get() => elem):
								final value = typer.exprs.Expr.defaultValue(elem, info, false);
								return (macro {
									for (i in 0...$s.length) {
										$s[i] = $value;
									}
								});
							default:
								return returnExpr(macro $s.__clear__());
						}
					case "print":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro go.Go.print(""));
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro go.Go.print($a{args}));
					case "println":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro go.Go.println(""));
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro go.Go.println($a{args}));
					case "complex":
						genArgs(false);
						return returnExpr(macro new go.GoComplex128($a{args}));
					case "real":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = typer.exprs.Expr.implicitConversion(e, ct, t, toType, info);
						return returnExpr(macro $e.real);
					case "imag":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = typer.exprs.Expr.implicitConversion(e, ct, t, toType, info);
						return returnExpr(macro $e.imag);
					case "close":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro if ($e != null) $e.__close__());
					case "cap":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro $e.capacity);
					case "len":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						return returnExpr(macro($e.length));
					case "new": // create default value put into pointer
						var t = typeExprType(expr.args[0], info);
						switch t {
							case TPath(_), TFunction(_, _), TAnonymous(_):
								var t = typeof(expr.args[0], info, false);
								var value = typer.exprs.Expr.defaultValue(t, info);
								if (!isRefValue(t)) {
									value = macro go.Go.pointer($value);
								} else {
									final ct = toComplexType(t, info);
									final gt = toReflectType(refType({get: () -> t}), info, [], false);
									value = macro(go.Go.setRef($value, $gt) : $ct);
								}
								return returnExpr(value);
							default:
						}
					case "make":
						var type = typeof(expr.args[0], info, false);
						genArgs(false, 1);
						var size = args[0];
						var cap = args[1];

						var setCap:Bool = cap != null;
						if (size != null) {
							size = typer.exprs.Expr.explicitConversion(typeof(expr.args[1], info, false), basic(int_kind), size, info);
							size = macro($size : go.GoInt).toBasic();
						}
						if (cap != null) {
							cap = typer.exprs.Expr.explicitConversion(typeof(expr.args[2], info, false), basic(int_kind), cap, info);
						} else {
							cap = macro 0;
						}
						var p:TypePath = switch type {
							case named(path, _, _):
								namedTypePath(path, info);
							case typeParam(_, params):
								type = params[0];
								null;
							default:
								null;
						}
						final underlyingType = getUnderlying(type);
						var e = switch underlyingType {
							case sliceType(_.get() => elem):
								final param = toComplexType(elem, info);
								final p:TypePath = {name: "Slice", params: [TPType(param)], pack: ["go"]};
								CompositeLiteral.createSlice(p, elem, size, cap, returnExpr, info, null);
							case mapType(_.get() => key, _.get() => value):
								var keyType = toComplexType(key, info);
								var valueType = toComplexType(value, info);
								CompositeLiteral.createMap(underlyingType, keyType, valueType, [], info, toComplexType(type, info));
							case chanType(dir, _.get() => elem):
								var value = typer.exprs.Expr.defaultValue(elem, info);
								var param = toComplexType(elem, info);
								if (size == null)
									size = macro 0;
								if (p == null)
									p = {name: "Chan", pack: ["go"], params: [TPType(param)]};
								macro new $p($size, () -> $value);
							case invalidType:
								macro @:invalid_make null;
							default:
								trace(expr.fun.name, !info.renameIdents.exists(expr.fun.name));
								// trace(info.renameIdents);
								// throw info.panic() + "unknown make type: " + type;
								macro @:invalid_make null;
						}
						final ct = toComplexType(type, info);
						return returnExpr(macro($e : $ct));
				}
			}
	}
	var e = typer.exprs.Expr.typeExpr(expr.fun, info);
	final type = typeof(expr.fun, info, false);
	if (args.length == 0) {
		genArgs(true, 0);
	}
	e = macro $e($a{args});
	return returnExpr(e);
}

private function exprToString(fromType:GoType, toType:GoType, expr:Expr, info:Info):MacroExpr {
	switch toType {
		case basic(string_kind):
			switch fromType {
				case basic(float32_kind), basic(float64_kind), basic(untyped_float_kind):
					return macro Std.string($expr);
				case basic(uint32_kind), basic(uint_kind), basic(untyped_int_kind):
					return macro Std.string((($expr : UInt) : Float));
				case basic(uint64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.UInt64).toString();
				case basic(int64_kind):
					return macro @:privateAccess (($expr).toBasic() : haxe.Int64).toString();
				case basic(int_kind), basic(int8_kind), basic(uint8_kind), basic(int16_kind), basic(uint16_kind), basic(int32_kind):
					return expr;
				case basic(bool_kind):
					return expr;
				case basic(complex64_kind), basic(complex128_kind):
					return expr;
				case basic(string_kind):
					return expr;
				default:
			}
		default:
	}
	return expr;
}

private function getOriginVar(fromType:GoType, t:GoType):GoType {
	if (t == null)
		return t;
	switch t {
		case _var(_, _, _.get() => typeParam(_, params)):
			if (params.length == 1) {
				return params[0];
			}
			var anyInterfaceIndex = -1;
			for (i in 0...params.length) {
				if (anyInterfaceIndex == -1 && isAnyInterface(params[i]))
					anyInterfaceIndex = i;
				if (goTypesEqual(fromType, params[i], 4))
					return params[i];
			}
			if (anyInterfaceIndex != -1)
				return params[anyInterfaceIndex];
		case _var(_, _, _.get() => param):
			return param;
		default:
	}
	return getVar(t);
}
