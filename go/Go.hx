package go;

import haxe.macro.Context;

class Go {
    public static function panic(v) {

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