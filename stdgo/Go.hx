package stdgo;

import haxe.Exception;
import haxe.io.Bytes;
import haxe.macro.Compiler;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.ExprTools;
import haxe.macro.PositionTools;
import haxe.macro.Type.BaseType;
import haxe.macro.Type.ClassField;
import haxe.macro.TypeTools;

class Go {
	public static var recover_exception:stdgo.StdGoTypes.AnyInterface = null;

	public static macro function map(exprs:Array<Expr>) {
		var keyType = null;
		var valueType = null;
		final keys:Array<Expr> = [];
		final values:Array<Expr> = [];
		for (expr in exprs) {
			switch expr.expr {
				case EBinop(op, key, value):
					if (keyType == null) {
						keyType = TypeTools.toComplexType(Context.typeof(key));
					}
					if (valueType == null)
						valueType = TypeTools.toComplexType(Context.typeof(value));
					keys.push(key);
					values.push(value);
				default:
			}
		}
		if (keyType == null || valueType == null) {
			switch Context.toComplexType(Context.getExpectedType()) {
				case TPath(p):
					if (p.name == "GoMap" && p.params != null && p.params.length == 2) {
						switch p.params[0] {
							case TPType(t):
								keyType = t;
							default:
						}
						switch p.params[1] {
							case TPType(t):
								valueType = t;
							default:
						}
					} else {
						Context.error("invalid map type", Context.currentPos());
					}
				default:
					Context.error("map expects a type", Context.currentPos());
			}
		}
		switch keyType {
			case TPath(p): // change String -> GoString, Int64 -> GoInt64 etc
				switch p {
					case {name: "Bytes", pack: ["haxe", "io"]}:
						keyType = TPath({name: "GoString", pack: ["stdgo"]});
					default:
				}
			default:
		}
		// TODO: look for GoInt to become Map<Int,Value> for better performance
		final e = macro new stdgo.GoMap<$keyType, $valueType>();
		final t = gtDecode(Context.typeof(e), e, []);
		final e = macro {
			final x = new stdgo.GoMap.GoObjectMap<$keyType, $valueType>(new stdgo.reflect.Reflect._Type($t));
			@:privateAccess x._keys = $a{keys};
			@:privateAccess x._values = $a{values};
			x;
		};
		return e;
	}

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

	public static macro function copySlice<T>(dst:Expr, src:Expr) {
		final e = macro {
			var dst = $dst;
			var src = $src;
			if (src == null || dst == null) {
				(0 : GoInt);
			} else {
				final min:Int = src.length > dst.length ? dst.length : src.length;
				for (i in 0...min) {
					dst[i] = src[i];
				}
				(min : GoInt);
			}
		};
		return e;
	}

	public static macro function str(exprs:Array<Expr>):Expr {
		var length = 0;
		var index = 0;
		// new haxe.io.Bytes().printExpr();
		// new haxe.io.Bytes().blit()
		for (i in 0...exprs.length) {
			// do switch statement here
			switch exprs[i].expr {
				case EConst(CString(s)):
					exprs[i] = macro b.addString($v{s});
					// length += s.length * 4;
					index += s.length * 4;
				case EConst(CInt(f)):
					exprs[i] = macro b.addByte($v{Std.parseInt(f)});
					length++;
					index++;
				default:
			}
		}
		final e = macro {
			final b = new haxe.io.BytesBuffer();
			$b{exprs};
			b.getBytes();
		};
		return macro($e : GoString);
	}

	public static function string(s:Dynamic):String {
		if ((s is stdgo.StdGoTypes.AnyInterfaceData)) {
			s = s.value;
		}
		if (!(s is String) && Reflect.isObject(s) && s.error != null)
			s = s.error();
		if ((s is haxe.io.Bytes)) // GoString is haxe.io.Bytes
			s = ((s : GoString) : String);
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
		sys.thread.Thread.createWithEventLoop(() -> {
			func();
		});
		#end
	}

	public static macro function unquote(qvalue:Expr):Expr {
		return macro stdgo.strconv.Strconv.unquote(qvalue);
	}

