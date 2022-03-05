package stdgo;

import haxe.Exception;
import haxe.io.Bytes;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.PositionTools;
import haxe.macro.TypeTools;
import stdgo.reflect.Reflect.GoType;
import stdgo.reflect.Reflect.MethodType;
import stdgo.reflect.Reflect.Type;

class Go {
	static function getMetaLength(meta:Metadata):ExprDef {
		for (m in meta) {
			if (m.name != ":length")
				continue;
			return m.params[0].expr;
		}
		return EConst(CIdent("0"));
	}

	static private function getData(expr:Expr):Expr {
		return switch expr.expr {
			case ECheckType(e, t): return e;
			case EParenthesis(e): return getData(e);
			default: expr;
		}
	}

	static private function getType(expr:Expr):ComplexType {
		var type:ComplexType = null;
		if (expr == null)
			return type;
		switch expr.expr {
			case ECheckType(e, t):
				type = t;
			case EParenthesis(e):
				type = getType(e);
			default:
		}
		return type;
	}

	public static macro function copy<T>(dst:Expr, src:Expr) {
		var type = Context.toComplexType(Context.followWithAbstracts(Context.typeof(dst)));
		var srcType = Context.toComplexType(Context.follow(Context.typeof(src)));
		var isString = switch srcType {
			case TPath(p): p.name == "String" && p.pack.length == 0;
			default:
				false;
		}
		switch srcType {
			case TPath(p):
				switch p.name {
					case "String", "GoString":
						src = macro($src : GoString);
					case "Slice", "SliceData": // src
					default: // named
						src = macro $src.__t__;
				}
			default:
		}
		switch type {
			case TPath(p):
				switch p.name {
					case "SliceData": // dst
					default: // named
						dst = macro $dst.__t__;
				}
			default:
		}
		return macro {
			var src = $src;
			var dst = $dst;
			var length = dst.length >= src.length ? src.length : dst.length; // min length
			for (i in 0...length.toBasic()) {
				dst[i] = src[i];
			}
			length;
		}
	}

	public static function string(s:Dynamic):String {
		if ((s is stdgo.StdGoTypes.AnyInterfaceData)) {
			s = s.value;
		}
		if (!(s is String) && Reflect.isObject(s) && s.error != null)
			s = s.error();
		if ((s is haxe.io.Bytes)) // GoString is haxe.io.Bytes
			s = (s : GoString).toString();
		return if (haxe.Int64.isInt64(s)) {
			haxe.Int64.toStr(s);
		} else {
			'$s';
		}
	}

	// GOROUTINE
	public static function routine(func:Void->Void) {
		#if js
		js.Syntax.code("var __a__ = async function() {
			{0}();
		}; __a__();", func);
		#elseif (target.threaded)
		sys.thread.Thread.createWithEventLoop(func);
		#end
	}

