package stdgo.strconv;

import stdgo.StdGoTypes;

function parseFloat(s:GoString, bitSize:GoInt64):{_i:GoFloat, ?_err:Error} {
	try {
		return {_i: Std.parseFloat(s.toString())};
	} catch (e) {
		return {_i: 0, _err: stdgo.errors.Errors.new_(e.message)};
	}
}

inline function unquote(s:GoString):{_i:GoString, ?_err:Error} { // TODO check if unquote has the same result if the input string has no quotes
	if (s.length < 2)
		return {_i: "", _err: errSyntax};
	s = s.substr(1, s.length.toBasic() - 2);
	return {_i: s};
}

inline function parseInt(s:GoString, base:GoInt64, bitSize:GoInt64):{_i:GoInt, ?_err:Error} {
	try {
		var value = Std.parseInt(s);
		if (value == null)
			return {_i: 0, _err: stdgo.errors.Errors.new_('parsing "$s": invalid syntax')};
		return {_i: value};
	} catch (e) {
		if (s.substr(0, 2) == "0x")
			return parseInt(s.substr(2), 0, 0);
		return {_i: 0, _err: stdgo.errors.Errors.new_(e.message)};
	}
}

inline function parseBool(s:GoString):{_i:Bool, ?_err:Error} {
	return switch s.toString() {
		case "1", "t", "T", "true", "TRUE", "True":
			{_i: true};
		case "0", "f", "F", "false", "FALSE", "False":
			{_i: false};
		default:
			{_i: false, _err: syntaxError("parseBool", s)};
	}
}

inline function formatBool(b:Bool):GoString
	return b ? "true" : "false";

inline function formatInt(i:GoInt64, base:GoInt):GoString {
	return '$i';
}

inline function formatUint(i:GoUInt64, base:GoInt):GoString {
	return '$i';
}

inline function formatFloat(i:GoFloat64, fmt:GoByte, prec:GoInt, bitSize:GoInt):GoString {
	return '$i';
}

final errRange = stdgo.errors.Errors.new_("value out of range");
final errSyntax = stdgo.errors.Errors.new_("invalid syntax");

private function syntaxError(fn:GoString, str:GoString):NumError {
	return new NumError(fn, str, errSyntax);
}

private function rangeError(fn:GoString, str:GoString):NumError {
	return new NumError(fn, str, errRange);
}

inline function parseUint(s:GoString, base:GoInt64, bitSize:GoInt64):{v0:GoInt, ?v1:Error} {
	final o = parseInt(s, base, bitSize);
	return {v0: o._i, v1: o._err};
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

	public function new(func, num, err) {
		this.func = func;
		this.num = num;
		this.err = err;
	}

	public function error():GoString
		return this.err.error();

	public function unwrap():Error
		return this.err;
}

// final intSize:GoInt64 = "9223372036854775807";
