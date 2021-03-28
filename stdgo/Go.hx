package stdgo;

import haxe.macro.PositionTools;
import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Go {
	public static var addressIndex:Int = 1;
	public static var recover_exception:Dynamic = null;

	public static macro function copy(expr) { // slices and maps are ref types
		var type = Context.followWithAbstracts(Context.typeof(expr));
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

	public static macro function destruct(exprs:Array<Expr>) {
		var expr = exprs.pop(); // expr to destructure
		var type = Context.followWithAbstracts(Context.typeof(expr));
		var fields:Array<String> = [];
		switch expr.expr {
			case ECall(e, params):
				switch e.expr {
					case EField(e2, field):
						if (field == "assert" && e2.expr.match(EConst(CIdent("Go")))) {
							params.push(macro null);
							expr = macro Go.assert($a{params});
						}
					default:
				}
			default:
		}
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
								expr = stdgo.Builtin.defaultValue(t, pos);
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

	public static macro function pointer(expr:Expr) {
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
						trace("unknown type abstract range: " + t.name);
				}
			case TAnonymous(a):
				trace("a: " + a.get().fields);
			default:
				trace("unknown range type: " + type);
		}
		return macro null;
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