	public static macro function wrapper(e:Expr) { // define module to auto wrap named type
		var t = Context.typeof(e);
		var ct = Context.toComplexType(t);
		var p:TypePath = null;
		switch ct {
			case TPath(p):
				if (p.name == "Pointer" && p.pack.length == 1 && p.pack[0] == "stdgo" && p.params != null && p.params.length == 1) {
					switch p.params[0] {
						case TPType(t):
							ct = t;
						default:
					}
				}
			default:
		}
		t = Context.resolveType(ct, Context.currentPos());
		switch ct {
			case TPath(p2):
				p = p2;
				p.sub += "_asInterface";
				try {
					final ps:TypePath = {
						name: p.name,
						pack: p.pack,
						sub: p.sub,
						params: null,
					};
					t = Context.getType(new haxe.macro.Printer().printTypePath(ps));
				} catch (ex) {
					trace(ex);
					throw ex;
				}
			default:
		}
		final typeFields:Array<ClassField> = switch t {
			case TInst(_.get() => t, _):
				t.fields.get();
			default:
				throw "invalid: " + t;
		}
		final fieldExprs = [];
		for (field in typeFields) {
			if (field.name == "__self__" || field.name == "__underlying__")
				continue;
			final fieldName = field.name;
			fieldExprs.push(macro ___self___.$fieldName = stdgo.Go.typeFunction($e.$fieldName));
		}
		e = macro {
			final ___self___ = new $p($e);
			$b{fieldExprs};
			___self___;
		};
		trace(new haxe.macro.Printer().printExpr(e));
		e.pos = Context.currentPos();
		return e;
	}

	public static macro function typeFunction(e:Expr) {
		var t:haxe.macro.Type = null;
		var funArgs = [];
		switch e.expr {
			case ECall(e2, params):
				funArgs = params;
				e = e2;
			default:
		}
		try {
			t = Context.typeof(e);
		} catch (e) {
			// trace(e);
		}
		var selfType:ComplexType = null;
		var selfExpr:Expr = null;
		var field:String = "";
		if (t != null) {
			switch e.expr {
				case EField(e, f):
					try {
						// could check the Context.typeof and see if the type has a @:using as well
						selfType = Context.toComplexType(t);
						selfExpr = e;
						field = f;
					} catch (e) {
						trace(e);
					}
				default:
			}
		} else {
			switch e.expr {
				case EConst(CIdent(s)):
					field = s;
				default:
			}
			t = Context.getExpectedType();
			// trace(new haxe.macro.Printer().printComplexType(Context.toComplexType(t)));
		}
		if (t == null) {
			return e; // not being set to a variable
		}
		final name = "T_" + Context.signature(t);
		// trace(t);
		switch t {
			case TFun(args, ret):
				final modulePath = haxe.macro.Context.getLocalModule().split(".");
				var count = 0;
				final args = args.map(arg -> ({
					name: arg.name == "" ? "_" + (count++) : arg.name,
					opt: arg.opt,
					type: Context.toComplexType(arg.t)
				} : FunctionArg));
				var e:Expr = macro null;
				var block:Expr = macro null;
				funArgs = funArgs.concat(args.map(arg -> macro $i{arg.name}));
				final path = modulePath.copy();
				if (selfType != null) {
					final p:TypePath = {name: path.pop(), sub: name, pack: path};
					e = macro new $p($selfExpr).f;
					block = macro __self__.$field($a{funArgs});
				} else {
					// path.pop();
					block = macro $p{path}.$field($a{funArgs});
					path.push(name);
					e = macro $p{path}.f;
					// trace(new haxe.macro.Printer().printExpr(e));
				}
				// trace(ret, isVoid(ret));
				if (!isVoid(Context.followWithAbstracts(ret))) {
					block = macro return $block;
				}

				final td = {
					name: name,
					pos: Context.currentPos(),
					pack: [],
					fields: [
						{
							name: "f",
							pos: Context.currentPos(),
							access: [AStatic, APublic],
							kind: FFun({
								args: args,
								ret: Context.toComplexType(ret),
								expr: block,
							})
						}
					],
					kind: TDClass(),
				};

				// trace(new haxe.macro.Printer().printTypeDefinition(td));
				if (selfType != null) {
					td.fields[0].access.remove(AStatic);
					td.fields.push({
						name: "new",
						pos: Context.currentPos(),
						access: [AInline, APublic],
						kind: FFun({
							args: [{name: "__self__"}],
							expr: macro this.__self__ = __self__,
						})
					});
					td.fields.push({
						name: "__self__",
						pos: Context.currentPos(),
						access: [],
						kind: FVar(selfType),
					});
				}

				try {
					Context.defineModule(modulePath.join("."), [td], Context.getLocalImports());
				} catch (e) {
					throw e;
				}
				// trace(new haxe.macro.Printer().printTypeDefinition(td));
				return e;
			default:
				Context.fatalError("not valid function type: " + t, Context.currentPos());
		}
		throw "issue";
	}

