package stdgo.flag_test;

import stdgo.flag.Flag;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// These examples demonstrate more intricate uses of the flag package.
**/
private var __go2hxdoc__package:Bool;

/**
	// Example 1: A single string flag called "species" with default value "gopher".
**/
private var _species:Pointer<GoString> = stdgo.flag.Flag.string((Go.str("species") : GoString), (Go.str("gopher") : GoString),
	(Go.str("the species we are studying") : GoString));

private var _u:Ref<stdgo.net.url.Url.URL> = (new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL);

/**
	// Example 2: Two flags sharing a variable, so we can have a shorthand.
	// The order of initialization is undefined, so make sure both use the
	// same default value. They must be set up with an init function.
**/
private var _gopherType:GoString = ("" : GoString);

private var _intervalFlag:T_interval = new stdgo.flag_test.Flag_test.T_interval(0, 0);
private final _defaultOutput:GoString = ("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : GoString);

@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
	public var url:Ref<stdgo.net.url.Url.URL> = (null : stdgo.net.url.Url.URL);

	public function new(?url:Ref<stdgo.net.url.Url.URL>) {
		if (url != null)
			this.url = url;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new URLValue(url);
	}
}

/**
	// Declare a user-defined boolean flag type.
**/
@:structInit @:using(stdgo.flag_test.Flag_test.T_boolFlagVar_static_extension) private class T_boolFlagVar {
	public var _count:GoInt = 0;

	public function new(?_count:GoInt) {
		if (_count != null)
			this._count = _count;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_boolFlagVar(_count);
	}
}

/**
	// zeroPanicker is a flag.Value whose String method panics if its dontPanic
	// field is false.
**/
@:structInit @:using(stdgo.flag_test.Flag_test.T_zeroPanicker_static_extension) private class T_zeroPanicker {
	public var _dontPanic:Bool = false;
	public var _v:GoString = "";

	public function new(?_dontPanic:Bool, ?_v:GoString) {
		if (_dontPanic != null)
			this._dontPanic = _dontPanic;
		if (_v != null)
			this._v = _v;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_zeroPanicker(_dontPanic, _v);
	}
}

@:local private typedef T__struct_0 = {
	public var _flag:GoString;
	public var _flagHandle:GoString;
	public var _expectExit:GoInt;
};

@:local private typedef T__struct_1 = {
	public var _flag:GoString;
	public var _errorMsg:GoString;
};

@:local private typedef T__struct_2 = {
	public var _flagSetName:GoString;
	public var _errorMsg:GoString;
};

