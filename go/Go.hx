package go;

import haxe.macro.Printer;
import haxe.io.Bytes;
import haxe.Exception;
import haxe.macro.ExprTools;
import haxe.macro.Context;
//typedef Byte = haxe.io.Bytes
class Go {
    public static function panic(v) {

	}
	public static function str(v:Dynamic):String {
		return v.toString();
	}
	public static macro function slice(type,length) {
		return macro null;
	}
	public static macro function len(expr) {
		var ty = Context.typeof(expr);
		switch (ty) {
			case TInst(t, params):
				switch (t.get().name) {
					case "Array","Vector":
						return macro $expr.length;
					case "Iterable","Map":
						return macro Lambda.count($expr);
					default:
						
				}
			default:
		}
		return macro $expr;
	}
	public static macro function setMulti(cond,expr) {
		var type = Context.typeof(expr);
		var values:Array<haxe.macro.Expr> = [];
		var index:Int = -1;
		switch cond.expr {
			case EArrayDecl(array):
				for (v in array) {
					switch v.expr {
						case EConst(c):
							switch c {
								case CIdent(s):
									if (s == "null") {
										values.push(null);
									}else{
										values.push(v);
									}
								default:
							}
							default:
					}
				}
			default:
				throw "needs array for set multi";
		}
		var set:Array<haxe.macro.Expr> = [];
		switch type {
			case TInst(t, params):
				for (field in t.get().fields.get()) {
					index++;
					if (values[index] == null)
						continue;
					if (index >= values.length)
						continue;
					var get = Context.parse('tmp.${field.name}',Context.currentPos());
					var value = values[index];
					set.push(macro $value = $get);
				}
			default:
		}
		//var printer = new Printer();
		//trace(printer.printExprs(set,"\n"));
		return macro {
			var tmp = $expr;
			$b{set}
		}
	}
    public static macro function cfor(cond, post, expr) {
		#if !display
		var func = null;
		func = function(expr:haxe.macro.Expr) {
			return switch (expr.expr) {
				case EContinue: macro { $post; $expr; }
				case EWhile(_, _, _): expr;
				case ECall(macro cfor, _): expr;
				case EFor(_): expr;
				//case EIn(_): expr;
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
class ErrorReturn<T> {
	public var value:T;
	public var error:Exception;
	public function new(value:T,error:Exception=null) {
		this.value = value;
		this.error = error;
	}

}