	public static macro function expectedValue():Expr {
		var t = Context.getExpectedType();
		switch t {
			case TType(_.get() => t2, _):
				t = t2.type;
			default:
		}
		final t = gtDecode(t, null, []);
		return macro stdgo.reflect.Reflect.defaultValue(new stdgo.reflect.Reflect._Type($t));
	}

	public static macro function asInterface(expr) {
		final t = Context.toComplexType(Context.typeof(expr));
		switch t {
			case TPath(p):
				var self:Expr = {expr: expr.expr, pos: expr.pos};
				var selfPointer = false;
				if (p.sub == "Ref" && p.name == "StdGoTypes" && p.params != null && p.pack != null && p.pack.length == 1 && p.pack[0] == "stdgo"
					&& p.params.length == 1) {
					switch p.params[0] {
						case TPType(TPath(p2)):
							selfPointer = true;
							self = macro $self.value;
							p = p2;
						default:
					}
				}
				if (p.name == "Pointer" && p.params != null && p.pack != null && p.pack.length == 1 && p.pack[0] == "stdgo" && p.params.length == 1) {
					switch p.params[0] {
						case TPType(TPath(p2)):
							selfPointer = true;
							self = macro $self.value;
							p = p2;
						default:
					}
				}
				function createTypePath(s:String = "_asInterface") {
					final p:TypePath = {
						name: p.name,
						sub: p.sub,
						pack: p.pack,
						params: p.params
					};
					if (p.sub != null) {
						p.sub += s;
					} else {
						if (p.pack.length > 0) {
							p.sub = p.name + s;
						} else {
							p.name += s;
						}
					}
					return p;
				}
				final printer = new haxe.macro.Printer();
				final p = createTypePath();
				p.params = null;
				var s = printer.printTypePath(p);
				final t = Context.getType(printer.printTypePath(p));
				final p = createTypePath("_static_extension");
				p.params = null;
				switch t {
					case TInst(_.get() => t, params):
						final asInterfacePointer = t.meta.has(":pointer");
						if (params != null && params.length > 0) { // has params
							final p = createTypePath();
							final exprs = [macro final __self__ = new $p($expr)];
							final fields = t.fields.get();
							for (field in fields) {
								if (field.name == "__underlying__" || field.name == "__self__")
									continue;
								final isPointer = field.meta.has(":pointer");
								final methodName = field.name;
								switch field.type {
									case TFun(args, ret):
										final callArgs = args.map(arg -> macro $i{arg.name});
										if (isPointer) {
											if (!selfPointer) {
												callArgs.unshift(macro Go.pointer($expr));
											} else {
												callArgs.unshift(macro $expr);
											}
										}
										// callArgs.unshift(self);
										var e = macro $self.$methodName($a{callArgs});
										// trace("e: " + printer.printExpr(e));
										if (!isVoid(ret))
											e = macro return $e;
										final f = {
											expr: EFunction(FAnonymous, {
												expr: e,
												args: args.map(arg -> ({name: arg.name, type: Context.toComplexType(arg.t)} : FunctionArg)),
												ret: Context.toComplexType(ret),
											}),
											pos: Context.currentPos(),
										}
										exprs.push(macro __self__.$methodName = $f);
									default:
										throw "invalid field type: " + field.type;
								}
							}
							exprs.push(macro __self__);
							return macro $b{exprs};
						} else {
							final p = createTypePath();
							return macro new $p($expr);
						}
					default:
						Context.error("invalid type: " + t, Context.currentPos());
				}
			default:
				Context.error("invalid type: " + t, Context.currentPos());
		}
		return macro null;
	}

