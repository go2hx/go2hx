import haxe.io.Output;
import haxe.Rest;
import Go.ErrorReturn;
import haxe.macro.Context;
import haxe.macro.ExprTools;
import polygonal.Printf;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprOf;
import haxe.macro.TypeTools;

class Fmt { // https://haxe.org/manual/macro-reification-expression.html

	public static inline function errorf(fmt:String,args:Rest<Dynamic>):Errors {
		return new Errors(Fmt.format(fmt,args));
	}

	public static inline function println(args:Rest<Dynamic>) {
		Fmt.log(args.toArray().join(" ") + "\n");
	}
	public static inline function print(args:Rest<Dynamic>) {
		Fmt.log(args.toArray().join(" ") + "\n");
	}

	public static inline function printf(fmt:String, args:Rest<Dynamic>) { // format
		Fmt.log(Fmt.format(fmt, args));
	}

	public static inline function fprintf(w:Output,fmt:String,args:Rest<Dynamic>) {
		w.writeString(Fmt.format(fmt,args));
	}

	public static inline function sprint(args:Rest<Dynamic>) {
		return args.toArray().join(" ");
	}

	public static function sprintln(args:Rest<Dynamic>) {
		return args.toArray().join(" ") + "\n";
	}

	public static inline function sprintf(fmt:String, args:Rest<Dynamic>) { // format
		return Fmt.format(fmt, args);
	}

	public static function format(fmt:String, args:Array<Dynamic>):String {
		try {
			return polygonal.Printf.format(fmt, args);
		}catch(e) {
			return "";
		}
	}

	public static function log(v:Dynamic) {
		#if sys
		Sys.print(v);
		#elseif js
		js.Browser.console(v);
		#end
	}
}
