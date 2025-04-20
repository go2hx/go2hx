package typer.exprs;

function typeCallExpr(expr:GoAst.CallExpr, info:Info):ExprDef {

	var args:Array<Expr> = [];
	var tupleArg:Expr = null;
	var debugBool = false;
	var forceType = false;
	function returnExpr(e:Expr):Expr {
		switch e.expr {
			case ECall({expr: expr, pos: _}, params):
				switch expr {
					case EMeta(s, e):
						if (s.name == ":define") {
							switch e.expr {
								case ECall(_, params): // Go.typeFunction(...)
									switch params[0].expr {
										case ECall(e3, _): // Go.typeFunction(...())
											expr = e3.expr;
										default: // Go.typeFunction(...)
											expr = params[0].expr;
									}
								default:
							}
						}
					default:
				}
				e.expr = ECall({expr: expr, pos: null}, params);
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
		/*if (forceType) {
			final ct = toComplexType(typeof(expr, info, false), info);
			e = macro ($e : $ct);
		}*/
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
								args[i] = macro(__tmp__.$fieldName:$type);
							}
						}
					default:
				}
			}
		}
		var type = typeof(expr.fun, info, false);
		// ellipsis
		if (expr.ellipsis == -1) {
			debugBool = true;
		} else if (expr.ellipsis != 0) {
			var last = args.pop();
			var t = typeof(exprArgs[exprArgs.length - 1], info, false);
			if (elem != null)
				t = GoType.sliceType({get: () -> elem});
			last = typeRest(last, t, info);
			args.push(last);
		}
		if (translateType && type != null) {
			if (isInvalid(type)) { // set standard library expected call arguments
				if (expr.fun.id == "SelectorExpr") {
					var fun:GoAst.SelectorExpr = expr.fun;
					if (fun.x.id == "Ident") {
						switch fun.x.name {
							case "unsafe":
								args[0] = toAnyInterface(args[0], invalidType, info);
						}
					}
				}
				return;
			}
			// trace("ABC");
			// final t = typeof(expr.calle,info,false);
			var skip = 0;
			if (expr.typeArgs != null) {
				// TODO: generic funcs
				/*skip = expr.typeArgs.length;
					expr.typeArgs.reverse();
					for (typeArg in expr.typeArgs) {
						final typeOfTypeArg = typeof(typeArg, info, false);
						final value = defaultValue(typeOfTypeArg, info);
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
							final fromType = getVar(typeof(exprArgs[i - skip], info, false));
							var toType = getVar(params[i - skip]);
							if (variadic && params.length <= i + 1 - skip) {
								toType = getElem(params[params.length - 1]);
							}
							args[i] = assignTranslate(fromType, toType, args[i], info);
						}
					default:
				}
			}
		}
	}
	final isFunction = isFunction(expr.fun, info);
	if (!isFunction) {
		final ct = typeExprType(expr.fun, info);
		var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
		final fromType = typeof(expr.args[0], info, false);
		final toType = typeof(expr.fun, info, false);
		if (isAnyInterface(toType) && !isRestExpr(e)) {
			return toAnyInterface(e, fromType, info).expr;
		}
		return returnExpr(checkType(e, ct, fromType, toType, info)).expr;
	}
	switch expr.fun.id {
		case "IndexExpr", "IndexListExpr":
			var t = typeof(expr.fun.x, info, false);
			t = getUnderlyingRefNamed(t);
			switch t {
				case signature(_, _, _, _, _): // generic param
					final expr = typer.exprs.Expr.typeExpr(expr.fun.x, info);
					genArgs(true);
					return (macro $expr($a{args})).expr;
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
			expr.fun.x = escapeParensRaw(expr.fun.x);
			final selKind = selectorKind(expr.fun);
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
						return returnExpr(macro($e($a{args}) : stdgo.GoString)).expr;
					}
				case "Exit":
					if (expr.fun.x.id == "Ident" && expr.fun.x.name == "os") {
						genArgs(true);
						return (macro @:define("(sys || hxnodejs)") Sys.exit($a{args})).expr;
					}
			}
		case "FuncLit":
			var expr = toExpr(FunctionLiteral.typeFuncLit(expr.fun, info));
			genArgs(true);
			return returnExpr(macro({
				var a = $expr;
				a($a{args});
			})).expr;
		case "Ident":
			if (!info.renameIdents.exists(expr.fun.name) && info.localIdents.indexOf(untitle(expr.fun.name)) == -1) {
				final funcName = expr.fun.name;
				switch funcName {
					case "log.Println":
						genArgs(false);
						args = args.map(arg -> macro stdgo.Go.toInterface($arg));
						return (macro @:define("cdebug") stdgo.log.Log.println($a{args})).expr;
					case "__debug__":
						if (info.global.debugBool) {
							return (macro {
								final values = stdgo.os.Os.openFile("debug_" + stdgo.runtime.Runtime.compiler + ".log", 0, 0);
								var __f__ = values._0;
								final __e__ = values._1;
								if (__e__ != null) {
									stdgo.log.Log.fatal(stdgo.Go.toInterface(__e__));
								}
								__f__.truncate(0);
								stdgo.log.Log.setFlags(0);
								stdgo.log.Log.setOutput(stdgo.Go.asInterface(__f__));
								__f__;
							}).expr;
						}
					case "panic":
						genArgs(false);
						return returnExpr(macro throw ${toAnyInterface(args[0], typeof(expr.args[0], info, false), info)}).expr;
					case "recover":
						info.global.recoverBool = true;
						return returnExpr(macro({
							final r = stdgo.Go.recover_exception;
							stdgo.Go.recover_exception = null;
							r;
						})).expr;
					case "min", "max":
						genArgs(false);
						return (macro stdgo.Go.$funcName($a{args})).expr;
					case "append":
						final t = typeof(expr.args[0], info, false);
						var eType = t;
						eType = getElem(eType);
						genArgs(false, eType);
						var e = args.shift();
						if (args.length == 0)
							return returnExpr(e).expr;

						for (i in 0...args.length) {
							final aType = typeof(expr.args[i + 1], info, false);
							args[i] = assignTranslate(aType, eType, args[i], info);
						}
						var ct = toComplexType(typeof(expr, info, false), info);
						var e = macro $e.__append__($a{args});
						if (!isInvalidComplexType(ct))
							e = macro($e : $ct);
						return returnExpr(e).expr;
					case "copy":
						genArgs(false);
						// return returnExpr(macro stdgo.Go.copySlice($a{args})).expr;
						return returnExpr(macro ${args[0]}.__copyTo__($a{args.slice(1)})).expr;
					case "delete":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var key = typer.exprs.Expr.typeExpr(expr.args[1], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						switch removeTypeParam(t) {
							case mapType(_.get() => var keyType, _):
								key = assignTranslate(typeof(expr.args[1], info, false), keyType, key, info, false);
							case invalidType:
							case tuple(_, _.get() => vars):
								return (macro {
									final e = $e;
									e._0.__remove__(e._1);
								}).expr;
							default:
								throw info.panic() + "first arg of delete builtin function not of type map: " + t;
						}
						return returnExpr(macro if ($e != null) $e.__remove__($key)).expr;
					case "clear":
						genArgs(false);
						final t = getUnderlying(typeof(expr.args[0], info, false));
						final s = args[0];
						switch t {
							case sliceType(_.get() => elem):
								final value = defaultValue(elem, info, false);
								return (macro {
									for (i in 0...$s.length) {
										$s[i] = $value;
									}
								}).expr;
							default:
								return returnExpr(macro $s.__clear__()).expr;
						}
					case "print":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro stdgo.Go.print("")).expr;
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro stdgo.Go.print($a{args})).expr;
					case "println":
						genArgs(true, 0);
						if (args.length == 0)
							return returnExpr(macro stdgo.Go.println("")).expr;
						for (i in 0...args.length) {
							args[i] = exprToString(typeof(expr.args[i], info, false), basic(string_kind), args[i], info);
						}
						return returnExpr(macro stdgo.Go.println($a{args})).expr;
					case "complex":
						genArgs(false);
						return returnExpr(macro new stdgo.GoComplex128($a{args})).expr;
					case "real":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = checkType(e, ct, t, toType, info);
						return returnExpr(macro $e.real).expr;
					case "imag":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						final toType = GoType.basic(complex128_kind);
						final ct = toComplexType(toType, info);
						e = checkType(e, ct, t, toType, info);
						return returnExpr(macro $e.imag).expr;
					case "close":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro if ($e != null) $e.__close__()).expr;
					case "cap":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						return returnExpr(macro $e.capacity).expr;
					case "len":
						var e = typer.exprs.Expr.typeExpr(expr.args[0], info);
						var t = typeof(expr.args[0], info, false);
						t = getUnderlying(t);
						return returnExpr(macro($e.length)).expr;
					case "new": // create default value put into pointer
						var t = typeExprType(expr.args[0], info);
						switch t {
							case TPath(_), TFunction(_, _), TAnonymous(_):
								var t = typeof(expr.args[0], info, false);
								var value = defaultValue(t, info);
								if (!isRefValue(t)) {
									value = macro stdgo.Go.pointer($value);
								} else {
									final ct = TPath({name: "Ref", pack: ["stdgo"], params: [TPType(toComplexType(t, info))]});
									value = macro(stdgo.Go.setRef($value) : $ct);
								}
								return returnExpr(value).expr;
							default:
						}
					case "make":
						var type = typeof(expr.args[0], info, false);
						genArgs(false, 1);
						var size = args[0];
						var cap = args[1];

						var setCap:Bool = cap != null;
						if (size != null) {
							size = assignTranslate(typeof(expr.args[1], info, false), basic(int_kind), size, info);
							size = macro($size : stdgo.GoInt).toBasic();
						}
						if (cap != null) {
							cap = assignTranslate(typeof(expr.args[2], info, false), basic(int_kind), cap, info);
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
								final p:TypePath = {name: "Slice", params: [TPType(param)], pack: ["stdgo"]};
								genSlice(p, elem, size, cap, returnExpr, info, null);
							case mapType(_.get() => key, _.get() => value):
								var keyType = toComplexType(key, info);
								var valueType = toComplexType(value, info);
								createMap(underlyingType, keyType, valueType, [], info, toComplexType(type, info));
							case chanType(dir, _.get() => elem):
								var value = defaultValue(elem, info);
								var param = toComplexType(elem, info);
								if (size == null)
									size = macro 0;
								if (p == null)
									p = {name: "Chan", pack: ["stdgo"], params: [TPType(param)]};
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
						return returnExpr(macro($e : $ct)).expr;
				}
			}
	}
	var e = typer.exprs.Expr.typeExpr(expr.fun, info);
	final type = typeof(expr.fun, info, false);
	if (args.length == 0) {
		genArgs(true, 0);
	}
	if (debugBool) {
		e = macro @:define("debug") trace(stdgo.fmt.Fmt.sprintln($a{args}));
	} else {
		e = macro $e($a{args});
	}
	return returnExpr(e).expr;
}