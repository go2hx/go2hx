package stdgo;

import haxe.macro.ComplexTypeTools;
import haxe.macro.TypeTools;
import haxe.macro.Expr;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

class Go {
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
			case EArray(e1, e2): //expr[i] : passthrough
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
						return 0;
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
	public static macro function divide(a:Expr,b:Expr) {
		
		return null;
	}
	public static macro function pointer(expr) {
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
					case "GoString","String","Bool","Slice","Map","Array","GoArray","Int","Float","UInt":
						isRealPointer = true;
				}
			case TAnonymous(a):
			case TInst(t, params):
			default:
				trace("unknown make pointer type: " + type);
		}
		if (isRealPointer)
			return macro new Pointer(new stdgo.Pointer.PointerData(() -> $expr,(v) -> $expr = v));
		return macro new Pointer($expr);
	}
	public static macro function destruct(exprs:Array<Expr>) {
		var expr = exprs.pop(); //expr to destructure
		var type = Context.followWithAbstracts(Context.typeof(expr));
		var fields:Array<String> = [];
		switch type {
			case TAnonymous(a):
				for (field in a.get().fields) {
					fields.push(field.name);
				}
			default:
				trace("unknown destruct type: " + type);
		}
		var valueType = Context.typeof(exprs[0]);
		var isDefine:Bool = false;
		switch valueType {
			case TInst(t, params):
				if (t.get().name == "String")
					isDefine = true;
			default:
				trace("unknown type " + valueType);
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
					expr: Context.parse("_obj." + fields[i],Context.currentPos()),
				});
			}
			vars.unshift(main);
			return {expr: EVars(vars),pos: Context.currentPos()};
		}
		//assign
		var v:Expr = {expr: EVars([main]),pos: Context.currentPos()};
		var set:Array<Expr> = [];
		for (i in 0...exprs.length) {
			set.push(macro ${exprs[i]} = ${Context.parse("_obj." + fields[i],Context.currentPos())});
		}
		return macro {
			$v;
			$b{set};
		}
	}

	public static macro function assert(expr:Expr) {
		var func = null;
		function typeName(t:ComplexType):String {
			if (t == null)
				return "";
			switch t {
				case TPath(p):
					if (p.name == "StdTypes")
						return p.sub;
					return p.name;
				default:
					return "";
			}
		}
		func = function():Expr {
			switch expr.expr {
				case ECheckType(e, t):
					var to = Context.toComplexType(Context.follow(ComplexTypeTools.toType(t)));
					switch e.expr {
						case EConst(CIdent("null")):
							return @:privateAccess Builtin.defaultValue(t,Context.currentPos());
						default:
					}
					var from = Context.toComplexType(Context.follow(Context.typeof(e)));
					if (to == null || from == null)
						trace("could not resolve types: " + e.expr + " : " + t);
					var fromString = typeName(from);
					var toString = typeName(to);
					function standard() {
						return macro {
							var x:$to = $e;
							x;
						}
					}
					function assertString() {
						return macro (Std.string($e) : GoString);
					}
					if (fromString == toString)
						return e;

					switch fromString {
						case "String", "GoString":
							switch toString {
								case "Slice":
									return macro {
										var array = $e.split("");
										var slice = new stdgo.Slice<stdgo.StdTypes.Byte>(array.length);
										for (i in 0...array.length) {
											slice[i] = array[i].charCodeAt(0);
										}
										slice;
									}
							}
						case "Int":
							switch toString {
								case "Float":
									return macro ($e : Float);
								case "GoString":
									return assertString();
							}
						case "Float":
							switch toString {
								case "Int64":
									return macro new stdgo.StdTypes.Int64(haxe.Int64Helper.fromFloat($e));
								default:
							}
						case "Dynamic":
							switch toString {
								case "Slice":
									return standard();
							}
					}
				trace("unsupported assert: " + fromString + " -> " + toString);
				case EParenthesis(e):
					expr = e;
					return func();
				default:
					trace("unknown expr def for assert: " + expr.expr);
			}
			return expr;
		}
		return func();
	}
	public static macro function range(expr) {
		var type = Context.follow(Context.typeof(expr));
		switch type {
			case TMono(t): type = t.get();
			default:
		}
		switch type {
			case TAbstract(t, params):
				var t = t.get();
				switch t.name {
					case "GoString","Slice","GoArray","Array","GoMap":
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
