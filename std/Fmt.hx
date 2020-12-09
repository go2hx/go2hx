package std;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import polygonal.Printf;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprOf;
import haxe.macro.TypeTools;

class Fmt { // https://haxe.org/manual/macro-reification-expression.html
	public static macro function println(args:Array<Expr>) {
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log(args.join(" ") + "\n");
		}
	}

	public static macro function print(args:Array<Expr>) {
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log($a{args}.join(" "));
		}
	}

	public static macro function printf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log(std.Fmt.Format($fmt, args));
		}
	}

	public static macro function sprint(args:Array<Expr>) {
		return macro $a{args}.join(" ");
	}

	public static function sprintln(args:Array<Expr>) {
		return macro $a{args}.join(" ") + "\n";
	}

	public static macro function sprintf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro std.Fmt.Format($fmt, $a{args});
	}

	public static function format(fmt:String, args:Array<Dynamic>):String {
		return polygonal.Printf.format(fmt, args);
	}

	public static function log(string:String) {
		#if sys
		Sys.print(string);
		#elseif js
		js.Browser.console(string);
		#end
	}
}
