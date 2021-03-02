package stdgo.fmt;

import stdgo.io.Io.Writer;
import haxe.Rest;
import stdgo.internal.ErrorReturn;
import haxe.macro.Expr;

inline function errorf(fmt:String, args:Rest<Dynamic>):Error {
	return stdgo.errors.Errors.new_(format(fmt, args.toArray()));
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

inline function fprintf(w:Writer, fmt:String, args:Rest<Dynamic>) {
	w.write(new GoString(format(fmt, args.toArray())).toArray());
}
inline function fprintln(w:Writer,args:Rest<Dynamic>) {
	w.write(new GoString(args.toArray().join(" ")).toArray().concat(["\n".code]));
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
