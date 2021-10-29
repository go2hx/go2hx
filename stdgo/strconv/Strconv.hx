package stdgo.strconv;

import stdgo.StdGoTypes;

final intSize:GoInt = 32;

function parseFloat(s:GoString, bitSize:GoInt64):{_0:GoFloat, ?_1:Error} {
	try {
		return {_0: Std.parseFloat(s.toString())};
	} catch (e) {
		return {_0: 0, _1: syntaxError("parseFloat", s)};
	}
}

inline function unquote(s:GoString):{_0:GoString, ?_1:Error} { // TODO check if unquote has the same result if the input string has no quotes
	if (s.length < 2)
		return {_0: "", _1: errSyntax};
	s = s.substr(1, s.length.toBasic() - 2);
	return {_0: s};
}

inline function appendInt(dst:Slice<GoByte>, i:GoInt64, base:GoInt):Slice<GoByte> {
	return dst.append(...(haxe.Int64.toStr(i.toBasic()) : GoString).toSliceByte().toArray());
}

inline function parseInt(s:GoString, base:GoInt64, bitSize:GoInt64):{_0:GoInt, ?_1:Error} {
	try {
		var value = Std.parseInt(s);
		if (value == null)
			return {_0: 0, _1: syntaxError("parseInt", s)};
		return {_0: value};
	} catch (e) {
		if (s.substr(0, 2) == "0x")
			return parseInt(s.substr(2), 0, 0);
		return {
			_0: 0,
			_1: syntaxError("parseInt", s)
		};
	}
}

inline function parseBool(s:GoString):{_0:Bool, ?_1:Error} {
	return switch s.toString() {
		case "1", "t", "T", "true", "TRUE", "True":
			{_0: true};
		case "0", "f", "F", "false", "FALSE", "False":
			{_0: false};
		default:
			{_0: false, _1: syntaxError("parseBool", s)};
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

inline function parseUint(s:GoString, base:GoInt64, bitSize:GoInt64):{_0:GoInt, ?_1:Error} {
	return parseInt(s, base, bitSize);
}

// `Atoi` is a convenience function for basic base-10

inline function atoi(s:GoString) {
	return parseInt(s, 0, 0);
}

inline function itoa(i:GoInt):GoString
	return Std.string(i.toBasic());

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
