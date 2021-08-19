package stdgo.fmt;

import haxe.Int64;
import haxe.Rest;
import haxe.io.BufferInput;
import haxe.macro.Expr;
import stdgo.Error;
import stdgo.StdGoTypes.AnyInterface;
import stdgo.StdGoTypes.GoInt;
import stdgo.io.Io.Writer;

interface Stringer {
	public function __underlying__():AnyInterface;
	function toString():GoString;
}

inline function errorf(fmt:GoString, args:Rest<AnyInterface>) {
	return stdgo.errors.Errors.new_(format(fmt, args));
}

function println(args:Rest<Dynamic>):{n:Int, err:Error} {
	log(parse(args).join(" ") + "\n");
	return {n: 0, err: null};
}

function print(args:Rest<Dynamic>):{n:Int, err:Error} {
	log(parse(args).join(""));
	return {n: 0, err: null};
}

inline function printf(fmt:GoString, args:Rest<AnyInterface>) { // format
	log(format(fmt, args));
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

inline function sprintf(fmt:GoString, args:Rest<AnyInterface>):GoString { // format

	return format(fmt, args);
}

private function format(fmt:GoString, args:Array<AnyInterface>):GoString {
	var i = 0;
	var c = 0;
	var n = 0;
	final fmt:String = fmt;
	inline function isDigit(x)
		return x >= 48 && x <= 57;
	inline function next()
		c = StringTools.fastCodeAt(fmt, i++);
	var buf = new StringBuf();
	var k = fmt.length;
	var argIndex = 0;
	while (i < k) {
		next();
		if (c == "%".code) {
			next();
			if (c == "%".code) {
				buf.addChar(c);
				continue;
			}
			switch c {
				case "#".code: // alternative format
					next();
				case "+".code: // always print a sign for numeric values ASCII only output for %+q
					next();
				case "-".code: // pad with spaces on the right rather than the left
					next();
				case " ".code: // leave a space for elided sign in numbers, or put spaces between bytes or slices in hex
					next();
				case "0".code: // pad with leading zeros for numbers, padding after the sign
					next();
			}
			switch c {
				case "T".code: // go type
					buf.add(args[argIndex++].type.toString());
				case "v".code: // default format, plus flag adds field names
					buf.add(Go.string(args[argIndex++].value));
				case "d".code: // int(x)/uint(x) etc
					buf.add(Go.string(args[argIndex++].value));
				case "g".code: // float32/complex64 etc
					buf.add(Go.string(args[argIndex++].value));
				case "s".code: // string
					buf.add(Go.string(args[argIndex++].value));
				case "p".code: // pointer/chan
					buf.add(Go.string(args[argIndex++].value));
				case "t".code: // true or false
					buf.add(Go.string(args[argIndex++].value));
				case "b".code: // int base 2
					buf.add(Go.string(args[argIndex++].value));
				case "o".code: // int base 8
					buf.add(Go.string(args[argIndex++].value));
				case "q".code: // charachter literal
					buf.add(Go.string(args[argIndex++].value));
				case "x".code: // int base 16 lower case letters
					buf.add(Go.string(args[argIndex++].value));
				case "X".code: // based 16 upper case letters
					buf.add(Go.string(args[argIndex++].value));
				case "U".code: // unicode format
					buf.add(Go.string(args[argIndex++].value));
				case "f".code: // float point
					buf.add(Go.string(args[argIndex++].value));
				default:
					buf.addChar(c);
			}
		} else {
			buf.addChar(c);
		}
	}
	return buf.toString();
}

private inline function log(v:Dynamic) {
	#if sys
	// unicode support for hashlink thanks to Zeta
	Sys.stdout().writeString(v);
	#elseif js
	js.html.Console.log(v);
	#end
}