	public static macro function toInterface(expr) {
		final expectedType = Context.getExpectedType();
		if (expectedType != null) {
			switch expectedType {
				case TAbstract(t, params):
					var error = false;
					switch t.toString() {
						case "stdgo.AnyInterface":

						case "Null":
							error = params.length == 0;
						default:
							error = true;
					}
					if (error)
						Context.error("Invalid expected type Abstract: " + t.toString(), Context.currentPos());
				case TMono(_):
				case TDynamic(t):
					if (t != null)
						Context.error("Invalid expected type TDynamic: " + t, Context.currentPos());
				default:
					Context.error("Invalid expected type: " + expectedType, Context.currentPos());
			}
		}
		var t = Context.typeof(expr);
		var follow = true;
		switch t {
			case TType(t, params):
				final t = t.get();
				if (t.pack.length == 1
					&& t.pack[0] == "stdgo"
					&& (t.name != "GoByte" && t.name != "GoRune" && t.name != "GoFloat" && t.name != "GoUInt" && t.name != "GoInt")) {
					follow = false;
				}
			default:
		}
		if (follow)
			t = Context.follow(t);
		switch t {
			case TAbstract(t, params):
				var t = t.get();
				if (t.name == "AnyInterface" && t.pack.length == 1 && t.pack[0] == "stdgo") {
					return expr; // prevent interface{} inside interface{}
				}
			case TInst(t, params):
				var t = t.get();
				if (t.name == "String" && t.pack.length == 0)
					expr = macro new GoString($expr);
			case TAnonymous(_):
				return macro $expr == null ? new AnyInterface(null,
					new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.invalidType)) : $expr.__underlying__();
			default:
		}
		var ty = gtDecode(t, expr, []);
		var e = macro new AnyInterface($expr, new stdgo.reflect.Reflect._Type($ty));
		if (!gtIsBasic(t))
			e = macro $expr == null ? null : $e;
		return e;
	}

	public static macro function assertable(expr:Expr) {
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, t):
				var t = ComplexTypeTools.toType(t);
				if (t == null)
					Context.error("complexType converted to type is null", Context.currentPos());
				var et = Context.follow(Context.typeof(e));
				var value = gtDecode(t, null, []);
				switch et {
					case TAnonymous(_):
						e = macro $e == null ? null : $e.__underlying__();
					default:
				}
				return macro if ($e == null) {
					false;
				} else {
					final v = new stdgo.reflect.Reflect._Type($value);
					@:privateAccess stdgo.reflect.Reflect.directlyAssignable(v,
						$e.type) || @:privateAccess stdgo.reflect.Reflect.implementsMethod(v, $e.type, false)
					;
				};
			default:
				Context.error("unknown assignable expr: " + expr.expr, Context.currentPos());
				return macro null;
		}
	}

	static function escapeParens(expr:Expr):Expr {
		return switch expr.expr {
			case EParenthesis(e):
				escapeParens(e);
			default:
				expr;
		}
	}

	public static macro function pointer(expr:Expr, hasSet:Bool = false) {
		expr = escapeParens(expr);

		var p:TypePath = {name: "Pointer", pack: ["stdgo"]};
		var expected = Context.getExpectedType();
		if (expected != null) {
			var ct = Context.toComplexType(expected);
			if (ct != null) {
				switch ct {
					case TPath(path):
						if (path.name == "Pointer") {
							p = path;
						}
					default:
				}
			}
		}

		var declare:Bool = false;
		switch expr.expr {
			case EConst(c):
				switch c {
					case CIdent(s):
						switch s {
							case "null":
								declare = true;
							case "this":
								Context.error('setting "this" to pointer is not allowed', Context.currentPos());
							case "false", "true":
								declare = true;
							default:
								final isLocal = Context.getLocalTVars().exists(s);
								final v = if (isLocal) {
									Context.getLocalMethod();
								} else {
									Context.getLocalModule();
								}
								return macro {
									final underlying = $v{v};
									final underlyingIndex = $v{s};
									new $p(() -> $expr, v -> $expr = v, false, underlying, underlyingIndex);
								};
						}
					default:
						declare = true;
				}
			case EField(e, field):
				e = try {
					Context.typeof(e);
					e;
				} catch (_) {
					final path = new haxe.macro.Printer().printExpr(e);
					macro $v{path};
				}
				return macro {
					final underlying = $e;
					final underlyingIndex = $v{field};
					new $p(() -> $expr, v -> $expr = v, false, underlying, underlyingIndex);
				};
			case EArray(e1, e2):
				var t = Context.follow(Context.typeof(e1));
				switch t {
					case TAbstract(t, params):
						var t = t.get();
						if (t.name == "Pointer") {
							switch params[0] {
								case TAbstract(t2, params2):
									t = t2.get();
									e1 = macro ${e1}.value;
								default:
							}
						}
						switch t.name {
							case "Slice":
								return macro {
									final _offset_ = ${e1}.getOffset();
									final index = (${e2} : GoInt).toBasic() + _offset_;
									final underlying = ${e1}.getUnderlying();
									var underlyingIndex = index;
									new $p(() -> ${e1}.getUnderlying()[index], v -> ${e1}.getUnderlying()[index] = v, false, underlying, underlyingIndex);
								};
							case "GoArray":
								return macro {
									final underlying = ${e1}.toVector();
									final underlyingIndex = (${e2} : GoInt).toBasic();
									new $p(() -> $expr, v -> $expr = v, false, underlying, underlyingIndex);
								}
						}
					default:
				}
			default:
				declare = true;
		}
		if (declare)
			return macro {
				var e = $expr;
				new $p(() -> e, v -> e = v, $v{hasSet});
			};
		return macro new $p(() -> $expr, (__tmp__) -> $expr = __tmp__, $v{hasSet});
	}

	public static macro function cfor(cond, post, expr) {
		#if !display
		var func = null;
		func = function(expr:haxe.macro.Expr) {
			return switch (expr.expr) {
				case EContinue: macro {$post; $expr;}
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				// case EIn(_): expr;
				default: haxe.macro.ExprTools.map(expr, func);
			}
		}
		expr = func(expr);
		#end
		var exprMacro = macro {
			while ($cond) {
				$expr;
				$post;
			}
		};
		return exprMacro;
	}

	#if macro
	// reflect decode
	private static function gtParams(params:Array<haxe.macro.Type>, marked:Map<String, Bool>):Array<Expr> {
		var pTypes = [];
		for (i in 0...params.length) {
			final param = Context.follow(params[i]);
			pTypes.push(gtDecode(param, null, marked));
		}
		return pTypes;
	}

	public static function gtIsBasic(t:haxe.macro.Type):Bool {
		return switch (t) {
			case TType(t, params):
				final name = t.get().name;
				switch name {
					case "GoUnTypedInt", "stdgo.GoUnTypedInt":
						true;
					case "GoUnTypedFloat", "stdgo.GoUnTypedFloat":
						true;
					case "GoUnTypedComplex", "stdgo.GoUnTypedComplex":
						true;
					case "GoRune", "stdgo.GoRune":
						true;
					case "GoByte", "stdgo.GoByte":
						true;
					default:
						false;
				}
			case TAbstract(ref, _):
				var sref:String = ref.toString();
				return switch (sref) {
					case "stdgo.GoInt8":
						true;
					case "stdgo.GoInt16":
						true;
					case "stdgo.GoInt32":
						true;
					case "stdgo.GoInt", "Int":
						true;
					case "stdgo.GoInt64":
						true;
					case "stdgo.GoUInt8":
						true;
					case "stdgo.GoUInt16":
						true;
					case "stdgo.GoUInt":
						true;
					case "stdgo.GoUInt32":
						true;
					case "stdgo.GoUInt64":
						true;
					case "stdgo.GoString", "String":
						true;
					case "stdgo.GoComplex64":
						true;
					case "stdgo.GoComplex128":
						true;
					case "stdgo.ComplexType":
						true;
					case "stdgo.GoFloat32":
						true;
					case "stdgo.GoFloat64", "Float":
						true;
					case "stdgo.FloatType":
						true;
					case "Bool":
						true;
					case "stdgo.GoUIntptr":
						true;
					default:
						false;
				}
			default:
				false;
		}
	}

	public static function gtDecode(t:haxe.macro.Type, expr:Expr = null, marked:Map<String, Bool>, recv:Expr = null):Expr {
		final marked = marked.copy();
		var ret = macro stdgo.reflect.Reflect.GoType.invalidType;
		switch (t) {
			case TType(t, params):
				final name = t.toString();
				switch name {
					case "stdgo.GoInt":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int_kind);
					case "stdgo.GoUInt":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint_kind);
					case "stdgo.unsafe.Pointer_":
						ret = macro stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind);
					case "stdgo GoUnTypedInt":
						ret = macro stdgo.reflect.Reflect.GoType.basic(untyped_int_kind);
					case "stdgo.GoUnTypedFloat":
						ret = macro stdgo.reflect.Reflect.GoType.basic(untyped_float_kind);
					case "stdgo.GoUnTypedComplex":
						ret = macro stdgo.reflect.Reflect.GoType.basic(untyped_complex_kind);
					case "stdgo.GoRune":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int32_kind);
					case "stdgo.GoByte":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint8_kind);
					case "stdgo.GoUnTypedInt":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint64_kind);
					default:
						final ref = t.get();
						switch ref.type {
							case TAnonymous(a):
								final a = a.get();
								a.fields.sort((a, b) -> {
									return haxe.macro.Context.getPosInfos(a.pos).min - haxe.macro.Context.getPosInfos(b.pos).min;
								});
								final methods:Array<Expr> = [];
								for (field in a.fields) {
									switch field.name {
										case "__underlying__":
											continue;
										default:
									}
									// final embedded = field.meta.has(":embedded") ? macro true : macro false;
									methods.push(macro {name: $v{field.name}, type: ${gtDecode(field.type, null, marked)}});
								}
								final path = createPath(ref.pack, ref.name);
								final empty = methods.length == 0;
								final local = ref.meta.has(":local");
								ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, [],
									stdgo.reflect.Reflect.GoType.interfaceType($v{empty}, $a{methods}), $v{local});
							default:
								Context.error("unknown typedef: " + name, Context.currentPos());
						}
				}
			case TMono(ref):
				return macro stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind);
			case TAbstract(ref, params):
				var sref:String = ref.toString();
				switch (sref) {
					case "stdgo.Slice":
						ret = macro stdgo.reflect.Reflect.GoType.sliceType($a{gtParams(params, marked)});
					case "stdgo.GoArray":
						var len = macro - 1;
						if (expr != null)
							len = macro($expr : GoArray<Dynamic>).length.toBasic();
						ret = macro stdgo.reflect.Reflect.GoType.arrayType(${gtParams(params, marked)[0]},
							$len); // TODO go2hx does not store the length in the type
					case "stdgo.Pointer":
						ret = macro stdgo.reflect.Reflect.GoType.pointer($a{gtParams(params, marked)});
					case "stdgo.UnsafePointer", "stdgo.Unsafe.UnsafePointer", "stdgo.unsafe.UnsafePointer":
						return macro stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind);
					case "stdgo.GoMap":
						var ps = gtParams(params, marked);
						ret = macro stdgo.reflect.Reflect.GoType.mapType($a{ps});
					case "haxe.Rest":
						ret = macro stdgo.reflect.Reflect.GoType.sliceType($a{gtParams(params, marked)});
					case "stdgo.GoInt8":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int8_kind);
					case "stdgo.GoInt16":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int16_kind);
					case "stdgo.GoInt32":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int32_kind);
					case "Int":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int_kind);
					case "stdgo.GoInt64":
						ret = macro stdgo.reflect.Reflect.GoType.basic(int64_kind);
					case "stdgo.GoUInt8":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint8_kind);
					case "stdgo.GoUInt16":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint16_kind);
					case "stdgo.GoUInt32":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint32_kind);
					case "stdgo.GoUInt64":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uint64_kind);
					case "stdgo.GoString", "String":
						ret = macro stdgo.reflect.Reflect.GoType.basic(string_kind);
					case "stdgo.GoComplex64":
						ret = macro stdgo.reflect.Reflect.GoType.basic(complex64_kind);
					case "stdgo.GoComplex128":
						ret = macro stdgo.reflect.Reflect.GoType.basic(complex128_kind);
					case "stdgo.ComplexType":
						ret = macro stdgo.reflect.Reflect.GoType.basic(complex128_kind);
					case "stdgo.GoFloat32":
						ret = macro stdgo.reflect.Reflect.GoType.basic(float32_kind);
					case "stdgo.GoFloat64", "Float":
						ret = macro stdgo.reflect.Reflect.GoType.basic(float64_kind);
					case "stdgo.FloatType":
						ret = macro stdgo.reflect.Reflect.GoType.basic(float64_kind);
					case "Bool":
						ret = macro stdgo.reflect.Reflect.GoType.basic(bool_kind);
					case "stdgo.GoUIntptr":
						ret = macro stdgo.reflect.Reflect.GoType.basic(uintptr_kind);
					case "stdgo.AnyInterface":
						ret = macro stdgo.reflect.Reflect.GoType.interfaceType(true);
					case "haxe.Function":
						ret = macro stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType);
					case "Null":
						ret = macro stdgo.reflect.Reflect.GoType.invalidType;
					case "Void":
						ret = macro stdgo.reflect.Reflect.GoType.invalidType; // Currently no value is supported for Void however in the future, there will be a runtime value to match to it. HaxeFoundation/haxe-evolution#76
					default: // used internally such as reflect.Kind
						Context.error('unknown abstract type: $sref', Context.currentPos());
				}
			case TInst(ref, params):
				final refString = ref.toString();
				var ref = ref.get();
				if (params.length == 1 && ref.pack.length == 1 && ref.pack[0] == "stdgo" && (ref.name == "Chan" || ref.name == "_Chan")) {
					var param = gtParams(params, marked)[0];
					ret = macro stdgo.reflect.Reflect.GoType.chanType(0, $param);
				} else {
					if (!marked.exists(refString)) {
						marked[refString] = true;
						if (ref.module == "String") {
							ret = macro stdgo.reflect.Reflect.GoType.basic(string_kind);
						} else {
							final methods:Array<Expr> = [];
							final fs = ref.fields.get();
							final path = createPath(ref.pack, ref.name);
							for (field in fs) {
								switch field.kind {
									case FMethod(k):
										switch field.name {
											case "new", "__copy__", "__underlying__", "__t__", "__slice__", "__append__", "__set__":
												continue;
										}
										if (field.name == "toString" && field.meta.has(":implicit"))
											continue;
										switch field.type {
											case TLazy(f):
												continue;
											default:
										}
										methods.push(macro new stdgo.reflect.Reflect.MethodType($v{field.name}, ${gtDecode(field.type, null, marked, ret)}));
									default:
								}
							}
							ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, $a{methods}, null);
							if (ref.meta.has(":named")) {
								var type:haxe.macro.Type = null;
								for (field in ref.fields.get()) {
									if (field.name == "__t__") {
										type = field.type;
										break;
									}
								}
								if (type == null)
									Context.error("unable to find __t__ type", Context.currentPos());
								final underlyingType = gtDecode(type, null, marked);
								ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, $a{methods}, $underlyingType);
							} else {
								ret = gtDecodeClassType(ref, methods, marked);
							}
						}
					} else {
						var name = parseModule(ref.module) + "." + ref.name;
						ret = macro stdgo.reflect.Reflect.GoType.previouslyNamed($v{name});
					}
				}
			case TFun(a, result):
				var args = [];
				for (arg in a) {
					args.push(gtDecode(arg.t, null, marked));
				}
				var results = [];
				var isVoid = false;
				switch result {
					case TAnonymous(a):
						final fields = a.get().fields;
						for (field in fields) {
							results.push(gtDecode(field.type, null, marked));
						}
					case TAbstract(t, params):
						if (t.toString() == "Void") isVoid = true;
					default:
				}
				if (!isVoid && results.length == 0)
					results.push(gtDecode(result, null, marked));
				var variadic = macro false;
				if (a.length > 0) {
					final lastType = a[a.length - 1].t;
					switch lastType {
						case TAbstract(ref, _):
							var sref:String = ref.toString();
							switch (sref) {
								case "haxe.Rest":
									variadic = macro true;
							}
						default:
					}
				}
				var recvExpr = macro stdgo.reflect.Reflect.GoType.invalidType;
				if (recv != null)
					recvExpr = recv;
				ret = macro stdgo.reflect.Reflect.GoType.signature($variadic, $a{args}, $a{results}, $recvExpr);
			case TDynamic(t):
				ret = macro stdgo.reflect.Reflect.GoType.interfaceType(true);
			case TLazy(f):
				ret = gtDecode(f(), null, []);
			case TEnum(_, _):
				ret = macro stdgo.reflect.Reflect.GoType.invalidType;
			case TAnonymous(a):
				Context.error('reflect.cast_AnyInterface - unhandled anon type $t', Context.currentPos());
			default:
				Context.error('reflect.cast_AnyInterface - unhandled typeof $t', Context.currentPos());
		}

		return ret;
	}

	static function createPath(pack:Array<String>, name:String):String {
		return pack.join(".") + "." + name;
	}

	static function gtDecodeClassType(ref:haxe.macro.Type.ClassType, methods:Array<Expr>, marked:Map<String, Bool>):Expr {
		var fields:Array<Expr> = [];
		var fs = ref.fields.get();
		var underlyingType:haxe.macro.Type = null;
		var module = parseModule(ref.module);
		for (field in fs) {
			if (field.meta.has(":local"))
				continue;
			switch field.kind {
				case FMethod(k):
				default:
					if (field.name == "__t__") {
						underlyingType = field.type;
						continue;
					}
					var t = gtDecode(field.type, null, marked);
					final embedded = field.meta.has(":embedded") ? macro true : macro false;
					final tag = field.meta.has(":tag") ? field.meta.extract(":tag")[0].params[0] : macro "";
					fields.push(macro new stdgo.reflect.Reflect.FieldType($v{field.name}, $t, $tag, $embedded));
			}
		}
		var fields = macro $a{fields};
		var t = macro stdgo.reflect.Reflect.GoType.structType($fields);
		if (ref.meta.has(":named") && underlyingType != null) {
			t = gtDecode(underlyingType, null, marked);
		}
		final path = createPath(ref.pack, ref.name);
		return macro stdgo.reflect.Reflect.GoType.named($v{path}, $a{methods}, $t);
	}
	#end

	public static macro function setKeys(expr:Expr) {
		var t = Context.toComplexType(Context.getExpectedType());
		return macro($expr : $t);
	}

	public static macro function select(expr:Expr) {
		switch expr.expr {
			case EArrayDecl(values):
				var exprs:Array<Expr> = [];
				var defaultBlock:Expr = null;
				final resources:Array<{expr:Expr, get:Bool, f:Expr}> = [];
				var count = 0;
				function cleanup():Expr {
					var exprs:Array<Expr> = [];
					for (res in resources) {
						final expr = res.expr;
						final f = res.f;
						exprs.push(macro $expr.mutex.acquire());
						if (res.get) {
							exprs.push(macro $expr.sendWg.release());
							exprs.push(macro $expr.onGet.remove($f));
						} else {
							exprs.push(macro $expr.getWg.release());
							exprs.push(macro $expr.onSend.remove($f));
						}
						exprs.push(macro $expr.mutex.release());
					}
					return macro $b{exprs};
				}

				for (value in values) {
					final varName = switch value.expr {
						case EVars(vars):
							value = vars[0].expr;
							vars[0].name;
						default:
							"";
					}
					switch value.expr {
						case EBlock(exprs):
							exprs.push(macro __wait__.release());
							defaultBlock = macro $b{exprs};
						case EBinop(OpArrow, e1, e2):
							switch e1.expr {
								case ECall({expr: EField(e, field), pos: _}, params):
									final v = "_" + count++;
									exprs.push(macro var $v = $e);
									e = macro $i{v};
									switch field {
										case "__get__":
											final v = "_" + count++;
											// resources.push({expr: e, get: false, f: macro $i{v}});
											if (varName != "") {
												switch e2.expr {
													case EBlock(exprs):
														exprs.unshift(macro var $varName = $e.passValue);
													default:
												}
											}
											exprs = exprs.concat(switch (macro {
												var $v = () -> {
													__f__ = () -> ${e2};
													__wait__.release();
												};
												$e.mutex.acquire();
												$e.onGet.push($i{v});
												$e.mutex.release();
												$e.sendWg.release();
												if (__wait__.wait(0)) {
													${cleanup()};
													return;
												}
											}).expr {
												case EBlock(exprs): exprs;
												default:
													[];
											});
										case "__send__":
											final v = "_" + count++;
											resources.push({expr: e, get: false, f: macro $i{v}});
											exprs = exprs.concat(switch (macro {
												var $v = {
													value: ${params[0]},
													f: () -> {
														__f__ = () -> ${e2};
														__wait__.release();
													}
												};
												$e.mutex.acquire();
												if ($e.__buffer_send__(${params[0]})) {
													$e.onSend.push($i{v});
													return;
												} else {
													$e.mutex.release();
													$e.getWg.release();
													if (__wait__.wait(0)) {
														${cleanup()};
														return;
													}
												}
											}).expr {
												case EBlock(exprs): exprs;
												default:
													[];
											});
										default:
											Context.error("invalid field name: " + field, Context.currentPos());
									}
								default:
									Context.error("invalid value call expr: " + value.expr, Context.currentPos());
							}
						default:
							Context.error("invalid value expr: " + value.expr, Context.currentPos());
					}
				}
				exprs.unshift(macro var __f__:Void->Void = null);
				exprs.unshift(macro var __wait__ = new sys.thread.Lock());
				if (defaultBlock != null)
					exprs.push(defaultBlock);
				exprs.push(macro while (!__wait__.wait(0.01)) {
					stdgo.internal.Async.tick();
				});
				exprs.push(macro if (__f__ != null)
					__f__());
				exprs.push(cleanup());
				Sys.println(new haxe.macro.Printer().printExpr(macro $b{exprs}));
				return macro $b{exprs};
			default:
				Context.error("select must be array decl expr: " + expr.expr, Context.currentPos());
		}
		return macro null;
	}

	public static macro function multireturn(expr:Expr):Expr {
		function getFields(t:ComplexType) {
			switch t {
				case TAnonymous(fields):
					fields.sort((a, b) -> {
						return Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
					});
					return fields;
				default:
					Context.error('not anon type: $t', Context.currentPos());
			}
			return [];
		}
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, t):
				var fields2 = getFields(t);
				var t = Context.toComplexType(Context.typeof(e));
				var fields = getFields(t);
				var struct = {
					expr: EObjectDecl([
						for (i in 0...fields.length) {
							var fieldName = fields[i].name;
							{
								field: fields2[i].name,
								expr: macro obj.$fieldName,
							};
						}
					]),
					pos: Context.currentPos()
				};
				return macro {
					var obj = $e;
					$struct;
				}
			default:
		}
		return macro null;
	}

	private static function parseModule(module:String):String {
		var index = module.lastIndexOf(".");
		var name = module.substr(index + 1);
		module = module.substr(0, index);
		module = module.substr(module.lastIndexOf(".") + 1);
		if (module == name.charAt(0).toLowerCase() + name.substr(1))
			module = "main";
		return module;
	}
}
