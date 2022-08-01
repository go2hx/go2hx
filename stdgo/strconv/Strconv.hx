package stdgo.strconv;

import stdgo.StdGoTypes;

using stdgo.GoString.GoStringTools;

final intSize:GoInt = 32;

function quote(_s:GoString):GoString {
	return _s;
}

function quoteToASCII(_s:GoString):GoString {
	return _s;
}

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
	return dst.__append__(...(haxe.Int64.toStr(i.toBasic()) : GoString).__toSliceByte__().__toArray__());
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
	return Std.string(i.toBasic());
}

inline function formatUint(i:GoUInt64, base:GoInt):GoString {
	return Std.string(i.toBasic());
}

inline function formatFloat(i:GoFloat64, fmt:GoByte, prec:GoInt, bitSize:GoInt):GoString {
	return Std.string(i.toBasic());
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

@:structInit class NumError {
	public function unwrap():Error {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _e.value.err;
	}

	public function error():GoString {
		var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return (("strconv." : GoString)) + _e.value.func + ((": " : GoString)) + (("parsing " : GoString)) + '"' + _e.value.num + '"' + ((": " : GoString))
			+ _e.value.err.error();
	}

	public var func:GoString = (("" : GoString));
	public var num:GoString = (("" : GoString));
	public var err:stdgo.Error = ((null : stdgo.Error));

	public function new(?func:GoString, ?num:GoString, ?err:stdgo.Error) {
		if (func != null)
			this.func = func;
		if (num != null)
			this.num = num;
		if (err != null)
			this.err = err;
	}

	public function toString() {
		return '{' + Go.string(func) + " " + Go.string(num) + " " + Go.string(err) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new NumError(func, num, err);
	}

	public function __set__(__tmp__) {
		this.func = __tmp__.func;
		this.num = __tmp__.num;
		this.err = __tmp__.err;
		return this;
	}
}

// final intSize:GoInt64 = "9223372036854775807";
