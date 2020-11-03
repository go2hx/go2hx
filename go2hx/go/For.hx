package go;
class For {
	public static macro function cfor(init, cond, post, expr) {
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
			$init;
			while ($cond) {
				$expr;
				$post;
			}
		};
	}
}