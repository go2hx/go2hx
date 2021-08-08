package stdgo;

import haxe.Int64;
import haxe.Rest;
import haxe.macro.Expr;
import stdgo.Io.Writer;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt;
import stdgo.internal.ErrorReturn;

interface Stringer {
	public function __underlying__():AnyInterface;
	function toString():GoString;
}

inline function errorf(fmt:GoString, args:Rest<Dynamic>) {
	return stdgo.Errors.new_(format(fmt, parse(args)));
}

function println(args:Rest<Dynamic>) {
	log(parse(args).join(" ") + "\n");
}

function print(args:Rest<Dynamic>) {
	log(parse(args).join(""));
}

inline function printf(fmt:GoString, args:Rest<Dynamic>) { // format
	log(format(fmt, parse(args)));
}

inline function fprintf(w:Writer, fmt:GoString, args:Rest<Dynamic>) {}
inline function fprintln(w:Writer, args:Rest<Dynamic>) {}
inline function fprint(w:Writer, args:Rest<Dynamic>) {}

inline function sprint(args:Rest<Dynamic>):GoString {
	return parse(args).join(" ");
}

function sprintln(args:Rest<Dynamic>):GoString {
	return parse(args).join(" ") + "\n";
}

private function parse(args:Array<Dynamic>):Array<String> {
	return [
		for (i in 0...args.length) {
			Go.string(args[i]);
		}
	];
}

inline function sprintf(fmt:GoString, args:Rest<Dynamic>):GoString { // format
	return format(fmt, parse(args));
}

private function format(fmt:GoString, args:Array<Dynamic>):GoString {
	/*try {
			return stdgo.internal.Printf.format(fmt, args);
		} catch (e) {
			return e.message;
	}*/
	return " " + args + " -> " + fmt;
}

private inline function log(v:Dynamic) {
	#if sys
	Sys.print(v);
	#elseif js
	js.html.Console.log(v);
	#end
}
