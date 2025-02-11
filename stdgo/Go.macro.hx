package stdgo;

import haxe.macro.Type.TypeParameter;
import haxe.Exception;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

class Go {
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
		final t = macro new stdgo._internal.internal.reflect.Reflect._Type($t);
		final e = macro {
			final x = new stdgo.GoMap.GoObjectMap<$keyType, $valueType>(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(Go.pointer(t), t));
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
				(0 : stdgo.GoInt);
			} else {
				final min:Int = src.length > dst.length ? dst.length : src.length;
				for (i in 0...min) {
					dst[i] = src[i];
				}
				(min : stdgo.GoInt);
			}
		};
		return e;
	}

	public static macro function str(exprs:Array<Expr>):Expr {
		var length = 0;
		var index = 0;
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
		final e = macro({
			final b = new haxe.io.BytesBuffer();
			$b{exprs};
			b.getBytes();
		} : stdgo.GoString);
		return e;
	}

	public static macro function unquote(qvalue:Expr):Expr {
		return macro stdgo.strconv.Strconv.unquote(qvalue);
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
			trace(e);
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
					trace(e);
					//throw e;
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
		final t = macro new stdgo._internal.internal.reflect.Reflect._Type($t);
		return macro stdgo._internal.internal.reflect.Reflect.defaultValue(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer($t), $t));
	}

	public static macro function defaultValue(e:Expr):Expr {
		var t = Context.typeof(e);
		switch t {
			case TType(_.get() => t2, _):
				t = t2.type;
			default:
		}
		final ct = Context.toComplexType(t);
		final gt = gtDecode(t, null, []);
		final tmacro = macro new stdgo._internal.internal.reflect.Reflect._Type($gt);
		return macro (stdgo._internal.internal.reflect.Reflect.defaultValue(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer($tmacro), $tmacro)) : $ct);
	}
	/**
		Create an interface from a type of expr
		On the fly interface creation
	*/
	public static macro function asInterface(expr) {
		// trace(new haxe.macro.Printer().printExpr(expr));
		final selfType = Context.typeof(switch expr.expr {
			case ECall({expr: EField({expr: EField({expr: EConst(CIdent("stdgo"))}, "Go")}, "pointer"), pos: _}, _[0] => param):
				param;
			default:
				expr;
		});
		var t = Context.typeof(expr);
		switch t {
			case TInst(_.get() => t, _):
				if (t.name == "Value" && t.pack.join(".") == "stdgo.reflect")
					return expr;
			default:
		}
		final gt = gtDecode(t, expr, []);
		final rt = macro new stdgo._internal.internal.reflect.Reflect._Type($gt);
		var self:Expr = {expr: expr.expr, pos: expr.pos};
		var selfPointer = false;
		function f(ct:{name:String, pack:Array<String>, module:String}, params:Array<haxe.macro.Type>):Expr {
			function createTypePath(s:String = "_asInterface") {
				final module = ct.module.split(".");
				final p:TypePath = {
					sub: ct.name,
					name: module.pop(),
					pack: module,
					params: params.map(param -> @:privateAccess TypeTools.toTypeParam(param)),
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
				if (p.pack != ["stdgo"] && p.name == "Error") {

				}else{
					p.name += s.toLowerCase();
				}
				// trace(new haxe.macro.Printer().printTypePath(p));
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
						final exprs = [macro final __self__ = new $p($expr, $rt)];
						final fields = t.fields.get();
						for (field in fields) {
							if (field.name == "__underlying__" || field.name == "__self__" || field.name == "__type__")
								continue;
							final isPointer = field.meta.has(":pointer");
							final methodName = field.name;
							switch field.type {
								case TFun(args, ret):
									final genericArgs = [];
									for (arg in args) {
										if (arg.name.indexOf("__generic__") == 0) {
											args.remove(arg);
											genericArgs.push(arg);
										}
									}
									final callArgs = args.map(arg -> macro $i{arg.name});
									if (isPointer) {
										if (!selfPointer) {
											callArgs.unshift(macro Go.pointer($expr));
										} else {
											callArgs.unshift(macro $expr);
										}
									}
									switch selfType {
										case TInst(_, params), TType(_, params):
											for (param in params) {
												final ct = Context.toComplexType(param);
												callArgs.push(macro (cast(null) : $ct));
											}
										default:
									}
									// callArgs.unshift(self);
									var e = macro $self.value.$methodName($a{callArgs});
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
									// trace(new haxe.macro.Printer().printExpr(f));
									exprs.push(macro __self__.$methodName = $f);
								default:
									throw "invalid field type: " + field.type;
							}
						}
						exprs.push(macro __self__);
						return macro $b{exprs};
					} else {
						final p = createTypePath();
						if (!selfPointer)
							expr = macro stdgo.Go.pointer($expr);
							final e = macro @:pos(Context.currentPos()) new $p($expr, $rt);
							// trace(new haxe.macro.Printer().printExpr(e));
							return e;
					}
				default:
					Context.error("invalid type f asInterface: " + t, Context.currentPos());
					return null;
			}
		}
		function run():Expr {
			return switch t {
				case TType(_.get() => ct, params):
					if (ct.name == "Ref" && ct.pack != null && ct.pack.length == 1 && ct.pack[0] == "stdgo") {
						t = params[0];
						// selfPointer = true;
						return run();
					}
					if (ct.meta.has(":follow")) {
						t = ct.type;
						return run();
					}
					f(ct, params);
				case TInst(_.get() => ct, params):
					f(ct, params);
				case TAbstract(_.get() => ct, params):
					if (ct.name == "Null" && ct.pack == null || ct.pack.length == 0) {
						t = params[0];
						return run();
					}
					if (ct.name == "Pointer" && ct.pack != null && ct.pack[0] == "stdgo") {
						t = params[0];
						selfPointer = true;
						return run();
					}
					t = ct.type;
					return run();
				case TMono(_.get() => t2):
					if (t2 == null) {
						trace(Context.currentPos());
					}
					t = t2;
					run();
				case TAnonymous(_):
					expr;
				default:
					Context.error("invalid type run asInterface: " + t, Context.currentPos());
					null;
			}
		}
		return run();
	}

	// deprecated
	public static macro function select(e:Expr)
		return macro null;

	/*
		reference of an expression by returning a new expression that references the original one, but with additional modifications. The function can be used to create new objects, modify existing ones, or cast them into other types.
	 */
	public static macro function setRef(expr) {
		var t = Context.typeof(expr);
		function run() {
			switch t {
				case TType(_.get() => tt, _):
					switch tt.type {
						case TAnonymous(_):

						default:
							if (tt.meta.has(":named")) {
								t = tt.type;
								run();
							}
					}
				default:
			}
		}
		run();
		switch t {
			case TInst(_.get() => t, params):
				if (t.meta.has(":onlynameref")) {
					final module = t.module.split(".");
					final p:TypePath = {
						sub: t.name,
						name: module.pop(),
						pack: module,
						params: params.map(param -> @:privateAccess TypeTools.toTypeParam(param)),
					};
					return macro new $p();
				}
				return expr;
			case TAbstract(_.get() => at, _):
				final path = at.pack.join(".") + "." + at.name;
				switch path {
					case "stdgo.GoArray":
						return expr;
				}
			case TType(_.get() => at, _):
				final path = at.pack.join(".") + "." + at.name;
				switch path {
					case "stdgo.Ref":
						return expr;
					default:
				}
			default:
		}
		function gen(isNull:Bool) {
			return switch t {
				case TAbstract(_.get() => at, params):
					final path = at.pack.join(".") + "." + at.name;
					var value:Expr = null;
					switch path {
						case "stdgo.GoArray":
							return expr;
						case "stdgo.GoMap":
							return expr;
							final t = gtDecode(t, expr, []);
							final keyComplexType = Context.toComplexType(params[0]);
							final valueComplexType = Context.toComplexType(params[1]);
							value = macro (new stdgo.GoMap.GoObjectMap<$keyComplexType, $valueComplexType>() : stdgo.GoMap<$keyComplexType, $valueComplexType>);
						case "stdgo.Slice":
							value = macro new stdgo.Slice(0, -1);
						case "stdgo.AnyInterface":
							// force cast into
							value = macro new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.invalidType));
						case ".Null":
							t = params[0];
							value = gen(isNull);
						case "stdgo.Chan": // grab params for default value
							final t = Context.toComplexType(params[0]);
							value = macro new stdgo.Chan(-1,null);
						case "stdgo.Pointer":
							final t = Context.toComplexType(params[0]);
							value = macro new stdgo.Pointer(null);
						default:
							throw "invalid path tabstract setRef: " + path;
					}
					if (isNull)
						value = macro $value.__setNil__();
					value;
				case TType(_.get() => t, _):
					// create methods
					final fields:Array<ObjectField> = [];
					switch t.type {
						case TAnonymous(_.get() => a):
							for (field in a.fields) {
								fields.push({field: field.name, expr: macro null});
							}
						default:
							throw "invalid underlying type: " + t.type;
					}
					if (isNull)
						fields.push({field: "__nil__", expr: macro true});
					final obj:Expr = {expr: EObjectDecl(fields), pos: Context.currentPos()};
					macro cast $obj;
				case TFun(_, _):
					return expr;
				case TAnonymous(_):
					expr;
				case TInst(_):
					expr;
				default:
					throw "invalid t of gen setRef: " + t;
			}
		}
		switch expr.expr {
			case EConst(CIdent(s)):
				if (s == "null")
					return gen(true);
			default:
		}
		final valueNull = gen(false);
		final e = macro {
			if ($expr == null) {
				$valueNull;
			} else { 
				$expr;
			}
		};
		// trace(new haxe.macro.Printer().printExpr(e));
		return e;
	}

	public static macro function refPointer(expr:Expr):Expr {
		final exprType = Context.typeof(expr);
		if (exprType != null) {
			final ct = Context.toComplexType(exprType);
			// add support for the tuple case
			switch ct {
				case TPath(p):
					if (p.name == "Ref" && p.pack.length == 1 && p.pack[0] == "stdgo") {
						switch p.params[0] {
							case TPType(TPath(p)):
								switch p.name {
									case "GoString", "GoInt", "GoInt8", "GoInt16", "GoInt32", "GoInt64", "GoUInt", "GoUInt8", "GoUInt16", "GoUInt32", "GoUInt64", "GoFloat32", "GoFloat64", "GoComplex64", "GoComplex128", "GoByte", "GoRune":
										return macro stdgo.Go.pointer($expr);
									default:
								}
							default:
						}
					}
				default:
			}
		}
		return expr;
	}

	public static macro function toInterface(expr) {
		final expectedType = Context.getExpectedType();
		switch expr.expr {
			case EConst(CIdent(s)):
				if (s == "null")
					return macro new AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.invalidType));
			default:
		}
		if (expectedType != null) {
			var error = false;
			switch expectedType {
				case TAbstract(t, params):
					switch t.toString() {
						case "stdgo.AnyInterface", "stdgo._internal.unsafe.UnsafePointer":

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
		var follow = true;
		switch t {
			case TType(_.get() => t, params):
				if (t.meta.has(":named")) {
					follow = false;
				} else if (t.pack.length == 1
					&& t.pack[0] == "stdgo"
					&& (t.name != "GoByte" && t.name != "GoRune" && t.name != "GoFloat")) {
					if (t.name == "Error") {
						follow = true;
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
					expr = macro($expr : stdgo.GoString);
			case TAnonymous(_.get() => a):
				// trace(a.fields.map(field -> field.name));
				for (field in a.fields) {
					if (field.name == "__underlying__") {
						final gt = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(untyped_nil_kind);
						return macro @:pos(Context.currentPos()) ($expr == null ? new stdgo.AnyInterface(null,
							new stdgo._internal.internal.reflect.Reflect._Type($gt)) : new stdgo.AnyInterface($expr, $expr.__underlying__().type));
					}
				}
			default:
		}
		var ty = gtDecode(t, expr, []);
		var e = macro new stdgo.AnyInterface($expr, new stdgo._internal.internal.reflect.Reflect._Type($ty));
		e.pos = Context.currentPos();
		return e;
	}

	public static macro function typeAssert(expr:Expr) {
		function parens(expr) {
			return switch expr.expr {
				case EParenthesis(e): parens(e);
				default: expr;
			}
		}
		expr = parens(expr);
		switch expr.expr {
			case ECheckType(e, t): // e always an anyInterface
				final t2 = ComplexTypeTools.toType(t);
				if (t2 == null)
					Context.error("complexType converted to type is null", Context.currentPos());
				final toType = gtDecode(t2, null, []);
				// trace(new haxe.macro.Printer().printExpr(e));
				final e = @:pos(Context.currentPos()) macro({
					var t = new stdgo._internal.internal.reflect.Reflect._Type($toType);
					// trace($e.type._common());
					// trace(t._common());
					final e = $e;
					//trace(e.type.string().toString());
					//trace(t.string().toString());
					final b = e.type.assignableTo(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t), t));
					if (!b)
						throw "unable to assert";
					// interface kind check
					// interface
					if (t.kind() == 20) {
						var isPointer = false;
						var asInterface = false;
						final typ = std.Type.typeof(e.value);
						switch typ {
							case TClass(cl):
								final className = std.Type.getClassName(cl);
								if (StringTools.endsWith(className, "_asInterface")) {
									asInterface = true;
								} else if (className == "stdgo.PointerData") {
									isPointer = true;
								}
							default:
								var _ = false;
						}
						if (asInterface) {
							(e.value : $t);
						} else {
							var gt = e.type._common();
							if (isPointer) {
								gt = stdgo._internal.internal.reflect.Reflect.getElem(gt);
							}
							(stdgo._internal.internal.reflect.Reflect.asInterfaceValue(e.value, gt) : $t);
						}
					} else {
						// exclude basic types from using __underlying__ field access
						if (t.kind() >= 0 && t.kind() <= 17 || t.kind() == 19) {
							(e.value : $t);
						}else if ((e.value : Dynamic).__underlying__ == null) {
							(e.value : $t);
						} else {
							var value:Dynamic = (e.value : Dynamic).__underlying__().value;
							if (!(value is stdgo.Pointer.PointerData) && t.kind() == 22) {
								(stdgo.Go.pointer(value) : $t);
							} else {
								(value : $t);
							}
						}
					}
				});
				// trace(new haxe.macro.Printer().printExpr(e));
				return e;
			default:
				Context.error("unknown assignable expr: " + expr.expr, Context.currentPos());
				return macro null;
		}
	}

	public static macro function typeEquals(expr:Expr) {
		function removeParens(expr) {
			return switch expr.expr {
				case EParenthesis(e): removeParens(e);
				default: expr;
			}
		}
		expr = removeParens(expr);
		switch expr.expr {
			case ECheckType(e, t2):
				var t2 = ComplexTypeTools.toType(t2);
				if (t2 == null)
					Context.error("complexType converted to type is null", Context.currentPos());
				final t2 = gtDecode(t2, e, []);
				return macro {
					final __i__ = stdgo.Go.toInterface($e);
					if (__i__ == null) {
						// null AnyInterface
						false;
					}else{
						final t = __i__.type;
						var t2 = new stdgo._internal.internal.reflect.Reflect._Type(${t2});
						try {
							final b = t.assignableTo(new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(t2), t2));
							if (b) {
								if (t2.kind() != stdgo._internal.internal.reflect.Reflect.KindType.pointer
									&& t.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer
									&& !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(t)) {
									if ((untyped ($e : Dynamic).value is stdgo.Pointer.PointerData)) {
										final gt = stdgo._internal.internal.reflect.Reflect.getElem(t._common());
										untyped $e.value = stdgo._internal.internal.reflect.Reflect.asInterfaceValue(($e.value : stdgo.Pointer<Dynamic>).value, gt);
									}
								}
							}
							b;
						} catch (_) {
							false;
						}
					}
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
								/*final isLocal = Context.getLocalTVars().exists(s);
								final v = if (isLocal) {
									Context.getLocalMethod();
								} else {
									Context.getLocalModule();
								}
								return macro {
									final underlying = $v{v};
									final underlyingIndex = $v{s};
									new $p(() -> $expr, v -> $expr = v, true, underlying, underlyingIndex);
								};*/
						}
					default:
						declare = true;
				}
			case EField(e, field):
				e = try {
					Context.typeof(e);
					e;
				} catch (_) {
					// final path = new haxe.macro.Printer().printExpr(expr);
					macro null;
				}
				// trace(new haxe.macro.Printer().printExpr(expr));
				return macro {
					final underlying = $e;
					final underlyingIndex = $v{field};
					new $p(() -> $expr, v -> $expr = v, false, null, underlying, underlyingIndex);
				};
			case EArray(e1, e2):
				var t = Context.follow(Context.typeof(e1));
				switch t {
					case TAbstract(_.get() => at, params):
						if (at.name == "Pointer") {
							switch params[0] {
								case TAbstract(_.get() => t2, params2):
									at = t2;
									e1 = macro ${e1}.value;
								default:
							}
						}
						switch at.name {
							case "Slice", "GoArray":
								// trace(new haxe.macro.Printer().printExpr(e2));
								// trace(new haxe.macro.Printer().printExpr(e1));
								//trace(new haxe.macro.Printer().printComplexType(Context.toComplexType(t)));
								final expr = macro {
									final _offset_ = ${e1}.__getOffset__();
									final index = (${e2} : stdgo.GoInt).toBasic() + _offset_;
									final underlying = ${e1}.__toBasic__();
									var underlyingIndex = index;
									final get = () -> underlying.get(index);
									final set = v -> underlying.set(index, v);
									final ptr = new $p(get, set, false, null, underlying, underlyingIndex);
									(ptr : stdgo.Pointer.PointerData<Any>).underlying = underlying;
									ptr;
								};
								// trace(new haxe.macro.Printer().printExpr(expr));
								return expr;
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
				case EContinue: macro @:mergeBlock {
						$post;
						$expr;
					}
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				// case EIn(_): expr;
				default: haxe.macro.ExprTools.map(expr, func);
			}
		}
		expr = func(expr);
		#end
		var exprMacro = macro while ($cond) {
			$expr;
			$post;
		};
		return exprMacro;
	}

	#if macro
	// reflect decode
	private static function gtParams(params:Array<haxe.macro.Type>, marked:Map<String, Bool>, ?expr:Expr):Array<Expr> {
		var pTypes = [];
		for (i in 0...params.length) {
			final param = params[i];
			pTypes.push(gtDecode(param, expr, marked));
		}
		return pTypes;
	}

	// this stays in macro only context
	static final nameTypes:Map<String, Expr> = [];

	static function getTypeInfoData(path:String):Expr {
		final e = macro stdgo._internal.internal.TypeInfo.names[$v{path}];
		e.pos = Context.currentPos();
		return e;
	}

	public static function gtDecode(t:haxe.macro.Type, expr:Expr, marked:Map<String, Bool>, recv:Expr = null):Expr {
		final marked = marked.copy();
		var ret = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
		switch (t) {
			case TType(t, params):
				final name = t.toString();
				switch name {
					case "stdgo.GoInt":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind);
					case "stdgo.GoUInt":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint_kind);
					case "stdgo.unsafe.Pointer_":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind);
					case "stdgo GoUnTypedInt":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(untyped_int_kind);
					case "stdgo.GoUnTypedFloat":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(untyped_float_kind);
					case "stdgo.GoUnTypedComplex":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(untyped_complex_kind);
					case "stdgo.GoRune":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind);
					case "stdgo.GoByte":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind);
					case "stdgo.GoUnTypedInt":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind);
					case "stdgo.DynamicInvalid":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
					case "stdgo.Ref": // pointer with no overhead because the underlying type is a ref
						final type:haxe.macro.Type = params[0];
						final underlyingType = gtDecode(type, expr, marked);
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.refType({get: () -> $underlyingType});
					default:
						final ref = t.get();
						switch ref.type {
							case TAnonymous(a):
								final path = createPath(ref.module, ref.name);
								// path cache
								if (nameTypes.exists(path))
									return getTypeInfoData(path);
								if (marked.exists(path)) {
									ret = macro stdgo._internal.internal.reflect.Reflect.GoType.named($v{path}, [], stdgo._internal.internal.reflect.Reflect.GoType.invalidType,
										false, {
											get: () -> null
										});
								} else {
									marked[path] = true;
									final a = a.get();
									a.fields.sort((a, b) -> {
										return haxe.macro.Context.getPosInfos(a.pos).min - haxe.macro.Context.getPosInfos(b.pos).min;
									});
									if (ref.meta.has(":using")) {
										final fields:Array<Expr> = [];
										for (field in a.fields) {
											final fieldName = field.name;
											switch fieldName {
												case "__underlying__":
													continue;
												default:
											}
											// final embedded = field.meta.has(":embedded") ? macro true : macro false;
											final t = gtDecode(field.type, expr != null ? macro $expr.$fieldName : null, marked);
											fields.push(macro {
												name: $v{fieldName},
												type: {get: () -> $t},
												embedded: false,
												tag: "",
												optional: false,
											});
										}
										final fields = macro $a{fields};
										return macro stdgo._internal.internal.reflect.Reflect.GoType.structType($fields);
									} else {
										final methods:Array<Expr> = [];
										for (field in a.fields) {
											switch field.name {
												case "__underlying__":
													continue;
												default:
											}
											// final embedded = field.meta.has(":embedded") ? macro true : macro false;
											final t = gtDecode(field.type, null, marked);
											if (field.meta.has(":pointer"))
												ret = macro stdgo._internal.internal.reflect.Reflect.GoType.pointerType({get: () -> $ret});
											methods.push(macro {name: $v{field.name}, type: {get: () -> $t}, recv: {get: () -> $ret}});
										}
										final empty = methods.length == 0;
										Go.nameTypes[path] = macro stdgo._internal.internal.reflect.Reflect.GoType.named($v{path}, $a{methods},
											stdgo._internal.internal.reflect.Reflect.GoType.interfaceType($v{empty}, $a{methods}), false, {
												get: () -> null
											});
										final e = getTypeInfoData(path);
										e.pos = Context.currentPos();
										return e;
									}
								}
							default:
								if (ref.meta.has(":follow"))
									return gtDecode(Context.follow(ref.type, true), expr, marked);
								if (ref.meta.has(":named") || ref.meta.has(":param")) {
									final path = createPath(ref.module, ref.name);
									if (marked.exists(path)) {
										ret = macro stdgo._internal.internal.reflect.Reflect.GoType.named($v{path}, [],
											stdgo._internal.internal.reflect.Reflect.GoType.invalidType, false, {
												get: () -> null
											});
									} else {
										marked[path] = true;
										if (Go.nameTypes.exists(path))
											return getTypeInfoData(path);
										var type:haxe.macro.Type = ref.type;
										final underlyingType = gtDecode(type, expr, marked);
										final methods:Array<Expr> = [];
										final extensionPath = ref.module + "_asinterface." + ref.name + "_asInterface";
										var extensionType = null;
										try {
											extensionType = Context.getType(extensionPath);
										} catch (e) {
											//throw e;
										}
										if (extensionType != null) {
											final extension = switch extensionType {
												case TInst(_.get() => t, _):
													t;
												default:
													throw "invalid extension type";
											}
											var fs = extension.fields.get();
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
																try {
																	field.type = f();
																} catch (e) {
																	continue;
																}
															default:
														}
														if (field.meta.has(":pointer"))
															ret = macro stdgo._internal.internal.reflect.Reflect.GoType.pointerType({get: () -> $ret});
														final t = gtDecode(field.type, expr, marked.copy(), ret);
														//trace(new haxe.macro.Printer().printExpr(t));
														final method = macro new stdgo._internal.internal.reflect.Reflect.MethodType($v{field.name}, {get: () -> $t},
														// recv
															{get: () -> $ret});
														//trace(field.meta.has(":pointer"));
														//trace(field.type);
														methods.push(method);
													default:
												}
											}
										}
										var isInvalidNamed = false;
										switch type {
											case TInst(_, _):
												isInvalidNamed = true;
											case TType(_.get() => t, _):
												isInvalidNamed = t.meta.has(":named") || t.meta.has(":param");
											case TAbstract(_.get() => t, _):
												isInvalidNamed = t.module == "stdgo.GoArray";
											default:
										}
										final e = macro stdgo._internal.internal.reflect.Reflect.GoType.named($v{path}, $a{methods}, $underlyingType, false,
											{get: () -> null});
										if (isInvalidNamed) {
											return e;
										} else {
											Go.nameTypes[path] = e;
											return getTypeInfoData(path);
										}
									}
								} else {
									Context.error("go unknown typedef: " + name, Context.currentPos());
								}
						}
				}
			case TMono(_):
				return macro stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind);
			case TAbstract(ref, params):
				var sref:String = ref.toString();
				switch (sref) {
					case "haxe.io.Bytes":
						macro stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind);
					case "stdgo.Chan":
						var len = macro(-1);
						if (expr != null) { // check for stdgo.reflect.Value
							final t = Context.follow(Context.typeof(expr));
							switch t {
								case TInst(_.get() => ct, _):
									if (ct.pack != null && ct.pack[0] == "stdgo" && ct.pack[1] == "reflect" && ct.name == "Value") {
										len = macro $expr.len().toBasic();
									}
								case TFun(_):
								case TAbstract(_.get() => ct, _):
									if (ct.pack != null && ct.pack[0] == "stdgo" && ct.name == "Chan") {
										len = macro $expr.length.toBasic();
									}
								default:
							}
						}
						final param = gtParams(params, marked)[0];
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.chanType($len, {get: () -> $param});
					case "stdgo.Slice":
						final param = gtParams(params, marked)[0];
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.sliceType({get: () -> $param});
					case "stdgo.GoArray":
						var len = macro -1;
						if (expr != null) { // check for stdgo.reflect.Value
							final t = Context.follow(Context.typeof(expr));
							switch t {
								case TInst(_.get() => ct, _):
									if (ct.pack != null && ct.pack[0] == "stdgo" && ct.pack[1] == "reflect" && ct.name == "Value") {
										len = macro $expr.len().toBasic();
									}
								case TFun(_):
								case TAbstract(_.get() => ct, _):
									if (ct.pack != null && ct.pack[0] == "stdgo" && ct.name == "GoArray") {
										len = macro $expr.length.toBasic();
									}
								default:
							}
						}
						final param = gtParams(params, marked)[0];
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.arrayType({get: () -> $param}, $len);
					case "stdgo.Pointer":
						final param = gtParams(params, marked)[0];
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.pointerType({get: () -> $param});
					case "stdgo._internal.UnsafePointer", "stdgo._internal.Unsafe.UnsafePointer", "stdgo._internal.unsafe.UnsafePointer":
						return macro stdgo._internal.internal.reflect.Reflect.GoType.basic(unsafepointer_kind);
					case "stdgo.GoMap":
						var ps = gtParams(params, marked);
						ps = ps.map(p -> macro {get: () -> $p});
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.mapType($a{ps});
					case "haxe.Rest":
						final param = gtParams(params, marked)[0];
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.sliceType({get: () -> $param});
					case "stdgo.GoInt8":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int8_kind);
					case "stdgo.GoInt16":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int16_kind);
					case "stdgo.GoInt32", "haxe.Int32":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind);
					case "Int":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int_kind);
					case "stdgo.GoInt64":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind);
					case "stdgo.GoUInt8":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind);
					case "stdgo.GoUInt16":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint16_kind);
					case "stdgo.GoUInt32":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint32_kind);
					case "stdgo.GoUInt64":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uint64_kind);
					case "stdgo.GoString", "String":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind);
					case "stdgo.GoComplex64":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(complex64_kind);
					case "stdgo.GoComplex128":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(complex128_kind);
					case "stdgo.ComplexType":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(complex128_kind);
					case "stdgo.GoFloat32":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(float32_kind);
					case "stdgo.GoFloat64", "Float":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(float64_kind);
					case "stdgo.FloatType":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(float64_kind);
					case "Bool":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(bool_kind);
					case "stdgo.GoUIntptr":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind);
					case "stdgo.AnyInterface":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []);
					case "haxe.Function":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.signature(false, {get: () -> []}, {get: () -> []},
							{get: () -> stdgo._internal.internal.reflect.Reflect.GoType.invalidType});
					case "Null":
						final param = gtParams(params, marked, expr)[0];
						ret = param;
					case "Void":
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType; // Currently no value is supported for Void however in the future, there will be a runtime value to match to it. HaxeFoundation/haxe-evolution#76
					default: // used internally such as reflect.Kind
						final t = ref.get().type;
						final tstr = Std.string(t);
						if (!marked.exists(tstr)) {
							marked[tstr] = true;
							ret = gtDecode(t, expr, marked);
						}
				}
			case TInst(ref, params):
				final refString = ref.toString();
				var ref = ref.get();
				if (!marked.exists(refString)) {
					marked[refString] = true;
					if (ref.module == "String") {
						ret = macro stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind);
					} else {
						final methods:Array<Expr> = [];
						final path = createPath(ref.module, ref.name);
						// patch cache
						if (Go.nameTypes.exists(path))
							return getTypeInfoData(path);
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
														try {
															field.type = f();
														} catch (e) {
															continue;
														}
													default:
												}
												switch field.type {
													case TFun(args, ret2):
														args.shift();
														final t = gtDecode(TFun(args, ret2), expr, marked, ret);
														methods.push(macro new stdgo._internal.internal.reflect.Reflect.MethodType($v{field.name}, {get: () -> $t},
															{get: () -> null}));
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
										final t = gtDecode(field.type, expr, marked, ret);
										methods.push(macro new stdgo._internal.internal.reflect.Reflect.MethodType($v{field.name}, {get: () -> $t}, {
											get: () -> null
										}));
									default:
								}
							}
						}

						ret = gtDecodeClassType(ref, methods, marked, expr);
					}
				} else {
					var name = parseModule(ref.module) + "." + ref.name;
					ret = macro stdgo._internal.internal.reflect.Reflect.GoType.previouslyNamed($v{name});
				}
			case TFun(a, result):
				var args = [];
				for (arg in a) {
					args.push(gtDecode(arg.t, expr, marked));
				}
				var results = [];
				switch result {
					case TAnonymous(a):
						final fields = a.get().fields;
						for (field in fields) {
							results.push(gtDecode(field.type, expr, marked));
						}
					default:
				}
				if (results.length == 0) {
					final voidBool = isVoid(Context.followWithAbstracts(result));
					if (!voidBool)
						results.push(gtDecode(result, expr, marked));
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
				var recvExpr = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
				if (recv != null)
					recvExpr = recv;
				ret = macro stdgo._internal.internal.reflect.Reflect.GoType.signature($variadic, {get: () -> $a{args}}, {get: () -> $a{results}},
					{get: () -> $recvExpr});
			case TDynamic(t):
				ret = macro stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, []);
			case TLazy(f):
				ret = gtDecode(f(), expr, []);
			case TEnum(_, _):
				ret = macro stdgo._internal.internal.reflect.Reflect.GoType.invalidType;
			case TAnonymous(a):
				final a = a.get();
				a.fields.sort((a, b) -> {
					return haxe.macro.Context.getPosInfos(a.pos).min - haxe.macro.Context.getPosInfos(b.pos).min;
				});
				final methods:Array<Expr> = [];
				for (field in a.fields) {
					final fieldName = field.name;
					switch fieldName {
						case "__underlying__":
							continue;
						default:
					}
					// final embedded = field.meta.has(":embedded") ? macro true : macro false;
					final t = gtDecode(field.type, expr != null ? macro $expr.$fieldName : null, marked);
					methods.push(macro {
						name: $v{fieldName},
						type: {get: () -> $t},
						embedded: false,
						tag: "",
						optional: false,
					});
				}
				final fields = macro $a{methods};
				return macro stdgo._internal.internal.reflect.Reflect.GoType.structType($fields);
			default:
				Context.error('reflect.cast_AnyInterface - unhandled typeof $t', Context.currentPos());
		}
		// if (new haxe.macro.Printer().printExpr(ret) == "stdgo._internal.internal.reflect.Reflect.GoType.invalidType")
		//	trace(t);
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

	static function createPath(module:String, name:String):String {
		return module + "." + name;
	}

	static function gtDecodeClassType(ref:haxe.macro.Type.ClassType, methods:Array<Expr>, marked:Map<String, Bool>, expr:Expr):Expr {
		var fields:Array<Expr> = [];
		var fs = ref.fields.get();
		var underlyingType:haxe.macro.Type = null;
		var module = parseModule(ref.module);
		final path = createPath(ref.module, ref.name);
		if (nameTypes.exists(path))
			return getTypeInfoData(path);
		for (field in fs) {
			if (field.meta.has(":local"))
				continue;
			switch field.kind {
				case FMethod(k):
				default:
					final fieldName = field.name;
					if (fieldName == "__self__") {
						return macro @:privateAccess $expr.__type__._common(); // __underlying__().type._common();
					}
					if (fieldName == "__t__") {
						underlyingType = field.type;
						continue;
					}
					final expr = null; // expr != null ? macro $expr.$fieldName : null;
					var t = gtDecode(field.type, expr, marked);
					final embedded = field.meta.has(":embedded") ? macro true : macro false;
					final tag = field.meta.has(":tag") ? field.meta.extract(":tag")[0].params[0] : macro "";
					fields.push(macro new stdgo._internal.internal.reflect.Reflect.FieldType($v{fieldName}, {get: () -> $t}, $tag, $embedded, false));
			}
		}
		var fields = macro $a{fields};
		var t = macro stdgo._internal.internal.reflect.Reflect.GoType.structType($fields);
		if (ref.meta.has(":named") && underlyingType != null) {
			t = gtDecode(underlyingType, expr, marked);
		}
		Go.nameTypes[path] = macro stdgo._internal.internal.reflect.Reflect.GoType.named($v{path}, $a{methods}, $t, false, {get: () -> null});
		return getTypeInfoData(path);
	}
	#end

	public static macro function min(exprs:Array<Expr>) {
		final block:Array<Expr> = [macro var num = ${exprs[0]}];
		for (i in 1...exprs.length) {
			block.push(macro if (num > ${exprs[i]}) num = ${exprs[i]});
		}
		block.push(macro num);
		return macro $b{block};
	}

	public static macro function max(exprs:Array<Expr>) {
		final block:Array<Expr> = [macro var num = ${exprs[0]}];
		for (i in 1...exprs.length) {
			block.push(macro if (num < ${exprs[i]}) num = ${exprs[i]});
		}
		block.push(macro num);
		return macro $b{block};
	}
	

	public static macro function setKeys(expr:Expr) {
		var t = Context.toComplexType(Context.getExpectedType());
		return macro($expr : $t);
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