	public static macro function toInterface(expr) {
		#if go2hx_compiler
		return macro null;
		#else
		final expectedType = Context.getExpectedType();
		if (expectedType != null) {
			var error = false;
			switch expectedType {
				case TAbstract(t, params):
					switch t.toString() {
						case "stdgo.AnyInterface", "stdgo.unsafe.UnsafePointer":

						case "Null":
							error = params.length == 0;
						default:
							error = true;
					}
					if (error)
						Context.error("Go Invalid expected type Abstract: " + t.toString(), Context.currentPos());
				case TMono(_):
				case TDynamic(t):
					if (t != null)
						Context.error("Go Invalid expected type TDynamic: " + t, Context.currentPos());
				case TType(_, _):
				default:
					Context.error("Go Invalid expected type: " + expectedType, Context.currentPos());
			}
		}
		var t = Context.typeof(expr);
		var wrapped = false;
		var follow = true;
		switch t {
			case TType(_.get() => t, params):
				if (t.meta.has(":named")) {
					follow = false;
					wrapped = true;
					switch Context.toComplexType(Context.follow(t.type)) {
						case TPath(p):
							final std = p.name == "StdTypes" && p.params.length == 0 && p.pack.length == 0;
							final stdgo = p.name == "StdGoTypes" && p.params.length == 0 && p.pack.length == 1 && p.pack[0] == "stdgo";
							final string = p.name == "GoString" && p.params.length == 0 && p.pack.length == 1 && p.pack[0] == "stdgo";
							if (std || stdgo || string) expr = macro stdgo.Go.pointer($expr);
						default:
					}
				} else if (t.pack.length == 1
					&& t.pack[0] == "stdgo"
					&& (t.name != "GoByte" && t.name != "GoRune" && t.name != "GoFloat" && t.name != "GoUInt" && t.name != "GoInt")) {
					if (t.name == "Error") {
						follow = true;
						// trace(t.pack, t.name);
					} else {
						follow = false;
					}
				}
			case TAbstract(_, _):
				follow = false;
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
			case TAnonymous(_.get() => a):
				for (field in a.fields) {
					if (field.name == "__underlying__") {
						return macro $expr == null ? new stdgo.StdGoTypes.AnyInterface(null,
							new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.invalidType)) : $expr.__underlying__();
					}
				}
			default:
		}
		var ty = gtDecode(t, expr, []);
		var e = macro new stdgo.StdGoTypes.AnyInterface($expr, new stdgo.reflect.Reflect._Type($ty));
		e.pos = Context.currentPos();
		// trace(new haxe.macro.Printer().printExpr(e));
		return e;
		#end
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
					@:privateAccess stdgo.reflect.Reflect.directlyAssignable(v, $e.type) || v.implements_($e.type)
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
									new $p(() -> $expr, v -> $expr = v, true, underlying, underlyingIndex);
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
									final _offset_ = ${e1}.__getOffset__();
									final index = (${e2} : GoInt).toBasic() + _offset_;
									final underlying = ${e1}.__toVector__();
									var underlyingIndex = index;
									new $p(() -> ${e1}.__toVector__()[index], v -> ${e1}.__toVector__()[index] = v, false, underlying, underlyingIndex);
								};
							case "GoArray":
								return macro {
									final underlying = ${e1}.__toVector__();
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
			final param = params[i];
			pTypes.push(gtDecode(param, null, marked));
		}
		return pTypes;
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
					case "stdgo.DynamicInvalid":
						ret = macro stdgo.reflect.Reflect.GoType.invalidType;
					case "stdgo.Ref": // pointer with no overhead because the underlying type is a ref
						final type:haxe.macro.Type = params[0];
						final underlyingType = gtDecode(type, null, marked);
						ret = macro stdgo.reflect.Reflect.GoType.refType($underlyingType);
					default:
						final ref = t.get();
						switch ref.type {
							case TAnonymous(a):
								final path = ref.pack.concat([ref.name]).join(".");
								if (marked.exists(path)) {
									ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, [], stdgo.reflect.Reflect.GoType.invalidType);
								} else {
									marked[path] = true;
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
										methods.push(macro {name: $v{field.name}, type: ${gtDecode(field.type, null, marked)}, recv: null});
									}
									final path = createPath(ref.pack, ref.name);
									final empty = methods.length == 0;
									ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, [],
										stdgo.reflect.Reflect.GoType.interfaceType($v{empty}, $a{methods}));
								}
							default:
								if (ref.meta.has(":follow"))
									return gtDecode(Context.follow(ref.type, true), null, marked);
								if (ref.meta.has(":named") || ref.meta.has(":param")) {
									final path = ref.pack.concat([ref.name]).join(".");
									if (marked.exists(path)) {
										ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, [], stdgo.reflect.Reflect.GoType.invalidType);
									} else {
										marked[path] = true;
										var type:haxe.macro.Type = ref.type;
										final underlyingType = gtDecode(type, null, marked);
										final methods:Array<Expr> = [];
										try {
											final extensionType = Context.getType(ref.name + "_asInterface");
											final extension = switch extensionType {
												case TInst(_.get() => t, _):
													t;
												default:
													throw "invalid extension type";
											}
											var fs = extension.fields.get();
											final path = createPath(ref.pack, ref.name);
											for (field in fs) {
												switch field.kind {
													case FMethod(_):
														switch field.name {
															case "new", "__underlying__", "__t__":
																continue;
														}
														if (field.name == "toString" && field.meta.has(":implicit"))
															continue;
														switch field.type {
															case TLazy(f):
																continue;
															default:
														}
														// trace(field.name, field.type);
														final t = gtDecode(field.type, null, marked.copy(), ret);
														// trace(new haxe.macro.Printer().printExpr(t));
														final method = macro new stdgo.reflect.Reflect.MethodType($v{field.name}, $t, null);
														methods.push(method);
													default:
												}
											}
										} catch (e) {
											// trace(e);
										}
										ret = macro stdgo.reflect.Reflect.GoType.named($v{path}, $a{methods}, $underlyingType);
									}
								} else {
									Context.error("go unknown typedef: " + name, Context.currentPos());
								}
						}
				}
			case TMono(_):
				return macro stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind);
			case TAbstract(ref, params):
				var sref:String = ref.toString();
				switch (sref) {
					case "stdgo.Chan":
						var len = macro - 1;
						if (expr != null)
							len = macro($expr : Chan<Dynamic>).length.toBasic();
						ret = macro stdgo.reflect.Reflect.GoType.chanType($len, ${gtParams(params, marked)[0]});
					case "stdgo.Slice":
						ret = macro stdgo.reflect.Reflect.GoType.sliceType(${gtParams(params, marked)[0]});
					case "stdgo.GoArray":
						var len = macro - 1;
						if (expr != null)
							len = macro($expr : GoArray<Dynamic>).length.toBasic();
						ret = macro stdgo.reflect.Reflect.GoType.arrayType(${gtParams(params, marked)[0]},
							$len); // TODO go2hx does not store the length in the type
					case "stdgo.Pointer":
						ret = macro stdgo.reflect.Reflect.GoType.pointer(${gtParams(params, marked)[0]});
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
					case "stdgo.GoInt32", "haxe.Int32":
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
						ret = macro stdgo.reflect.Reflect.GoType.interfaceType(true, []);
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
				if (!marked.exists(refString)) {
					marked[refString] = true;
					if (ref.module == "String") {
						ret = macro stdgo.reflect.Reflect.GoType.basic(string_kind);
					} else {
						final methods:Array<Expr> = [];

						final path = createPath(ref.pack, ref.name);
						if (ref.meta.has(":using")) {
							final s = new haxe.macro.Printer().printExpr(ref.meta.extract(":using")[0].params[0]);
							switch Context.getType(s) {
								case TInst(_.get() => t, _):
									final fs = t.statics.get();
									for (field in fs) {
										switch field.kind {
											case FMethod(_):
												switch field.name {
													case "new", "__copy__", "__underlying__", "__t__", "__slice__", "__append__", "__set__":
														continue;
												}
												if (field.name == "toString" && field.meta.has(":implicit"))
													continue;
												switch field.type {
													case TLazy(f):
														continue;
													case TFun(args, ret2):
														args.shift();
														methods.push(macro new stdgo.reflect.Reflect.MethodType($v{field.name},
															${gtDecode(TFun(args, ret2), null, marked, ret)}, null));
													default:
												}
											default:
										}
									}
								default:
							}
						} else {
							final fs = ref.fields.get();
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
										methods.push(macro new stdgo.reflect.Reflect.MethodType($v{field.name}, ${gtDecode(field.type, null, marked, ret)},
											null));
									default:
								}
							}
						}
						ret = gtDecodeClassType(ref, methods, marked);
					}
				} else {
					var name = parseModule(ref.module) + "." + ref.name;
					ret = macro stdgo.reflect.Reflect.GoType.previouslyNamed($v{name});
				}
			case TFun(a, result):
				var args = [];
				for (arg in a) {
					args.push(gtDecode(arg.t, null, marked));
				}
				var results = [];
				// var voidBool = isVoid(Context.followWithAbstracts(result));
				switch result {
					case TAnonymous(a):
						final fields = a.get().fields;
						for (field in fields) {
							results.push(gtDecode(field.type, null, marked));
						}
					default:
				}
				if (results.length == 0) {
					results.push(gtDecode(result, null, marked));
				}
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
					methods.push(macro {
						name: $v{field.name},
						type: ${gtDecode(field.type, null, marked)},
						embedded: false,
						tag: "",
					});
				}
				final methods = macro $a{methods};
				ret = macro stdgo.reflect.Reflect.GoType.structType($methods);
			default:
				Context.error('reflect.cast_AnyInterface - unhandled typeof $t', Context.currentPos());
		}

		return ret;
	}

	static function isVoid(e:haxe.macro.Type):Bool {
		switch e {
			case TAbstract(t, _):
				return t.toString() == "Void";
			default:
		}
		return false;
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
					if (field.name == "__self__") {
						return gtDecode(field.type, null, marked);
					}
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
				var conds:Array<Expr> = [];
				var selectCond:Expr = null;
				var defaultBlock:Expr = null;
				var count = 0;

				function ifs(i:Int) {
					var value = values[i];
					var cond:Expr = null;
					var block:Expr = null;
					final varName = switch value.expr {
						case EVars(vars):
							value = vars[0].expr;
							vars[0].name;
						default:
							"_";
					}
					switch value.expr {
						case EBlock(exprs):
							defaultBlock = macro $b{exprs};
						case EBinop(OpArrow, e1, e2):
							block = e2;
							switch e1.expr {
								case ECall({expr: EField(e, field), pos: _}, params):
									final v = "_" + count++;
									exprs.push(macro var $v = $e);
									e = macro $i{v};
									exprs.push(macro $e.__mutex__.acquire());
									switch field {
										case "__get__":
											exprs.push(macro $e.__sendBool__ = true);
											cond = macro $e.__isGet__();
											switch block.expr {
												case EBlock(exprs):
													exprs.unshift(macro var $varName = $e.__get__());
												default:
											}
										case "__send__":
											exprs.push(macro $e.__getBool__ = true);
											cond = macro $e.__isSend__();
											switch block.expr {
												case EBlock(exprs):
													exprs.unshift(macro $e.__send__($a{params}));
												default:
											}
										default:
											Context.error("invalid field name: " + field, Context.currentPos());
									}
									exprs.push(macro $e.__mutex__.release());
								default:
									Context.error("invalid value call expr: " + value.expr, Context.currentPos());
							}
						default:
							Context.error("invalid value expr: " + value.expr, Context.currentPos());
					}
					if (cond == null) {
						return null;
					} else {
						switch cond.expr {
							case ECall(e, params):
								if (selectCond == null) {
									selectCond = macro $e(false);
								} else {
									selectCond = macro $selectCond || $e(false);
								}
								conds.push(macro $e(false));
							default:
						}
					}
					if (i + 1 >= values.length) {
						final e = macro if ($cond)
							$block;
						e.pos = Context.currentPos();
						return e;
					}
					final next = ifs(i + 1);
					return macro if ($cond)
						$block
					else
						$next;
				}

				final select = ifs(0);
				if (defaultBlock == null) {
					exprs.push(macro while (true) {
						// trace($a{conds});
						if ($selectCond)
							break;
						Sys.sleep(0.01);
						stdgo.internal.Async.tick();
					});
					exprs.push(select);
				} else {
					exprs.push(macro if ($selectCond) {
						$select;
					} else {
						$defaultBlock;
					});
				}
				// Sys.println(new haxe.macro.Printer().printExprs(exprs, ";\n"));
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
