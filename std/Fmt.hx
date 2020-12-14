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
			Fmt.log(args.join(" ") + "\n");
		}
	}

	public static macro function print(args:Array<Expr>) {
		return macro {
			var args:Array<Dynamic> = $a{args};
			Fmt.log($a{args}.join(" "));
		}
	}

	public static macro function printf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro {
			var args:Array<Dynamic> = $a{args};
			Fmt.log(std.Fmt.format($fmt, args));
		}
	}

	public static macro function sprint(args:Array<Expr>) {
		return macro $a{args}.join(" ");
	}

	public static function sprintln(args:Array<Expr>) {
		return macro $a{args}.join(" ") + "\n";
	}

	public static macro function sprintf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro Fmt.format($fmt, $a{args});
	}

	public static function format(fmt:String, args:Array<Dynamic>):String {
		try {
			return polygonal.Printf.format(fmt, args);
		}catch(e) {
			return "";
		}
	}

	public static function log(string:String) {
		#if sys
		Sys.print(string);
		#elseif js
		js.Browser.console(string);
		#end
	}
}
