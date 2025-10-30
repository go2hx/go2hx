package go;

import haxe.macro.Type.TypeParameter;
import haxe.Exception;
import haxe.macro.ComplexTypeTools;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;

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

	public static macro function copySlice<T>(dst:Expr, src:Expr) {
		final e = macro {
			var dst = $dst;
			var src = $src;
			if (src == null || dst == null) {
				(0 : go.GoInt);
			} else {
				final min:Int = src.length > dst.length ? dst.length : src.length;
				for (i in 0...min) {
					dst[i] = src[i];
				}
				(min : go.GoInt);
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
		} : go.GoString);
		return e;
	}

	public static macro function unquote(qvalue:Expr):Expr {
		return macro go.strconv.Strconv.unquote(qvalue);
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
					// throw e;
				}
				// trace(new haxe.macro.Printer().printTypeDefinition(td));
				return e;
			default:
				Context.fatalError("not valid function type: " + t, Context.currentPos());
		}
		throw "issue";
	}

	/**
		Create an interface from a type of expr
		On the fly interface creation
	 */
	public static macro function asInterface(expr, ?gt) {
		final selfType = Context.typeof(switch expr.expr {
			case ECall({expr: EField({expr: EField({expr: EConst(CIdent("go"))}, "Go")}, "pointer"), pos: _}, _[0] => param):
				param;
			default:
				expr;
		});
		var t = Context.typeof(expr);
		switch t {
			case TInst(_.get() => t, _):
				if (t.name == "Value" && t.pack.join(".") == "go.reflect")
					return expr;
			default:
		}
		final rt = macro new go._internal.internal.reflect.Reflect._Type($gt);
		var self:Expr = {expr: expr.expr, pos: expr.pos};
		var selfPointer = false;
		function f(ct:{name:String, pack:Array<String>, module:String}, params:Array<haxe.macro.Type>):Expr {
			function createTypePath(isLocal:Bool, s:String = "_asInterface") {
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
				if (isLocal)
					return p;
				if (p.pack != ["go"] && p.name == "Error") {} else {
					p.name += s.toLowerCase();
				}
				// trace(new haxe.macro.Printer().printTypePath(p));
				return p;
			}
			final printer = new haxe.macro.Printer();
			var p = null;
			var s = "";
			var t = null;
			var isLocal = false;
			try {
				p = createTypePath(isLocal);
				p.params = null;
				t = Context.getType(printer.printTypePath(p));
				s = printer.printTypePath(p);
			} catch (e) {
				isLocal = true;
			}

			if (isLocal) {
				p = createTypePath(isLocal);
				p.params = null;
				t = Context.getType(printer.printTypePath(p));
				s = printer.printTypePath(p);
			}

			p = createTypePath(isLocal, "_static_extension");
			p.params = null;
			switch t {
				case TType(_.get() => t2, _):
					t = t2.type;
				default:
			}
			switch t {
				case TInst(_.get() => t, params):
					final asInterfacePointer = t.meta.has(":pointer");
					if (params != null && params.length > 0) { // has params
						if (!selfPointer)
							expr = macro go.Go.pointer($expr);
						final p = createTypePath(isLocal);
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
									// callArgs.unshift(self);
									var e = if (isPointer) {
										macro @:privateAccess __self__.__self__.$methodName($a{callArgs});
									} else {
										macro @:privateAccess __self__.__self__.value.$methodName($a{callArgs});
									}
									if (!isVoid(ret))
										e = macro return $e;
									final f = {
										expr: EFunction(FAnonymous, {
											expr: e,
											args: args.map(arg -> ({name: arg.name, type: null} : FunctionArg)),
											ret: null,
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
						// trace(new haxe.macro.Printer().printExpr(macro $b{exprs}));
						return macro $b{exprs};
					} else {
						final p = createTypePath(isLocal);
						if (!selfPointer)
							expr = macro go.Go.pointer($expr);
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
					if (ct.meta.has(":follow")) {
						t = ct.type;
						return run();
					}
					f(ct, params);
				case TInst(_.get() => ct, params):
					switch ct.kind {
						case KTypeParameter(_):
							return expr;
						default:
					}
					f(ct, params);
				case TAbstract(_.get() => ct, params):
					if (ct.name == "Null" && ct.pack == null || ct.pack.length == 0) {
						t = params[0];
						return run();
					}
					if (ct.name == "Pointer" && ct.pack != null && ct.pack[0] == "go") {
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
		final result = run();
		// trace(new haxe.macro.Printer().printExpr(result));
		return result;
	}

	// deprecated
	public static macro function select(e:Expr)
		return macro null;

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
		var p:TypePath = {name: "Pointer", pack: ["go"]};
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
								// trace(new haxe.macro.Printer().printComplexType(Context.toComplexType(t)));
								final expr = macro {
									final _offset_ = ${e1}.__getOffset__();
									final index = (${e2} : go.GoInt).toBasic() + _offset_;
									final underlying = ${e1}.__toBasic__();
									var underlyingIndex = index;
									final get = () -> underlying.get(index);
									final set = v -> underlying.set(index, v);
									final ptr = new $p(get, set, false, null, underlying, underlyingIndex);
									(ptr : go.Pointer.PointerData<Any>).underlying = underlying;
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

	public static macro function min(exprs:Array<Expr>) {
		final t = Context.follow(Context.typeof(exprs[0]));
		var isFloat = false;
		switch t {
			case TAbstract(_.get() => t, _):
				if (t.pack.length == 1 && t.pack[0] == "go" && (t.name == "GoFloat64" || t.name == "GoFloat32"))
					isFloat = true;
			default:
		}
		final block:Array<Expr> = [macro var num = ${exprs[0]}];
		for (i in 1...exprs.length) {
			block.push(macro if (num > ${exprs[i]}) num = ${exprs[i]});
			if (isFloat)
				block.push(macro if (Math.isNaN(${exprs[i]})) num = ${exprs[i]});
		}
		block.push(macro num);
		return macro $b{block};
	}

	public static macro function max(exprs:Array<Expr>) {
		final t = Context.follow(Context.typeof(exprs[0]));
		var isFloat = false;
		switch t {
			case TAbstract(_.get() => t, _):
				if (t.pack.length == 1 && t.pack[0] == "go" && (t.name == "GoFloat64" || t.name == "GoFloat32"))
					isFloat = true;
			default:
		}
		final block:Array<Expr> = [macro var num = ${exprs[0]}];
		for (i in 1...exprs.length) {
			block.push(macro if (num < ${exprs[i]}) num = ${exprs[i]});
			if (isFloat)
				block.push(macro if (Math.isNaN(${exprs[i]})) num = ${exprs[i]});
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
