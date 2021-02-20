package stdgo;

import haxe.io.Output;
import haxe.Rest;
import stdgo.internal.ErrorReturn;
import haxe.macro.Context;
import haxe.macro.ExprTools;
import stdgo.internal.Printf;
import haxe.macro.Expr;
import stdgo.Errors;
import haxe.macro.Expr.ExprOf;
import haxe.macro.TypeTools;

inline function errorf(fmt:String, args:Rest<Dynamic>):Error {
	return stdgo.Errors.new_(format(fmt, args.toArray()));
}

inline function println(args:Rest<Dynamic>) {
	log(args.toArray().join(" ") + "\n");
}

inline function print(args:Rest<Dynamic>) {
	log(args.toArray().join(" "));
}

inline function printf(fmt:String, args:Rest<Dynamic>) { // format
	log(format(fmt, args.toArray()));
}

inline function fprintf(w:Output, fmt:String, args:Rest<Dynamic>) {
	w.writeString(format(fmt, args.toArray()));
}

inline function sprint(args:Rest<Dynamic>) {
	return args.toArray().join(" ");
}

function sprintln(args:Rest<Dynamic>) {
	return args.toArray().join(" ") + "\n";
}

inline function sprintf(fmt:String, args:Rest<Dynamic>) { // format
	return format(fmt, args.toArray());
}

private function format(fmt:String, args:Array<Dynamic>):String {
	try {
		return stdgo.internal.Printf.format(fmt, args);
	} catch (e) {
		return e.message;
	}
}

private inline function log(v:Dynamic) {
	#if sys
	Sys.print(v);
	#elseif js
	js.html.Console.log(v);
	#end
}
