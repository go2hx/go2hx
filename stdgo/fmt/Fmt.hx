package stdgo.fmt;

import stdgo.StdGoTypes.GoInt;
import haxe.Int64;
import stdgo.io.Io.Writer;
import haxe.Rest;
import stdgo.internal.ErrorReturn;
import haxe.macro.Expr;
import stdgo.StdGoTypes.AnyInterface;

interface Stringer {
	public function __underlying__():AnyInterface;
	function toString():GoString;
}

inline function errorf(fmt:String, args:Rest<Dynamic>) {
	return stdgo.errors.Errors.new_(format(fmt, parse(args)));
}

function println(args:Rest<Dynamic>) {
	log(parse(args).join(" ") + "\n");
}

function print(args:Rest<Dynamic>) {
	log(parse(args).join(""));
}

inline function printf(fmt:String, args:Rest<Dynamic>) { // format
	log(format(fmt, parse(args)));
}

inline function fprintf(w:Writer, fmt:String, args:Rest<Dynamic>) {
	
}

inline function fprintln(w:Writer, args:Rest<Dynamic>) {

}

inline function fprint(w:Writer, args:Rest<Dynamic>) {

}

inline function sprint(args:Rest<Dynamic>):GoString {
	return parse(args).join(" ");
}

function sprintln(args:Rest<Dynamic>):GoString {
	return parse(args).join(" ") + "\n";
}

private function parse(args:Array<Dynamic>):Array<String> {
	return [for (i in 0...args.length) {
		Go.string(args[i]);
	}];
}

inline function sprintf(fmt:String, args:Rest<Dynamic>):GoString { // format
	return format(fmt, parse(args));
}

private function format(fmt:String, args:Array<Dynamic>):String {
	/*try {
			return stdgo.internal.Printf.format(fmt, args);
		} catch (e) {
			return e.message;
	}*/
	return " " + args + " -> " + fmt;
}
//scientific notation
private function formatFloat(f:Float):String {
	var buf = new StringBuf();
	//sign
	buf.addChar(f >= 0 ? "+".code : "-".code);

	f = Math.abs(f);
	var length = Math.ceil(Math.log(f + 1) / Math.log(10));
	final max = 7;

	var int = Math.ffloor(f); 
	final p = Math.pow(10,max - length);
	final frac = Math.round(p * (f - int));
	var str = "";
	var noInt = false;
	if (int > 0) {
		str = Std.string(int);
		str = str.charAt(0) + "." + str.substr(1);
		if (str.length - 1 > max) {
			str = str.substr(0,max);
		}else{
			if (frac > 0)
				str += frac;
		}
	}else{
		str = Std.string(frac);
		str = str.charAt(0) + "." + str.substr(1);
		length = 2;
		noInt = true;
	}
	buf.add(str);
	if (str.length < max + 1)
		for (i in 0...(max + 1) - str.length)
			buf.addChar('0'.code);
	buf.addChar('e'.code);
	buf.addChar(noInt ? "-".code : "+".code);
	length--;
	var str = Std.string(length);
	for (i in 0...3 - str.length)
		buf.addChar('0'.code);
	buf.add(str);
	return buf.toString();
}

private inline function log(v:Dynamic) {
	#if sys
	Sys.print(v);
	#elseif js
	js.html.Console.log(v);
	#end
}
