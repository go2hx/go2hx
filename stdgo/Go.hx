package stdgo;

import haxe.macro.PositionTools;
import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;
import stdgo.StdGoTypes.IntegerType;

class Go {
	public static var addressIndex:Int = 1;

	public static function defaultValue(t:ComplexType, pos:Position, strict:Bool = true):Expr {
		switch t {
			case TFunction(args, ret):
				return macro null;
			case TPath(p):
				var name = p.name;
				if (p.name == "StdGoTypes" || p.name == "StdTypes")
					name = p.sub;
				switch name {
					case "Void":
						return null;
					case "GoArray":
						return macro new $p();
					case "FloatType", "IntegerType", "GoByte", "GoRune", "GoInt", "GoUInt", "GoUInt8", "GoUInt16", "GoUInt32", "GoUInt64", "GoInt8",
						"GoInt16", "GoInt32", "GoInt64", "GoFloat32", "GoFloat64", "GoComplex64", "GoComplex128":
						if (strict)
							return macro(0 : $t);
						return macro 0;
					case "AnyInterface":
						return macro new AnyInterface(null);
					case "GoDynamic", "Any", "Dynamic":
						return macro {};
					case "Bool":
						return macro false;
					case "Pointer", "PointerWrapper", "GoArrayPointer":
						return macro null;
					case "GoString":
						if (strict)
							return macro("" : GoString);
						return macro "";
					case "Chan":
						return macro null;
					case "GoMap":
						switch p.params[1] { //value default value add
							case TPType(t):
								return macro new $p(${Go.defaultValue(t,null,false)});
							default:
						}
					default:
						return macro new $p();
				}
			case TAnonymous(fields):
				return {
					pos: pos,
					expr: EObjectDecl([
						for (field in fields) {
							var type:ComplexType = null;
							switch field.kind {
								case FVar(t, e):
									type = t;
								default:
							}
							{
								field: field.name,
								expr: defaultValue(type, pos),
							};
						}
					])
				};
			default:
				trace("unknown type for default value: " + t);
		}
		return macro null;
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

	public static macro function make(t:Expr, ?size:Expr, ?cap:ExprOf<IntegerType>) { // for slice/array and map
		// convert from int64 to int
		if (size == null || size.expr.match(EConst(CIdent("null"))))
			size = macro 0;
		if (cap == null || cap.expr.match(EConst(CIdent("null"))))
			cap = macro 0;

		var t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(getType(t))));
		if (t == null)
			throw t;
		var func = null;
		func = function():Expr {
			switch t {
				case TPath(p):
					var name = p.name;
					switch name {
						case "Slice":
							if (size == null)
								return macro new $p();
							var value:Expr = null;
							switch p.params[0] {
								case TPType(t):
									t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
									value = defaultValue(t, Context.currentPos());
								default:
							}
							return macro {
								var slice = new $p();
								var size:IntegerType = $size;
								var value = $value;
								slice.grow(size);
								var i = 0;
								while (i < size) {
									slice[i] = value;
									i++;
								}
								slice;
							};
						case "GoArray":
							throw("cannot make GoArray must be type generated");
						case "GoMap":
							switch p.params[1] {
								case TPType(t):
									t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
									return macro new $p(${defaultValue(t, Context.currentPos(), false)});
								default:
							}
							return null;
						case "Chan":
							switch p.params[0] {
								case TPType(t):
									t = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
									return macro new $p($size, ${defaultValue(t, Context.currentPos(), false)});
								default:
							}
							return null;
						default:
							trace("make unknown: " + p);
							return null;
					}
				default:
					trace("make unknown: " + t);
					return null;
			}
		}
		return func();
	}

	public static macro function copy<T>(dst:Expr, src:ExprOf<Slice<T>>) {
		var type = Context.toComplexType(Context.follow(Context.typeof(dst)));
		switch type {
			case TPath(p):
				switch p.name {
					case "Slice":
						return macro {
							var src = $src;
							var dst = $dst;
							var length = dst.length >= src.length ? src.length : dst.length; // min length
							for (i in 0...length.toBasic()) {
								dst[i] = src[i];
							}
							length;
						}
					default:
						trace("unknown copy type path: " + p.name);
				}
			default:
				trace("unknown copy type: " + type);
		}
		return src;
	}

	public static macro function passCopy(expr) { // slices and maps are ref types
		var type = Context.follow(Context.typeof(expr));
		var exception = false;
		switch expr.expr {
			case ENew(t, params):
				exception = true;
			case EArrayDecl(values):
				exception = true;
			case EObjectDecl(fields):
				exception = true;
			case EIs(e, t):
				exception = true;
			case EConst(c):
				switch c {
					case CIdent(s):
						if (s == "null") exception = true;
					default:
				}
			case EBinop(op, e1, e2):
				exception = true;
			case ECall(e, params):
				switch e.expr {
					case EField(f, field):
						switch f.expr {
							case EConst(c):
								switch c {
									case CIdent(s):
										trace("s: " + s);
										if (s == "Go" || s == "Map" || s == "Array" || s == "Slice") // map and array is by ref
											exception = true;
									default:
								}
							default:
						}
					default:
				}
			case EField(e, field):
				exception = true;
			// trace("e: " + e);
			case EArray(e1, e2): // expr[i] : passthrough
			default:
				trace("expr: " + expr.expr);
		}
		if (isBasic(type) || exception) {
			return expr;
		} else {
			switch type {
				case TAbstract(t, params):
					var t = t.get();
					if (t.pack.length == 1 && t.pack[0] == "stdgo" && (t.name == "GoUInt64" || t.name == "GoInt64"))
						return macro $expr.copy();
				case TInst(t, params):
					var t = t.get();
					switch t.pack.join(".") + t.name {
						case "Errors":
							return macro $expr.copy();
					}
					var fields = t.fields.get();
					fields.sort(function(a, b) {
						return 0; // Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
					});
					var values = [];
					var main = ExprTools.toString(expr);
					for (field in fields) {
						switch field.kind {
							case FVar(read, write):
								values.push('$main.' + field.name);
							case FMethod(k):
						}
					}
					values.sort(function(a, b) {
						return 0;
					});
					var str = "new " + t.pack.join(".") + t.name + '(${values.join(",")})';
					var init = Context.parse(str, Context.currentPos());
					return macro $init;
				case TMono(t):
					var t = t.get();
					switch t {
						case null:
						default:
							trace("unknown tmono type: " + t);
					}
				case TDynamic(t):
					trace("t " + t.getName());
				default:
					trace("copy type unknown: " + type);
			}
			return expr;
		}
	}

	public static macro function isNull(expr:Expr) {
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TMono(t):
				type = t.get();
				if (type == null)
					return macro true;
			default:
		}
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "Slice":
						return macro $expr.length == 0;
					case "PointerWrapper":
						return macro Go.isNull($expr._value_);
					case "Pointer":
						return macro Go.isNull($expr._value_);
					case "AnyInterface":
						return macro Go.isNull($expr.value);
					case "GoArray":
						return macro false;
					case "Any":
						return macro $expr == null;
					default:
						trace("unknown abstract: " + t.name);
				}
			case TDynamic(t):
				if (t == null)
					return macro true;
			case TFun(args, ret):
				return macro false;
			case TInst(t, params):

			default:
				trace("unknown type: " + type);
		}
		return macro $expr == null;
	}

	public static macro function equals(a:Expr, b:Expr) {
		var type = Context.follow(Context.typeof(a));
		var exprs:Array<Expr> = [];
		switch a.expr {
			case ENew(t, params):
				exprs.push(macro var a = $a);
				exprs.push(macro var b = $b);
				a = macro $i{"a"};
				b = macro $i{"b"};
			default:
		}
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "GoArray", "Slice":
						exprs.push(macro if ($a.length != $b.length)
							return false);
						exprs.push(macro for (i in 0...$a.length.toBasic()) {
							if (!Go.equals($a[i], $b[i]))
								return false;
						});
					default:
				}
			case TInst(t, params):
				var t = t.get();
				var fields = t.fields.get();
				for (field in fields) {
					if (field.name == "_address_" || field.name == "_" || field.name == "__")
						continue;
					switch field.type {
						case TFun(args, ret):

						default:
							var fieldName = field.name;
							exprs.push(macro if ($a.$fieldName != $b.$fieldName)
								return false);
					}
				}
			default:
		}
		if (exprs.length == 0)
			return macro $a == $b;
		exprs.push(macro return true);
		return macro {
			function a()
				$b{exprs};
			a();
		};
	}

	public static macro function destruct(exprs:Array<Expr>) {
		var expr = exprs.pop(); // expr to destructure
		var fields:Array<String> = [];
		switch expr.expr {
			case ECall(e, params):
				switch e.expr {
					case EField(e2, field):
						// special exceptions
						if (field == "assert" && e2.expr.match(EConst(CIdent("Go")))) {
							params.push(macro null);
							expr = macro Go.assert($a{params});
						} else if (field == "get") {
							var e2type = Context.follow(Context.typeof(e2));
							switch e2type {
								case TInst(t, params2):
									if (params2.length > 0) {
										var t = t.get();
										if (t.name == "Chan" && t.pack.length == 1 && t.pack[0] == "stdgo") {
											field = "getMulti";
											expr = macro ${e2}.$field($a{params});
										}
									}
								default:
							}
						}
					default:
				}
			default:
		}
		var type = Context.followWithAbstracts(Context.typeof(expr));
		switch type {
			case TAnonymous(a):
				var f = a.get().fields;
				f.sort(function(a, b) {
					return Context.getPosInfos(a.pos).min - Context.getPosInfos(b.pos).min;
				});
				for (field in f) {
					fields.push(field.name);
				}
			case TDynamic(t):
				if (t != null) {
					trace("unknown dynamic type destruct: " + t);
				} else {}
			default:
				trace("unknown destruct type: " + type);
		}
		var valueType = Context.typeof(exprs[0]);
		var isDefine:Bool = false;
		switch valueType {
			case TInst(t, params):
				var t = t.get();
				if (t.name == "String")
					isDefine = true;
			default:
		}
		var main:Var = {
			name: "_obj",
			expr: expr,
		};

		if (isDefine) {
			var vars:Array<Var> = [];
			for (i in 0...exprs.length) {
				var name:String = "";
				switch exprs[i].expr {
					case EConst(c):
						switch c {
							case CString(s, kind):
								name = s;
							default:
						}
					default:
				}
				vars.push({
					name: name,
					expr: Context.parse("_obj." + fields[i], Context.currentPos()),
				});
			}
			vars.unshift(main);
			return {expr: EVars(vars), pos: Context.currentPos()};
		}
		// assign
		var v:Expr = {expr: EVars([main]), pos: Context.currentPos()};
		var set:Array<Expr> = [];
		for (i in 0...exprs.length) {
			set.push(macro ${exprs[i]} = ${Context.parse("_obj." + fields[i], Context.currentPos())});
		}
		return macro {
			$v;
			$b{set};
		}
	}

	public static macro function set(params:Array<Expr>) {
		var t = Context.toComplexType(Context.getExpectedType());
		switch t {
			case TPath(p):
				return macro new $p($a{params});
			case TFunction(args, ret):
				return macro null;
			case TAnonymous(fields):
				fields.sort((a, b) -> {
					return PositionTools.getInfos(a.pos).min - PositionTools.getInfos(b.pos).min;
				});
				var anon = createAnonType(Context.currentPos(), fields, params);
				return anon;
			default:
				throw("unknown go set type: " + t);
		}
		return macro null;
	}

	public static macro function setKeys(expr:Expr) {
		var t = Context.toComplexType(Context.getExpectedType());
		return macro($expr : $t);
	}

	public static function createAnonType(pos:Position, fields:Array<Field>, params:Array<Expr>):Expr {
		return {
			pos: pos,
			expr: EObjectDecl([
				for (i in 0...fields.length) {
					var expr:Expr = macro null;
					if (params[i] == null) {
						switch fields[i].kind {
							case FVar(t, e):
								expr = stdgo.Go.defaultValue(t, pos);
							default: // FFunc is nil by default
						}
					} else {
						expr = params[i];
					}
					{
						field: fields[i].name,
						expr: expr,
					};
				}
			])
		};
	}
	static function escapeParens(expr:Expr):Expr {
		while (true) {
			switch expr.expr {
				case EParenthesis(e):
					expr = e;
				default:
					break;
			}
		}
		return expr;
	}

	public static macro function pointer(expr:Expr) {
		expr = escapeParens(expr);
		var isRealPointer = false;
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TMono(t):
				type = t.get();
			default:
		}
		if (type == null)
			return macro null;
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "GoArray", "Slice", "Map":
						return macro new stdgo.Pointer.PointerWrapper($expr);
					case "GoString", "String", "Bool", "GoInt", "GoFloat", "GoUInt", "GoRune", "GoByte", "GoInt8", "GoInt16", "GoInt32", "GoInt64", "GoUInt8",
						"GoUInt16", "GoUInt32", "GoUInt64", "GoComplex", "GoComplex64", "GoComplex128":
						isRealPointer = true;
					case "Pointer", "PointerWrapper": // double or even triple pointer
						isRealPointer = true;
				}
			case TAnonymous(a):
			case TInst(t, params):
				var t = t.get();
				if (t.name == "String")
					isRealPointer = true;
			case TDynamic(t):
				return macro null;
			default:
				trace("unknown make pointer type: " + type);
		}
		var declare:Bool = false;
		switch expr.expr {
			case EArray(e1, e2):
				var t = Context.follow(Context.typeof(e1));
				switch t {
					case TAbstract(t, params):
						var t = t.get();
						if (t.name == "Slice") {
							if (isRealPointer)
								return macro {
									var _offset_ = ${e1}.getOffset();
									var _address_ = ${e1}._address_ + _offset_ + ${e2};
									new stdgo.Pointer(new stdgo.Pointer.PointerData(() -> ${e1}.getUnderlying()[${e2} + _offset_],
										(v) -> ${e1}.getUnderlying()[${e2} + _offset_] = v, _address_));
								};
							return macro {
								var _offset_ = ${e1}.getOffset();
								new stdgo.PointerWrapper(${e1}.getUnderlying()[${e2} + _offset_]);
							};
						}
					default:
				}
			case ENew(t, params):
				declare = true;
			case ECheckType(e, t):
				switch e.expr {
					case EConst(c):
						declare = true;
					default:
				}
			case EConst(c):
				declare = true;
			default:
		}
		if (isRealPointer) {
			if (declare)
				return macro {
					var e = $expr;
					new stdgo.Pointer(new stdgo.Pointer.PointerData(() -> e, (v) -> e = v, ++Go.addressIndex));
				};
			return macro new stdgo.Pointer(new stdgo.Pointer.PointerData(() -> $expr, (v) -> $expr = v, ++Go.addressIndex));
		}
		if (declare)
			return macro {
				var e = $expr;
				$expr._is_pointer_ = true;
				new stdgo.PointerWrapper(e);
			};
		return macro {
			$expr._is_pointer_ = true;
			new stdgo.PointerWrapper($expr);
		}
	}

	// GOROUTINE
	public static macro function routine(expr) {
		return expr;
	}

	public static macro function recover() {
		return untyped macro {
			var r = stdgo.runtime.Runtime.newRuntime(recover_exception.toString());
			recover_exception = null;
			r;
		}
	}

	public static macro function range(expr) {
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TMono(t):
				type = t.get();
			default:
		}
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "GoString", "Slice", "GoArray", "Array", "GoMap":
						return macro $expr.keyValueIterator();
					default:
						throw "unknown type abstract range: " + t.name;
				}
			case TAnonymous(a):
				throw "unknown anon range type: " + [for (field in a.get().fields) field.name];
			case TInst(t, params):
				var t = t.get();
				if (t.name == "Chan" && t.params.length == 1 && t.pack.length == 1) {
					return macro $expr.keyValueIterator();
				}
				throw "unknown TInst range type: " + t;
			default:
				throw "unknown range type: " + type;
		}
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

	static function isBasic(type:haxe.macro.Type):Bool {
		return switch type {
			case TAbstract(t, params):
				switch (t.get().name) {
					case "Bool":
					case "Float":
					case "Int":
					case "String", "GoString":
					default:
						false;
				}
				true;
			default:
				false;
		}
	}
}