/**
	// Example 3: A user-defined flag type, a slice of durations.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_interval_static_extension) private typedef T_interval = Slice<stdgo.time.Time.Duration>;

/**
	// Declare a user-defined flag type.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_flagVar_static_extension) private typedef T_flagVar = Slice<GoString>;

function exampleFunc():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleFunc") : GoString), (0 : ErrorHandling));
	_fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.func((Go.str("ip") : GoString), (Go.str("`IP address` to parse") : GoString), function(_s:GoString):Error {
		_ip = stdgo.net.Net.parseIP(_s);
		if (_ip == null) {
			return stdgo.errors.Errors.new_((Go.str("could not parse IP") : GoString));
		};
		return (null : stdgo.Error);
	});
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("127.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v, loopback: %t}\n\n") : GoString), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("256.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v, loopback: %t}\n\n") : GoString), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
}

function example():Void {}

function exampleTextVar():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleTextVar") : GoString), (0 : ErrorHandling));
	_fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.textVar(Go.asInterface(_ip), (Go.str("ip") : GoString),
		Go.asInterface(stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))), (Go.str("`IP address` to parse") : GoString));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("127.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v}\n\n") : GoString), Go.toInterface(Go.asInterface(_ip)));
	_ip = null;
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-ip") : GoString), (Go.str("256.0.0.1") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf((Go.str("{ip: %v}\n\n") : GoString), Go.toInterface(Go.asInterface(_ip)));
}

function exampleValue():Void {
	var _fs = stdgo.flag.Flag.newFlagSet((Go.str("ExampleValue") : GoString), (1 : ErrorHandling));
	_fs.var_(Go.asInterface((new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue)), (Go.str("url") : GoString),
		(Go.str("URL to parse") : GoString));
	_fs.parse((new Slice<GoString>(0, 0, (Go.str("-url") : GoString), (Go.str("https://golang.org/pkg/flag/") : GoString)) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(("{scheme: %q, host: %q, path: %q}" : GoString), Go.toInterface(_u.scheme), Go.toInterface(_u.host), Go.toInterface(_u.path));
}

function _boolString(_s:GoString):GoString {
	if (_s == (Go.str("0") : GoString)) {
		return (Go.str("false") : GoString);
	};
	return (Go.str("true") : GoString);
}

function testEverything(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(null);
	bool_((Go.str("test_bool") : GoString), false, (Go.str("bool value") : GoString));
	int((Go.str("test_int") : GoString), (0 : GoInt), (Go.str("int value") : GoString));
	int64((Go.str("test_int64") : GoString), (0 : GoInt64), (Go.str("int64 value") : GoString));
	uint((Go.str("test_uint") : GoString), (0 : GoUInt), (Go.str("uint value") : GoString));
	uint64((Go.str("test_uint64") : GoString), (0 : GoUInt64), (Go.str("uint64 value") : GoString));
	string((Go.str("test_string") : GoString), (Go.str("0") : GoString), (Go.str("string value") : GoString));
	float64((Go.str("test_float64") : GoString), (0 : GoFloat64), (Go.str("float64 value") : GoString));
	duration((Go.str("test_duration") : GoString), (0 : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	func((Go.str("test_func") : GoString), (Go.str("func value") : GoString), function(_0:GoString):Error {
		return (null : stdgo.Error);
	});
	var _m = (new GoObjectMap<GoString,
		Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "name",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "usage",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "value",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
			},
			{
				name: "defValue",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			}
		])))))) : GoMap<GoString, Ref<Flag>>);
	var _desired:GoString = (Go.str("0") : GoString);
	var _visitor = function(_f:Flag):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == (Go.str("test_") : GoString))) {
			_m[_f.name] = _f;
			var _ok:Bool = false;
			if ((_f.value.string() : GoString) == _desired) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_bool") : GoString)) && ((_f.value.string() : GoString) == _boolString(_desired))) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_duration") : GoString))
				&& ((_f.value.string() : GoString) == (_desired + (Go.str("s") : GoString)))) {
				_ok = true;
			} else if ((_f.name == (Go.str("test_func") : GoString)) && ((_f.value.string() : GoString) == (Go.str() : GoString))) {
				_ok = true;
			};
			if (!_ok) {
				_t.error(Go.toInterface((Go.str("Visit: bad value") : GoString)), Go.toInterface((_f.value.string() : GoString)),
					Go.toInterface((Go.str("for") : GoString)), Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
	if ((_m.length) != (9 : GoInt)) {
		_t.error(Go.toInterface((Go.str("VisitAll misses some flags") : GoString)));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	_m = (new GoObjectMap<GoString,
		Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind),
		stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "name",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "usage",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			},
			{
				name: "value",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))
			},
			{
				name: "defValue",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(string_kind)
			}
		])))))) : GoMap<GoString, Ref<Flag>>);
	visit(_visitor);
	if ((_m.length) != (0 : GoInt)) {
		_t.errorf((Go.str("Visit sees unset flags") : GoString));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	set((Go.str("test_bool") : GoString), (Go.str("true") : GoString));
	set((Go.str("test_int") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_int64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_uint") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_uint64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_string") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_float64") : GoString), (Go.str("1") : GoString));
	set((Go.str("test_duration") : GoString), (Go.str("1s") : GoString));
	set((Go.str("test_func") : GoString), (Go.str("1") : GoString));
	_desired = (Go.str("1") : GoString);
	visit(_visitor);
	if ((_m.length) != (9 : GoInt)) {
		_t.error(Go.toInterface((Go.str("Visit fails after set") : GoString)));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	var _flagNames:Slice<GoString> = (null : Slice<GoString>);
	visit(function(_f:Flag):Void {
		_flagNames = (_flagNames.__append__(_f.name));
	});
	if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
		_t.errorf((Go.str("flag names not sorted: %v") : GoString), Go.toInterface(_flagNames));
	};
}

function testGet(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(null);
	bool_((Go.str("test_bool") : GoString), true, (Go.str("bool value") : GoString));
	int((Go.str("test_int") : GoString), (1 : GoInt), (Go.str("int value") : GoString));
	int64((Go.str("test_int64") : GoString), (2 : GoInt64), (Go.str("int64 value") : GoString));
	uint((Go.str("test_uint") : GoString), (3 : GoUInt), (Go.str("uint value") : GoString));
	uint64((Go.str("test_uint64") : GoString), (4 : GoUInt64), (Go.str("uint64 value") : GoString));
	string((Go.str("test_string") : GoString), (Go.str("5") : GoString), (Go.str("string value") : GoString));
	float64((Go.str("test_float64") : GoString), (6 : GoFloat64), (Go.str("float64 value") : GoString));
	duration((Go.str("test_duration") : GoString), (7 : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	var _visitor = function(_f:Flag):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == (Go.str("test_") : GoString))) {
			var __tmp__ = try {
				{value: ((_f.value.__underlying__().value : Dynamic) : Getter), ok: true};
			} catch (_) {
				{value: (null : Getter), ok: false};
			}, _g = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf((Go.str("Visit: value does not satisfy Getter: %T") : GoString), Go.toInterface(_f.value));
				return;
			};
			if (_f.name == ((Go.str("test_bool") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == true;
			} else if (_f.name == ((Go.str("test_int") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (1 : GoInt);
			} else if (_f.name == ((Go.str("test_int64") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (2 : GoInt64);
			} else if (_f.name == ((Go.str("test_uint") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (3 : GoUInt);
			} else if (_f.name == ((Go.str("test_uint64") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (4 : GoUInt64);
			} else if (_f.name == ((Go.str("test_string") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (Go.str("5") : GoString);
			} else if (_f.name == ((Go.str("test_float64") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (6 : GoFloat64);
			} else if (_f.name == ((Go.str("test_duration") : GoString))) {
				_ok = _g.get(Go.pointer(_g)) == (7 : stdgo.time.Time.Duration);
			};
			if (!_ok) {
				_t.errorf((Go.str("Visit: bad value %T(%v) for %s") : GoString), Go.toInterface(_g.get(Go.pointer(_g))),
					Go.toInterface(_g.get(Go.pointer(_g))), Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
}

function testUsage(_t:stdgo.testing.Testing.T):Void {
	var _called:Bool = false;
	resetForTesting(function():Void {
		_called = true;
	});
	if (commandLine.parse((new Slice<GoString>(0, 0, (Go.str("-x") : GoString)) : Slice<GoString>)) == null) {
		_t.error(Go.toInterface((Go.str("parse did not fail for unknown flag") : GoString)));
	};
	if (!_called) {
		_t.error(Go.toInterface((Go.str("did not call Usage for unknown flag") : GoString)));
	};
}

function _testParse(_f:FlagSet, _t:stdgo.testing.Testing.T):Void {
	if (_f.parsed()) {
		_t.error(Go.toInterface((Go.str("f.Parse() = true before Parse") : GoString)));
	};
	var _boolFlag = _f.bool_((Go.str("bool") : GoString), false, (Go.str("bool value") : GoString));
	var _bool2Flag = _f.bool_((Go.str("bool2") : GoString), false, (Go.str("bool2 value") : GoString));
	var _intFlag = _f.int((Go.str("int") : GoString), (0 : GoInt), (Go.str("int value") : GoString));
	var _int64Flag = _f.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str("int64 value") : GoString));
	var _uintFlag = _f.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str("uint value") : GoString));
	var _uint64Flag = _f.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str("uint64 value") : GoString));
	var _stringFlag = _f.string((Go.str("string") : GoString), (Go.str("0") : GoString), (Go.str("string value") : GoString));
	var _float64Flag = _f.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str("float64 value") : GoString));
	var _durationFlag = _f.duration((Go.str("duration") : GoString), ("5000000000" : stdgo.time.Time.Duration), (Go.str("time.Duration value") : GoString));
	var _extra:GoString = (Go.str("one-extra-argument") : GoString);
	var _args = (new Slice<GoString>(0, 0, (Go.str("-bool") : GoString), (Go.str("-bool2=true") : GoString), (Go.str("--int") : GoString),
		(Go.str("22") : GoString), (Go.str("--int64") : GoString), (Go.str("0x23") : GoString), (Go.str("-uint") : GoString), (Go.str("24") : GoString),
		(Go.str("--uint64") : GoString), (Go.str("25") : GoString), (Go.str("-string") : GoString), (Go.str("hello") : GoString),
		(Go.str("-float64") : GoString), (Go.str("2718e28") : GoString), (Go.str("-duration") : GoString), (Go.str("2m") : GoString),
		_extra) : Slice<GoString>);
	{
		var _err:stdgo.Error = _f.parse(_args);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	if (!_f.parsed()) {
		_t.error(Go.toInterface((Go.str("f.Parse() = false after Parse") : GoString)));
	};
	if (_boolFlag.value != true) {
		_t.error(Go.toInterface((Go.str("bool flag should be true, is ") : GoString)), Go.toInterface(_boolFlag.value));
	};
	if (_bool2Flag.value != true) {
		_t.error(Go.toInterface((Go.str("bool2 flag should be true, is ") : GoString)), Go.toInterface(_bool2Flag.value));
	};
	if (_intFlag.value != (22 : GoInt)) {
		_t.error(Go.toInterface((Go.str("int flag should be 22, is ") : GoString)), Go.toInterface(_intFlag.value));
	};
	if (_int64Flag.value != (35 : GoInt64)) {
		_t.error(Go.toInterface((Go.str("int64 flag should be 0x23, is ") : GoString)), Go.toInterface(_int64Flag.value));
	};
	if (_uintFlag.value != (24 : GoUInt)) {
		_t.error(Go.toInterface((Go.str("uint flag should be 24, is ") : GoString)), Go.toInterface(_uintFlag.value));
	};
	if (_uint64Flag.value != (25 : GoUInt64)) {
		_t.error(Go.toInterface((Go.str("uint64 flag should be 25, is ") : GoString)), Go.toInterface(_uint64Flag.value));
	};
	if (_stringFlag.value != (Go.str("hello") : GoString)) {
		_t.error(Go.toInterface((Go.str("string flag should be `hello`, is ") : GoString)), Go.toInterface(_stringFlag.value));
	};
	if (_float64Flag.value != (2.718e+31 : GoFloat64)) {
		_t.error(Go.toInterface((Go.str("float64 flag should be 2718e28, is ") : GoString)), Go.toInterface(_float64Flag.value));
	};
	if (_durationFlag.value != ("120000000000" : stdgo.time.Time.Duration)) {
		_t.error(Go.toInterface((Go.str("duration flag should be 2m, is ") : GoString)), Go.toInterface(Go.asInterface(_durationFlag.value)));
	};
	if ((_f.args().length) != (1 : GoInt)) {
		_t.error(Go.toInterface((Go.str("expected one argument, got") : GoString)), Go.toInterface((_f.args().length)));
	} else if (_f.args()[(0 : GoInt)] != _extra) {
		_t.errorf((Go.str("expected argument %q got %q") : GoString), Go.toInterface(_extra), Go.toInterface(_f.args()[(0 : GoInt)]));
	};
}

function testParse(_t:stdgo.testing.Testing.T):Void {
	resetForTesting(function():Void {
		_t.error(Go.toInterface((Go.str("bad parse") : GoString)));
	});
	_testParse(commandLine, _t);
}

function testFlagSetParse(_t:stdgo.testing.Testing.T):Void {
	_testParse(newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling)), _t);
}

function testUserDefined(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
	_flags.var_(Go.asInterface(_v), (Go.str("v") : GoString), (Go.str("usage") : GoString));
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString), (Go.str("-v") : GoString),
			(Go.str("2") : GoString), (Go.str("-v=3") : GoString)) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_v.length) != (3 : GoInt)) {
		_t.fatal(Go.toInterface((Go.str("expected 3 args; got ") : GoString)), Go.toInterface((_v.length)));
	};
	var _expect:GoString = (Go.str("[1 2 3]") : GoString);
	if ((_v.string() : GoString) != _expect) {
		_t.errorf((Go.str("expected value %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface((_v.string() : GoString)));
	};
}

function testUserDefinedFunc(_t:stdgo.testing.Testing.T):Void {
	var _flags = newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _ss:Slice<GoString> = (null : Slice<GoString>);
	_flags.func((Go.str("v") : GoString), (Go.str("usage") : GoString), function(_s:GoString):Error {
		_ss = (_ss.__append__(_s));
		return (null : stdgo.Error);
	});
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString), (Go.str("-v") : GoString),
			(Go.str("2") : GoString), (Go.str("-v=3") : GoString)) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_ss.length) != (3 : GoInt)) {
		_t.fatal(Go.toInterface((Go.str("expected 3 args; got ") : GoString)), Go.toInterface((_ss.length)));
	};
	var _expect:GoString = (Go.str("[1 2 3]") : GoString);
	{
		var _got:GoString = stdgo.fmt.Fmt.sprint(_ss);
		if (_got != _expect) {
			_t.errorf((Go.str("expected value %q got %q") : GoString), Go.toInterface(_expect), Go.toInterface(_got));
		};
	};
	var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
	_flags.setOutput(Go.asInterface(_buf));
	_flags.parse((new Slice<GoString>(0, 0, (Go.str("-h") : GoString)) : Slice<GoString>));
	{
		var _usage:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_usage, (Go.str("usage") : GoString))) {
			_t.errorf((Go.str("usage string not included: %q") : GoString), Go.toInterface(_usage));
		};
	};
	_flags = newFlagSet((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	_flags.func((Go.str("v") : GoString), (Go.str("usage") : GoString), function(_s:GoString):Error {
		return stdgo.fmt.Fmt.errorf((Go.str("test error") : GoString));
	});
	{
		var _err:stdgo.Error = _flags.parse((null : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var _err:stdgo.Error = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-v") : GoString), (Go.str("1") : GoString)) : Slice<GoString>));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("expected error; got none") : GoString)));
		} else {
			var _errMsg:GoString = _err.error();
			if (!stdgo.strings.Strings.contains(_errMsg, (Go.str("test error") : GoString))) {
				_t.errorf(("error should contain \"test error\"; got %q" : GoString), Go.toInterface(_errMsg));
			};
		};
	};
}

function testUserDefinedForCommandLine(_t:stdgo.testing.Testing.T):Void {
	var _help:GoString = (Go.str("HELP") : GoString);
	var _result:GoString = ("" : GoString);
	resetForTesting(function():Void {
		_result = (Go.str("HELP") : GoString);
	});
	usage();
	if (_result != (Go.str("HELP") : GoString)) {
		_t.fatalf((Go.str("got %q; expected %q") : GoString), Go.toInterface(_result), Go.toInterface((Go.str("HELP") : GoString)));
	};
}

function testUserDefinedBool(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
	var _err:Error = (null : stdgo.Error);
	_flags.var_(Go.asInterface(_b), (Go.str("b") : GoString), (Go.str("usage") : GoString));
	{
		_err = _flags.parse((new Slice<GoString>(0, 0, (Go.str("-b") : GoString), (Go.str("-b") : GoString), (Go.str("-b") : GoString),
			(Go.str("-b=true") : GoString), (Go.str("-b=false") : GoString), (Go.str("-b") : GoString), (Go.str("barg") : GoString),
			(Go.str("-b") : GoString)) : Slice<GoString>));
		if (_err != null) {
			if (_b._count < (4:GoInt)) {
				_t.error(Go.toInterface(_err));
			};
		};
	};
	if (_b._count != (4 : GoInt)) {
		_t.errorf((Go.str("want: %d; got: %d") : GoString), Go.toInterface((4 : GoInt)), Go.toInterface(_b._count));
	};
	if (_err == null) {
		_t.error(Go.toInterface((Go.str("expected error; got none") : GoString)));
	};
}

function testSetOutput(_t:stdgo.testing.Testing.T):Void {
	var _flags:FlagSet = ({} : FlagSet);
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_flags.setOutput(Go.asInterface(_buf));
	_flags.init((Go.str("test") : GoString), (0 : ErrorHandling));
	_flags.parse((new Slice<GoString>(0, 0, (Go.str("-unknown") : GoString)) : Slice<GoString>));
	{
		var _out:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_out, (Go.str("-unknown") : GoString))) {
			_t.logf((Go.str("expected output mentioning unknown; got %q") : GoString), Go.toInterface(_out));
		};
	};
}

/**
	// This tests that one can reset the flags. This still works but not well, and is
	// superseded by FlagSet.
**/
function testChangingArgs(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	resetForTesting(function():Void {
		_t.fatal(Go.toInterface((Go.str("bad parse") : GoString)));
	});
	try {
		var _oldArgs = stdgo.os.Os.args;
		__deferstack__.unshift(() -> {
			var a = function():Void {
				stdgo.os.Os.args = _oldArgs;
			};
			a();
		});
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, (Go.str("cmd") : GoString), (Go.str("-before") : GoString), (Go.str("subcmd") : GoString),
			(Go.str("-after") : GoString), (Go.str("args") : GoString)) : Slice<GoString>);
		var _before = bool_((Go.str("before") : GoString), false, (Go.str() : GoString));
		{
			var _err:stdgo.Error = commandLine.parse((stdgo.os.Os.args.__slice__((1 : GoInt)) : Slice<GoString>));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		var _cmd:GoString = arg((0 : GoInt));
		stdgo.os.Os.args = args();
		var _after = bool_((Go.str("after") : GoString), false, (Go.str() : GoString));
		parse();
		var _args = args();
		if ((((!_before.value || (_cmd != (Go.str("subcmd") : GoString))) || !_after.value) || (_args.length != (1 : GoInt)))
			|| (_args[(0 : GoInt)] != (Go.str("args") : GoString))) {
			_t.fatalf((Go.str("expected true subcmd true [args] got %v %v %v %v") : GoString), Go.toInterface(_before.value), Go.toInterface(_cmd),
				Go.toInterface(_after.value), Go.toInterface(_args));
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that -help invokes the usage message and returns ErrHelp.
**/
function testHelp(_t:stdgo.testing.Testing.T):Void {
	var _helpCalled:Bool = false;
	var _fs = newFlagSet((Go.str("help test") : GoString), (0 : ErrorHandling));
	_fs.usage = function():Void {
		_helpCalled = true;
	};
	var _flag:Bool = false;
	_fs.boolVar(Go.pointer(_flag), (Go.str("flag") : GoString), false, (Go.str("regular flag") : GoString));
	var _err:stdgo.Error = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-flag=true") : GoString)) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("expected no error; got ") : GoString)), Go.toInterface(_err));
	};
	if (!_flag) {
		_t.error(Go.toInterface((Go.str("flag was not set by -flag") : GoString)));
	};
	if (_helpCalled) {
		_t.error(Go.toInterface((Go.str("help called for regular flag") : GoString)));
		_helpCalled = false;
	};
	_err = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-help") : GoString)) : Slice<GoString>));
	if (_err == null) {
		_t.fatal(Go.toInterface((Go.str("error expected") : GoString)));
	};
	if (_err != errHelp) {
		_t.fatal(Go.toInterface((Go.str("expected ErrHelp; got ") : GoString)), Go.toInterface(_err));
	};
	if (!_helpCalled) {
		_t.fatal(Go.toInterface((Go.str("help was not called") : GoString)));
	};
	var _help:Bool = false;
	_fs.boolVar(Go.pointer(_help), (Go.str("help") : GoString), false, (Go.str("help flag") : GoString));
	_helpCalled = false;
	_err = _fs.parse((new Slice<GoString>(0, 0, (Go.str("-help") : GoString)) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface((Go.str("expected no error for defined -help; got ") : GoString)), Go.toInterface(_err));
	};
	if (_helpCalled) {
		_t.fatal(Go.toInterface((Go.str("help was called; should not have been for defined help flag") : GoString)));
	};
}

function testPrintDefaults(_t:stdgo.testing.Testing.T):Void {
	var _fs = newFlagSet((Go.str("print defaults test") : GoString), (0 : ErrorHandling));
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_fs.setOutput(Go.asInterface(_buf));
	_fs.bool_((Go.str("A") : GoString), false, (Go.str("for bootstrapping, allow \'any\' type") : GoString));
	_fs.bool_((Go.str("Alongflagname") : GoString), false, (Go.str("disable bounds checking") : GoString));
	_fs.bool_((Go.str("C") : GoString), true, (Go.str("a boolean defaulting to true") : GoString));
	_fs.string((Go.str("D") : GoString), (Go.str() : GoString), (Go.str("set relative `path` for local imports") : GoString));
	_fs.string((Go.str("E") : GoString), (Go.str("0") : GoString), (Go.str("issue 23543") : GoString));
	_fs.float64((Go.str("F") : GoString), (2.7 : GoFloat64), (Go.str("a non-zero `number`") : GoString));
	_fs.float64((Go.str("G") : GoString), (0 : GoFloat64), (Go.str("a float that defaults to zero") : GoString));
	_fs.string((Go.str("M") : GoString), (Go.str() : GoString), (Go.str("a multiline\nhelp\nstring") : GoString));
	_fs.int((Go.str("N") : GoString), (27 : GoInt), (Go.str("a non-zero int") : GoString));
	_fs.bool_((Go.str("O") : GoString), true, (Go.str("a flag\nmultiline help string") : GoString));
	_fs.var_(Go.asInterface((new stdgo.flag_test.Flag_test.T_flagVar(0, 0, (Go.str("a") : GoString),
		(Go.str("b") : GoString)) : stdgo.flag_test.Flag_test.T_flagVar)),
		(Go.str("V") : GoString), (Go.str("a `list` of strings") : GoString));
	_fs.int((Go.str("Z") : GoString), (0 : GoInt), (Go.str("an int that defaults to zero") : GoString));
	_fs.var_(Go.asInterface((new stdgo.flag_test.Flag_test.T_zeroPanicker(true, (Go.str() : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker)),
		(Go.str("ZP0") : GoString), (Go.str("a flag whose String method panics when it is zero") : GoString));
	_fs.var_(Go.asInterface((new stdgo.flag_test.Flag_test.T_zeroPanicker(true, (Go.str("something") : GoString)) : stdgo.flag_test.Flag_test.T_zeroPanicker)),
		(Go.str("ZP1") : GoString), (Go.str("a flag whose String method panics when it is zero") : GoString));
	_fs.duration((Go.str("maxT") : GoString), (0 : stdgo.time.Time.Duration), (Go.str("set `timeout` for dial") : GoString));
	_fs.printDefaults();
	var _got:GoString = (_buf.string() : GoString);
	if (_got != (Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n") : GoString)) {
		_t.errorf((Go.str("got:\n%q\nwant:\n%q") : GoString), Go.toInterface(_got),
			Go.toInterface((Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n") : GoString)));
	};
}

/**
	// Issue 19230: validate range of Int and Uint flag values.
**/
function testIntFlagOverflow(_t:stdgo.testing.Testing.T):Void {
	if (false) {
		return;
	};
	resetForTesting(null);
	int((Go.str("i") : GoString), (0 : GoInt), (Go.str() : GoString));
	uint((Go.str("u") : GoString), (0 : GoUInt), (Go.str() : GoString));
	{
		var _err:stdgo.Error = set((Go.str("i") : GoString), (Go.str("2147483648") : GoString));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("unexpected success setting Int") : GoString)));
		};
	};
	{
		var _err:stdgo.Error = set((Go.str("u") : GoString), (Go.str("4294967296") : GoString));
		if (_err == null) {
			_t.error(Go.toInterface((Go.str("unexpected success setting Uint") : GoString)));
		};
	};
}

/**
	// Issue 20998: Usage should respect CommandLine.output.
**/
function testUsageOutput(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	resetForTesting(defaultUsage);
	try {
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		commandLine.setOutput(Go.asInterface(_buf));
		{
			var _a0 = stdgo.os.Os.args;
			__deferstack__.unshift(() -> {
				var a = function(_old:Slice<GoString>):Void {
					stdgo.os.Os.args = _old;
				};
				a(_a0);
			});
		};
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, (Go.str("app") : GoString), (Go.str("-i=1") : GoString),
			(Go.str("-unknown") : GoString)) : Slice<GoString>);
		parse();
		var _want:GoString = (Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString);
		{
			var _got:GoString = (_buf.string() : GoString);
			if (_got != (Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString)) {
				_t.errorf((Go.str("output = %q; want %q") : GoString), Go.toInterface(_got),
					Go.toInterface((Go.str("flag provided but not defined: -i\nUsage of app:\n") : GoString)));
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testGetters(_t:stdgo.testing.Testing.T):Void {
	var _expectedName:GoString = (Go.str("flag set") : GoString);
	var _expectedErrorHandling:ErrorHandling = (0 : ErrorHandling);
	var _expectedOutput:stdgo.io.Io.Writer = Go.asInterface(stdgo.os.Os.stderr);
	var _fs = newFlagSet(_expectedName, _expectedErrorHandling);
	if (_fs.name() != _expectedName) {
		_t.errorf((Go.str("unexpected name: got %s, expected %s") : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != _expectedErrorHandling) {
		_t.errorf((Go.str("unexpected ErrorHandling: got %d, expected %d") : GoString), Go.toInterface(_fs.errorHandling()),
			Go.toInterface(_expectedErrorHandling));
	};
	if (_fs.output() != _expectedOutput) {
		_t.errorf((Go.str("unexpected output: got %#v, expected %#v") : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
	_expectedName = (Go.str("gopher") : GoString);
	_expectedErrorHandling = (1 : ErrorHandling);
	_expectedOutput = Go.asInterface(stdgo.os.Os.stdout);
	_fs.init(_expectedName, _expectedErrorHandling);
	_fs.setOutput(_expectedOutput);
	if (_fs.name() != _expectedName) {
		_t.errorf((Go.str("unexpected name: got %s, expected %s") : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != _expectedErrorHandling) {
		_t.errorf((Go.str("unexpected ErrorHandling: got %d, expected %d") : GoString), Go.toInterface(_fs.errorHandling()),
			Go.toInterface(_expectedErrorHandling));
	};
	if (_fs.output() != _expectedOutput) {
		_t.errorf((Go.str("unexpected output: got %v, expected %v") : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
}

function testParseError(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _typ in (new Slice<GoString>(0, 0, (Go.str("bool") : GoString), (Go.str("int") : GoString), (Go.str("int64") : GoString),
		(Go.str("uint") : GoString), (Go.str("uint64") : GoString), (Go.str("float64") : GoString), (Go.str("duration") : GoString)) : Slice<GoString>)) {
		var _fs = newFlagSet((Go.str("parse error test") : GoString), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.bool_((Go.str("bool") : GoString), false, (Go.str() : GoString));
		_fs.int((Go.str("int") : GoString), (0 : GoInt), (Go.str() : GoString));
		_fs.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str() : GoString));
		_fs.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str() : GoString));
		_fs.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str() : GoString));
		_fs.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str() : GoString));
		_fs.duration((Go.str("duration") : GoString), (0 : stdgo.time.Time.Duration), (Go.str() : GoString));
		var _args = (new Slice<GoString>(0, 0, ((Go.str("-") : GoString) + _typ) + (Go.str("=x") : GoString)) : Slice<GoString>);
		var _err:stdgo.Error = _fs.parse(_args);
		if (_err == null) {
			_t.errorf((Go.str("Parse(%q)=%v; expected parse error") : GoString), Go.toInterface(_args), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("invalid") : GoString))
			|| !stdgo.strings.Strings.contains(_err.error(), (Go.str("parse error") : GoString))) {
			_t.errorf((Go.str("Parse(%q)=%v; expected parse error") : GoString), Go.toInterface(_args), Go.toInterface(_err));
		};
	};
}

function testRangeError(_t:stdgo.testing.Testing.T):Void {
	var _bad = (new Slice<GoString>(0, 0, (Go.str("-int=123456789012345678901") : GoString), (Go.str("-int64=123456789012345678901") : GoString),
		(Go.str("-uint=123456789012345678901") : GoString), (Go.str("-uint64=123456789012345678901") : GoString),
		(Go.str("-float64=1e1000") : GoString)) : Slice<GoString>);
	for (_0 => _arg in _bad) {
		var _fs = newFlagSet((Go.str("parse error test") : GoString), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.int((Go.str("int") : GoString), (0 : GoInt), (Go.str() : GoString));
		_fs.int64((Go.str("int64") : GoString), (0 : GoInt64), (Go.str() : GoString));
		_fs.uint((Go.str("uint") : GoString), (0 : GoUInt), (Go.str() : GoString));
		_fs.uint64((Go.str("uint64") : GoString), (0 : GoUInt64), (Go.str() : GoString));
		_fs.float64((Go.str("float64") : GoString), (0 : GoFloat64), (Go.str() : GoString));
		var _err:stdgo.Error = _fs.parse((new Slice<GoString>(0, 0, _arg) : Slice<GoString>));
		if (_err == null) {
			_t.errorf((Go.str("Parse(%q)=%v; expected range error") : GoString), Go.toInterface(_arg), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), (Go.str("invalid") : GoString))
			|| !stdgo.strings.Strings.contains(_err.error(), (Go.str("value out of range") : GoString))) {
			_t.errorf((Go.str("Parse(%q)=%v; expected range error") : GoString), Go.toInterface(_arg), Go.toInterface(_err));
		};
	};
}

function testExitCode(_t:stdgo.testing.Testing.T):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	var _magic:GoInt = (123 : GoInt);
	if (stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG") : GoString)) != (Go.str() : GoString)) {
		var _fs = newFlagSet((Go.str("test") : GoString), (1 : ErrorHandling));
		if (stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG_HANDLE") : GoString)) != (Go.str() : GoString)) {
			var _b:Bool = false;
			_fs.boolVar(Go.pointer(_b), stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG_HANDLE") : GoString)), false, (Go.str() : GoString));
		};
		_fs.parse((new Slice<GoString>(0, 0, stdgo.os.Os.getenv((Go.str("GO_CHILD_FLAG") : GoString))) : Slice<GoString>));
		Sys.exit(_magic);
	};
	var _tests = (new Slice<T__struct_0>(0, 0, ({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: ("" : GoString), _flagHandle: ("" : GoString), _expectExit: (0 : GoInt)} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _test in _tests) {
		var _cmd = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], (Go.str("-test.run=TestExitCode") : GoString));
		_cmd.env = (stdgo.os.Os.environ()
			.__append__((Go.str("GO_CHILD_FLAG=") : GoString) + _test._flag, (Go.str("GO_CHILD_FLAG_HANDLE=") : GoString) + _test._flagHandle));
		_cmd.run();
		var _got:GoInt = _cmd.processState.exitCode();
		if (false && (_test._expectExit != (0 : GoInt))) {
			_test._expectExit = (1 : GoInt);
		};
		if (_got != _test._expectExit) {
			_t.errorf((Go.str("unexpected exit code for test case %+v \n: got %d, expect %d") : GoString), Go.toInterface(_test), Go.toInterface(_got),
				Go.toInterface(_test._expectExit));
		};
	};
}

function _mustPanic(_t:stdgo.testing.Testing.T, _testName:GoString, _expected:GoString, _f:() -> Void):Void {
	var __deferstack__:Array<Void->Void> = [];
	_t.helper();
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				if (({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}) == null) {
					var _msg:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? null : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__();
					_t.errorf((Go.str("%s\n: expected panic(%q), but did not panic") : GoString), Go.toInterface(_testName), Go.toInterface(_expected));
				} else if (Go.assertable(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				} : GoString))) {
					var _msg:GoString = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? null : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__() == null ? null : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? null : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__().value;
					if (_msg != _expected) {
						_t.errorf((Go.str("%s\n: expected panic(%q), but got panic(%q)") : GoString), Go.toInterface(_testName), Go.toInterface(_expected),
							Go.toInterface(_msg));
					};
				} else {
					var _msg:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? null : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__();
					_t.errorf((Go.str("%s\n: expected panic(%q), but got panic(%T%v)") : GoString), Go.toInterface(_testName), Go.toInterface(_expected),
						Go.toInterface(_msg), Go.toInterface(_msg));
				};
			};
			a();
		});
		_f();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testInvalidFlags(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({_flag: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_1),
		({_flag: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf((Go.str("FlagSet.Var(&v, %q, \"\")") : GoString), Go.toInterface(_test._flag));
		var _fs = newFlagSet((Go.str() : GoString), (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput(Go.asInterface(_buf));
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
			_fs.var_(Go.asInterface(_v), _test._flag, (Go.str() : GoString));
		});
		{
			var _msg:GoString = _test._errorMsg + (Go.str("\n") : GoString);
			if (_msg != (_buf.string() : GoString)) {
				_t.errorf((Go.str("%s\n: unexpected output: expected %q, bug got %q") : GoString), Go.toInterface(_testName), Go.toInterface(_msg),
					Go.toInterface(_buf));
			};
		};
	};
}

function testRedefinedFlags(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<T__struct_2>(0, 0, ({_flagSetName: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_2),
		({_flagSetName: ("" : GoString), _errorMsg: ("" : GoString)} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf((Go.str("flag redefined in FlagSet(%q)") : GoString), Go.toInterface(_test._flagSetName));
		var _fs = newFlagSet(_test._flagSetName, (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput(Go.asInterface(_buf));
		var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
		_fs.var_(Go.asInterface(_v), (Go.str("foo") : GoString), (Go.str() : GoString));
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			_fs.var_(Go.asInterface(_v), (Go.str("foo") : GoString), (Go.str() : GoString));
		});
		{
			var _msg:GoString = _test._errorMsg + (Go.str("\n") : GoString);
			if (_msg != (_buf.string() : GoString)) {
				_t.errorf((Go.str("%s\n: unexpected output: expected %q, bug got %q") : GoString), Go.toInterface(_testName), Go.toInterface(_msg),
					Go.toInterface(_buf));
			};
		};
	};
}

@:keep var _ = {
	try {
		var _defaultGopher:GoString = (Go.str("pocket") : GoString), _usage:GoString = (Go.str("the variety of gopher") : GoString);
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), (Go.str("gopher_type") : GoString), (Go.str("pocket") : GoString),
			(Go.str("the variety of gopher") : GoString));
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), (Go.str("g") : GoString), (Go.str("pocket") : GoString),
			(Go.str("the variety of gopher (shorthand)") : GoString));
		stdgo.flag.Flag.var_(Go.asInterface(_intervalFlag), (Go.str("deltaT") : GoString),
			(Go.str("comma-separated list of intervals to use between events") : GoString));
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class URLValue_asInterface {
	@:keep
	public function set(_s:GoString):Error
		return __self__.set(_s);

	@:keep
	public function string():GoString
		return __self__.string();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:URLValue;
}

@:keep private class URLValue_static_extension {
	@:keep
	static public function set(_v:URLValue, _s:GoString):Error {
		{
			var __tmp__ = stdgo.net.url.Url.parse(_s),
				_u:Ref<stdgo.net.url.Url.URL> = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			} else {
				{
					var __tmp__ = (_u == null ? null : _u.__copy__());
					_v.url.scheme = __tmp__.scheme;
					_v.url.opaque = __tmp__.opaque;
					_v.url.user = __tmp__.user;
					_v.url.host = __tmp__.host;
					_v.url.path = __tmp__.path;
					_v.url.rawPath = __tmp__.rawPath;
					_v.url.omitHost = __tmp__.omitHost;
					_v.url.forceQuery = __tmp__.forceQuery;
					_v.url.rawQuery = __tmp__.rawQuery;
					_v.url.fragment = __tmp__.fragment;
					_v.url.rawFragment = __tmp__.rawFragment;
				};
			};
		};
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_v:URLValue):GoString {
		if (_v.url != null) {
			return (_v.url.string() : GoString);
		};
		return (Go.str() : GoString);
	}
}

private class T_boolFlagVar_asInterface {
	@:keep
	public function isBoolFlag():Bool
		return __self__.isBoolFlag();

	@:keep
	public function set(_value:GoString):Error
		return __self__.set(_value);

	@:keep
	public function string():GoString
		return __self__.string();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_boolFlagVar;
}

@:keep private class T_boolFlagVar_static_extension {
	@:keep
	static public function isBoolFlag(_b:T_boolFlagVar):Bool {
		return _b._count < (4:GoInt);
	}

	@:keep
	static public function set(_b:T_boolFlagVar, _value:GoString):Error {
		if (_value == (Go.str("true") : GoString)) {
			_b._count++;
		};
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_b:T_boolFlagVar):GoString {
		return stdgo.fmt.Fmt.sprintf((Go.str("%d") : GoString), Go.toInterface(_b._count));
	}
}

private class T_zeroPanicker_asInterface {
	@:keep
	public function string():GoString
		return __self__.string();

	@:keep
	public function set(_s:GoString):Error
		return __self__.set(_s);

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_zeroPanicker;
}

@:keep private class T_zeroPanicker_static_extension {
	@:keep
	static public function string(_f:T_zeroPanicker):GoString {
		if (!_f._dontPanic) {
			throw Go.toInterface((Go.str("panic!") : GoString));
		};
		return _f._v;
	}

	@:keep
	static public function set(_f:T_zeroPanicker, _s:GoString):Error {
		_f._v = _s;
		return (null : stdgo.Error);
	}
}

private class T_interval_asInterface {
	/**
		// Set is the method to set the flag value, part of the flag.Value interface.
		// Set's argument is a string to be parsed to set the flag.
		// It's a comma-separated list, so we split it.
	**/
	@:keep
	public function set(_value:GoString):Error
		return __self__.set(_value);

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	public function string():GoString
		return __self__.string();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_interval;
}

@:keep private class T_interval_static_extension {
	/**
		// Set is the method to set the flag value, part of the flag.Value interface.
		// Set's argument is a string to be parsed to set the flag.
		// It's a comma-separated list, so we split it.
	**/
	@:keep
	static public function set(_i:T_interval, _value:GoString):Error {
		if ((_i.length) > (0 : GoInt)) {
			return stdgo.errors.Errors.new_((Go.str("interval flag already set") : GoString));
		};
		for (_0 => _dt in stdgo.strings.Strings.split(_value, (Go.str(",") : GoString))) {
			var __tmp__ = stdgo.time.Time.parseDuration(_dt),
				_duration:stdgo.time.Time.Duration = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_i = (_i.__append__(_duration));
		};
		return (null : stdgo.Error);
	}

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	static public function string(_i:T_interval):GoString {
		return stdgo.fmt.Fmt.sprint(_i);
	}
}

private class T_flagVar_asInterface {
	@:keep
	public function set(_value:GoString):Error
		return __self__.set(_value);

	@:keep
	public function string():GoString
		return __self__.string();

	public function new(?__self__) {
		if (__self__ != null)
			this.__self__ = __self__;
	}

	public function __underlying__()
		return Go.toInterface(__self__);

	var __self__:T_flagVar;
}

@:keep private class T_flagVar_static_extension {
	@:keep
	static public function set(_f:T_flagVar, _value:GoString):Error {
		_f = (_f.__append__(_value));
		return (null : stdgo.Error);
	}

	@:keep
	static public function string(_f:T_flagVar):GoString {
		return stdgo.fmt.Fmt.sprint((_f : Slice<GoString>));
	}
}
