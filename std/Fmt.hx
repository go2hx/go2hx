package std;

import haxe.macro.Context;
import haxe.macro.ExprTools;
import polygonal.Printf;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprOf;
import haxe.macro.TypeTools;

class Fmt { // https://haxe.org/manual/macro-reification-expression.html
	public static macro function Println(args:Array<Expr>) {
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log(args.join(" ") + "\n");
		}
	}

	public static macro function Print(args:Array<Expr>) {
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log($a{args}.join(" "));
		}
	}

	public static macro function Printf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro {
			var args:Array<Dynamic> = $a{args};
			std.Fmt.Log(std.Fmt.Format($fmt,args));
		}
	}

	public static macro function Sprint(args:Array<Expr>) {
		return macro $a{args}.join(" ");
	}

	public static function Sprintln(args:Array<Expr>) {
		return macro $a{args}.join(" ") + "\n";
	}

	public static macro function Sprintf(fmt:ExprOf<String>, args:Array<Expr>) { // format
		return macro std.Fmt.Format($fmt, $a{args});
	}

	public static function Format(fmt:String, args:Array<Dynamic>):String {
		return polygonal.Printf.format(fmt, args);
	}

	public static function Log(string:String) {
		#if sys
		Sys.print(string);
		#elseif js
		js.Browser.console(string);
		#end
	}
}
