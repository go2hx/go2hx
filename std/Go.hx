package std;

import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;

// typedef Byte = haxe.io.Bytes
class Go {
	public static function panic(v) {}

	public static function str(v:Dynamic):String {
		return v.toString();
	}

	public static macro function slice(type, length) {
		return macro null;
	}
	public static macro function make(type,list) {
		var ty = Context.typeof(type);
		trace("type: " + ty);
		return macro null;
	}

	public static macro function len(expr) {
		var ty = Context.typeof(expr);
		switch (ty) {
			case TInst(t, params):
				switch (t.get().name) {
					case "Array", "Vector":
						return macro $expr.length;
					case "Iterable", "Map":
						return macro Lambda.count($expr);
					default:
				}
			default:
		}
		return macro $expr;
	}

	public static macro function append(cond, expr) {
		return macro {
			$cond.push($expr);
		};
	}

	public static macro function setMulti(cond, expr) {
		trace("c " + cond.expr);
		var type = Context.typeof(expr);
		var values:Array<haxe.macro.Expr> = [];
		var index:Int = -1;
		trace("c " + cond.expr);
		switch cond.expr {
			case EArrayDecl(array):
				for (v in array) {
					switch v.expr {
						case EConst(c):
							switch c {
								case CIdent(s):
									if (s == "null") {
										values.push(null);
									} else {
										values.push(v);
									}
								default:
									trace("not indent " + c);
							}
						case EArray(e1, e2):
							values.push(v);
						default:
							trace("not constant " + v.expr);
					}
				}
			default:
				throw "needs array for set multi";
		}
		var set:Array<haxe.macro.Expr> = [];
		function anonFields(a:haxe.macro.Type.AnonType) {
			var fields = a.fields;
			fields.sort(function(a, b) {
				return 0;
			});
			for (field in fields) {
				index++;
				if (values[index] == null)
					continue;
				if (index >= values.length)
					continue;
				var get = Context.parse('tmp.${field.name}', Context.currentPos());
				var value = values[index];
				set.push(macro $value = $get);
			}
		}
		function getAbstract(t:haxe.macro.Type.Ref<haxe.macro.Type.AbstractType>,params) {
			switch t.get().type {
				case TAbstract(tt, params):
					getAbstract(t,params);
				default:
					trace("TAbstract unknown " + t.get().type);
			}
		}
		switch type {
			case TInst(t, params):
				var value = values[0];
				set.push(macro $value = $expr);
			case TFun(args, ret):
				switch ret {
					case TAbstract(t, params):
						var value = values[0];
						var get = expr;
						set.push(macro $value = $get);
					default:
						trace("not abstract");
				}
			case TType(t, params):
				switch t.get().type {
					case TAnonymous(a):
						anonFields(a.get());
					default:
						trace("ttype unknown " + t.get().type);
				}
			case TAbstract(t, params):
				getAbstract(t,params);
			case TAnonymous(a):
				anonFields(a.get());
			default:
				trace("not an inst or func " + type);
		}
		var printer = new Printer();
		// trace(printer.printExprs(set,"  "));
		// trace(printer.printExprs(set,"\n"));
		return macro {
			var tmp = $expr;
			$b{set}
		}
	}

	public static macro function range(key, value, x, expr) {
		var print = new Printer();
		function getName(expr:haxe.macro.Expr) {
			switch expr.expr {
				case EConst(c):
					switch c {
						case CIdent(s):
							return s;
						default:
					}
				default:
			}
			return "";
		}
		var keyName = getName(key);
		if (keyName == "_")
			keyName = "i";
		var init = Context.parse('var $keyName = 0;', Context.currentPos());
		var post = Context.parse('$keyName++', Context.currentPos());
		var set = macro null;
		var valueName = getName(value);
		if (valueName != "_") {
			set = Context.parse('var $valueName = tmp;', Context.currentPos());
		}
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
		return macro {
			$init;
			for (tmp in $x) {
				$set;
				$expr;
				$post;
			}
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
		return macro {
			while ($cond) {
				$expr;
				$post;
			}
		};
	}
}
@:generic
typedef ErrorReturn<T> = {value:T,?error:Exception};
