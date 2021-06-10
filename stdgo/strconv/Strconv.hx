package stdgo.strconv;

import stdgo.StdGoTypes.GoByte;
import stdgo.StdGoTypes.GoFloat64;
import stdgo.StdGoTypes.GoUInt64;
import stdgo.StdGoTypes.GoInt;
import stdgo.StdGoTypes.GoInt64;
import stdgo.StdGoTypes.Error;
import stdgo.internal.ErrorReturn;
import stdgo.StdGoTypes.MultiReturn;
import stdgo.StdGoTypes.GoFloat;
import stdgo.StdGoTypes.AnyInterface;

function parseFloat(s:String, bitSize:GoInt64):MultiReturn<ErrorReturn<GoFloat>> {
	try {
		return {value: Std.parseFloat(s)};
	} catch (e) {
		return {value: 0, error: cast e};
	}
}

inline function parseInt(s:String, base:GoInt64, bitSize:GoInt64):MultiReturn<ErrorReturn<GoInt>> {
	try {
		var value = Std.parseInt(s);
		if (value == null)
			return {value: 0, error: stdgo.errors.Errors.new_('parsing "$s": invalid syntax')};
		return {value: value};
	} catch (e) {
		if (s.substr(0, 2) == "0x")
			return parseInt(s.substr(2), 0, 0);
		return {value: 0, error: cast e};
	}
}

inline function parseBool(s:String):MultiReturn<ErrorReturn<Bool>> {
	return switch s {
		case "1","t","T","true","TRUE","True":
			{value: true};
		case "0", "f", "F", "false", "FALSE", "False":
			{value: false};
		default:
			{value: false, error: syntaxError("parseBool",s)};
	}
}

inline function formatBool(b:Bool):GoString
	return b ? "true" : "false";

inline function formatInt(i:GoInt64,base:GoInt):GoString {
	return '$i';
}

inline function formatUint(i:GoUInt64,base:GoInt):GoString {
	return '$i';
}

inline function formatFloat(i:GoFloat64,fmt:GoByte,prec:GoInt,bitSize:GoInt):GoString {
	return '$i';
}


final errRange = stdgo.errors.Errors.new_("value out of range");
final errSyntax = stdgo.errors.Errors.new_("invalid syntax");

private function syntaxError(fn:String, str:String):NumError {
	return new NumError(fn,str,errSyntax);
}

private function rangeError(fn:String,str:String):NumError {
	return new NumError(fn,str,errRange);
}

inline function parseUint(s:GoString, base:GoInt64, bitSize:GoInt64):MultiReturn<ErrorReturn<GoInt>> {
	return parseInt(s, base, bitSize);
}

// `Atoi` is a convenience function for basic base-10

inline function atoi(s:GoString) {
	return parseInt(s, 0, 0);
}

inline function itoa(i:GoInt):GoString
	return '$i';

class NumError implements Error {
	public function __underlying__():AnyInterface
		return null;
	public var func:GoString;
	public var num:GoString;
	public var err:Error;
	public function new(func,num,err) {
		this.func = func;
		this.num = num;
		this.err = err;
	}
	public function error():GoString
		return this.err.error();
	public function unwrap():Error
		return this.err;
}

final intSize:GoInt64 = "9223372036854775807";