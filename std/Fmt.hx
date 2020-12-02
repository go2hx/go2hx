package std;
import polygonal.Printf;
import haxe.macro.Expr.ExprOf;
import haxe.macro.Expr;
class Fmt { //https://haxe.org/manual/macro-reification-expression.html
	public static function println(args:Args<Any>) {
		return log(getArgs(args) + "\n");
	}

	public static function print(args:Args<Any>) {
		return log(getArgs(args));
		
	}

	public static function printf(fmt:String,args:Args<Any>) {
		return Printf.format(fmt,args);
	}

	public static function sprint(args:Args<Any>):String {
		return getArgs(args);
	}

	public static function sprintln(args:Args<Any>):String {
		return getArgs(args) + "\n";
	}

	public static inline function sprintf(fmt:String,args:Args<Any>):String {
		return Printf.format(fmt,args);
	}
	static function getArgs(args:Args<Any>):String {
		//return args == null? "" : args.join(" ");
		return "";
	}
	static function log(string:String) {
		#if sys
			Sys.print(string);
		#elseif js
			js.Browser.console(string);
		#end
	}
	static function format() {
		
	}
}
