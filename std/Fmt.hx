package std;
import haxe.macro.ExprTools;
import polygonal.Printf;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprOf;
class Fmt { //https://haxe.org/manual/macro-reification-expression.html
	public static macro function println(args:Array<Expr>) {
		return macro ${log($v{getArgs(args)} + "\n")};
	}

	public static macro function print(args:Array<Expr>) {
		return macro ${log($v{getArgs(args)} + "\n")};
	}

	public static macro function printf(fmt:ExprOf<String>,args:Array<Expr>) { //format
		return ${log($v{format(fmt,args)})};
	}

	public static macro function sprint(args:Array<Expr>) {
		return macro $v{getArgs(args)};
	}

	public static function sprintln(args:Array<Expr>) {
		return macro $v{getArgs(args) + "\n"};
	}
	public static macro function sprintf(fmt:ExprOf<String>,args:Array<Expr>) { //format
		return macro $v{format(fmt,args)};
	}
	private static function argArray(args:Array<Expr>) {
		return [for (arg in args) ExprTools.getValue(arg)];
	}
	private static function getArgs(args:Array<Expr>):String {
		var args = argArray(args);
		return args == null ? "" : args.join(" ");
	}
	private static function format(fmt:ExprOf<String>,args:Array<Expr>):String {
		var args:Array<Any> = argArray(args);
		var fmt:String = ExprTools.getValue(fmt);
		return Printf.format(fmt,args);
	}
	private static function log(string:String) {
		#if sys
			return macro Sys.print($v{string});
		#elseif js
			return macro js.Browser.console($v{string});
		#end
	}
}
