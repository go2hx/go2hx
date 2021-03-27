package stdgo.fmt;

import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.IntegerType;
import haxe.Int64;
import stdgo.io.Io.Writer;
import haxe.Rest;
import stdgo.internal.ErrorReturn;
import haxe.macro.Expr;

inline function errorf(fmt:String, args:Rest<Dynamic>) {
	return stdgo.errors.Errors.new_(format(fmt, parse(args)));
}

inline function println(args:Rest<Dynamic>) {
	log(parse(args).join(" ") + "\n");
}

inline function print(args:Rest<Dynamic>) {
	log(parse(args).join(" "));
}

inline function printf(fmt:String, args:Rest<Dynamic>) { // format
	log(format(fmt, parse(args)));
}

inline function fprintf(w:Writer, fmt:String, args:Rest<Dynamic>) {
	w.write(new GoString(format(fmt, parse(args))).toArray());
}

inline function fprintln(w:Writer, args:Rest<Dynamic>) {
	w.write(new GoString(parse(args).join(" ")).toArray().concat(["\n".code]));
}

inline function sprint(args:Rest<Dynamic>) {
	return parse(args).join(" ");
}

function sprintln(args:Rest<Dynamic>) {
	return parse(args).join(" ") + "\n";
}

private function parse(args:Array<Dynamic>):Array<Dynamic> {
	for (arg in args) {
		if (Int64.isInt64(arg)) {
			var str = Int64.toStr(arg);
			args.push(str);
			args.remove(arg);
		}
	}
	return args;
}

inline function sprintf(fmt:String, args:Rest<Dynamic>) { // format
	return format(fmt, parse(args));
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
