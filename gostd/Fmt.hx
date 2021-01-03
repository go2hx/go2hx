package gostd;

import haxe.io.Output;
import haxe.Rest;
import gostd.internal.ErrorReturn;
import haxe.macro.Context;
import haxe.macro.ExprTools;
import gostd.internal.Printf;
import haxe.macro.Expr;
import haxe.macro.Expr.ExprOf;
import haxe.macro.TypeTools;

class Fmt { // https://haxe.org/manual/macro-reification-expression.html
	public static inline function errorf(fmt:String, args:Rest<Dynamic>):Errors {
		return new Errors(format(fmt, args.toArray()));
	}

	public static inline function println(args:Rest<Dynamic>) {
		log(args.toArray().join(" ") + "\n");
	}

	public static inline function print(args:Rest<Dynamic>) {
		log(args.toArray().join(" ") + "\n");
	}

	public static inline function printf(fmt:String, args:Rest<Dynamic>) { // format
		log(format(fmt, args.toArray()));
	}

	public static inline function fprintf(w:Output, fmt:String, args:Rest<Dynamic>) {
		w.writeString(format(fmt, args.toArray()));
	}

	public static inline function sprint(args:Rest<Dynamic>) {
		return args.toArray().join(" ");
	}

	public static function sprintln(args:Rest<Dynamic>) {
		return args.toArray().join(" ") + "\n";
	}

	public static inline function sprintf(fmt:String, args:Rest<Dynamic>) { // format
		return format(fmt, args.toArray());
	}

	private static function format(fmt:String, args:Array<Dynamic>):String {
		try {
			return gostd.internal.Printf.format(fmt, args);
		} catch (e) {
			return e.message;
		}
	}

	private static inline function log(v:Dynamic) {
		#if sys
		Sys.print(v);
		#elseif js
		js.html.Console.log(v);
		#end
	}
}
