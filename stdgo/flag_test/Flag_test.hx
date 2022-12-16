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
private var _species:Pointer<GoString> = stdgo.flag.Flag.string(Go.str("species"), Go.str("gopher"), Go.str("the species we are studying"));

private var _u:Ref<stdgo.net.url.Url.URL> = ((new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL) : Ref<stdgo.net.url.Url.URL>);

/**
	// Example 2: Two flags sharing a variable, so we can have a shorthand.
	// The order of initialization is undefined, so make sure both use the
	// same default value. They must be set up with an init function.
**/
private var _gopherType:GoString = ("" : GoString);

private var _intervalFlag:T_interval = new stdgo.flag_test.Flag_test.T_interval(0, 0);
private final _defaultOutput:GoString = Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n");

@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
	public var url:Ref<stdgo.net.url.Url.URL> = (null : Ref<stdgo.net.url.Url.URL>);

	public function new(?url:Ref<stdgo.net.url.Url.URL>) {
		if (url != null)
			this.url = url;
	}

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

	public function __copy__() {
		return new T_zeroPanicker(_dontPanic, _v);
	}
}

@:structInit @:local private class T__struct_0 {
	public var _flag:GoString = "";
	public var _flagHandle:GoString = "";
	public var _expectExit:GoInt = 0;

	public function string():String
		return "{" + Go.string(_flag) + " " + Go.string(_flagHandle) + " " + Go.string(_expectExit) + "}";

	public function new(?_flag:GoString, ?_flagHandle:GoString, ?_expectExit:GoInt, ?string) {
		if (_flag != null)
			this._flag = _flag;
		if (_flagHandle != null)
			this._flagHandle = _flagHandle;
		if (_expectExit != null)
			this._expectExit = _expectExit;
	}

	public function __copy__() {
		return new T__struct_0(_flag, _flagHandle, _expectExit);
	}
}

@:structInit @:local private class T__struct_1 {
	public var _flag:GoString = "";
	public var _errorMsg:GoString = "";

	public function string():String
		return "{" + Go.string(_flag) + " " + Go.string(_errorMsg) + "}";

	public function new(?_flag:GoString, ?_errorMsg:GoString, ?string) {
		if (_flag != null)
			this._flag = _flag;
		if (_errorMsg != null)
			this._errorMsg = _errorMsg;
	}

	public function __copy__() {
		return new T__struct_1(_flag, _errorMsg);
	}
}

@:structInit @:local private class T__struct_2 {
	public var _flagSetName:GoString = "";
	public var _errorMsg:GoString = "";

	public function string():String
		return "{" + Go.string(_flagSetName) + " " + Go.string(_errorMsg) + "}";

	public function new(?_flagSetName:GoString, ?_errorMsg:GoString, ?string) {
		if (_flagSetName != null)
			this._flagSetName = _flagSetName;
		if (_errorMsg != null)
			this._errorMsg = _errorMsg;
	}

	public function __copy__() {
		return new T__struct_2(_flagSetName, _errorMsg);
	}
}

/**
	// Example 3: A user-defined flag type, a slice of durations.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_interval_static_extension) private typedef T_interval = Slice<stdgo.time.Time.Duration>;

/**
	// Declare a user-defined flag type.
**/
@:named @:using(stdgo.flag_test.Flag_test.T_flagVar_static_extension) private typedef T_flagVar = Slice<GoString>;

function exampleFunc():Void {
	var _fs = stdgo.flag.Flag.newFlagSet(Go.str("ExampleFunc"), (0 : ErrorHandling));
	_fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.func(Go.str("ip"), Go.str("`IP address` to parse"), function(_s:GoString):Error {
		_ip = stdgo.net.Net.parseIP(_s);
		if (_ip == null) {
			return stdgo.errors.Errors.new_(Go.str("could not parse IP"));
		};
		return (null : Error);
	});
	_fs.parse((new Slice<GoString>(0, 0, Go.str("-ip"), Go.str("127.0.0.1")) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(Go.str("{ip: %v, loopback: %t}\n\n"), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
	_fs.parse((new Slice<GoString>(0, 0, Go.str("-ip"), Go.str("256.0.0.1")) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(Go.str("{ip: %v, loopback: %t}\n\n"), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
}

function example():Void {}

function exampleTextVar():Void {
	var _fs = stdgo.flag.Flag.newFlagSet(Go.str("ExampleTextVar"), (0 : ErrorHandling));
	_fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
	var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
	_fs.textVar(Go.asInterface((_ip : Ref<stdgo.net.Net.IP>)), Go.str("ip"),
		Go.asInterface(stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))), Go.str("`IP address` to parse"));
	_fs.parse((new Slice<GoString>(0, 0, Go.str("-ip"), Go.str("127.0.0.1")) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(Go.str("{ip: %v}\n\n"), Go.toInterface(Go.asInterface(_ip)));
	_ip = null;
	_fs.parse((new Slice<GoString>(0, 0, Go.str("-ip"), Go.str("256.0.0.1")) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(Go.str("{ip: %v}\n\n"), Go.toInterface(Go.asInterface(_ip)));
}

function exampleValue():Void {
	var _fs = stdgo.flag.Flag.newFlagSet(Go.str("ExampleValue"), (1 : ErrorHandling));
	_fs.var_(Go.asInterface(((new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue) : Ref<stdgo.flag_test.Flag_test.URLValue>)),
		Go.str("url"), Go.str("URL to parse"));
	_fs.parse((new Slice<GoString>(0, 0, Go.str("-url"), Go.str("https://golang.org/pkg/flag/")) : Slice<GoString>));
	stdgo.fmt.Fmt.printf(Go.str("{scheme: %q, host: %q, path: %q}"), Go.toInterface(_u.scheme), Go.toInterface(_u.host), Go.toInterface(_u.path));
}

function _boolString(_s:GoString):GoString {
	if (_s == (Go.str("0"))) {
		return Go.str("false");
	};
	return Go.str("true");
}

function testEverything(_t:Ref<stdgo.testing.Testing.T>):Void {
	resetForTesting(null);
	bool_(Go.str("test_bool"), false, Go.str("bool value"));
	int_(Go.str("test_int"), (0 : GoInt), Go.str("int value"));
	int64(Go.str("test_int64"), ("0" : GoInt64), Go.str("int64 value"));
	uint(Go.str("test_uint"), ("0" : GoUInt), Go.str("uint value"));
	uint64(Go.str("test_uint64"), ("0" : GoUInt64), Go.str("uint64 value"));
	string(Go.str("test_string"), Go.str("0"), Go.str("string value"));
	float64(Go.str("test_float64"), (0 : GoFloat64), Go.str("float64 value"));
	duration(Go.str("test_duration"), (("0" : GoInt64) : stdgo.time.Time.Duration), Go.str("time.Duration value"));
	func(Go.str("test_func"), Go.str("func value"), function(_0:GoString):Error {
		return (null : Error);
	});
	var _m = (new GoObjectMap<GoString, Ref<Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Flag", [],
			stdgo.internal.reflect.Reflect.GoType.structType([
				{
					name: "name",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				},
				{
					name: "usage",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				},
				{
					name: "value",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.named("Value", [
						new stdgo.internal.reflect.Reflect.MethodType("set", {
							get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false,
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]}, {get: () -> [
									stdgo.internal.reflect.Reflect.GoType.named("Error", [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
										]))
								]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
						},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
						new stdgo.internal.reflect.Reflect.MethodType("string",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
								{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
						new stdgo.internal.reflect.Reflect.MethodType("set",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false,
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]}, {get: () -> [
									stdgo.internal.reflect.Reflect.GoType.named("Error", [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
										]))
								]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
						new stdgo.internal.reflect.Reflect.MethodType("string",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
								{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
						])),
					optional: false
				},
				{
					name: "defValue",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				}
			])))}))) : GoMap<GoString, Ref<Flag>>);
	var _desired:GoString = Go.str("0");
	var _visitor = function(_f:Ref<Flag>):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == Go.str("test_"))) {
			_m[_f.name] = _f;
			var _ok:Bool = false;
			if ((_f.value.string() : GoString) == (_desired)) {
				_ok = true;
			} else if ((_f.name == Go.str("test_bool")) && ((_f.value.string() : GoString) == _boolString(_desired))) {
				_ok = true;
			} else if ((_f.name == Go.str("test_duration")) && ((_f.value.string() : GoString) == (_desired + Go.str("s")))) {
				_ok = true;
			} else if ((_f.name == Go.str("test_func")) && ((_f.value.string() : GoString) == Go.str())) {
				_ok = true;
			};
			if (!_ok) {
				_t.error(Go.toInterface(Go.str("Visit: bad value")), Go.toInterface((_f.value.string() : GoString)), Go.toInterface(Go.str("for")),
					Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
	if ((_m.length) != ((9 : GoInt))) {
		_t.error(Go.toInterface(Go.str("VisitAll misses some flags")));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	_m = (new GoObjectMap<GoString, Ref<Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.refType(stdgo.internal.reflect.Reflect.GoType.named("Flag", [],
			stdgo.internal.reflect.Reflect.GoType.structType([
				{
					name: "name",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				},
				{
					name: "usage",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				},
				{
					name: "value",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.named("Value", [
						new stdgo.internal.reflect.Reflect.MethodType("set", {
							get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false,
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]}, {get: () -> [
									stdgo.internal.reflect.Reflect.GoType.named("Error", [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
										]))
								]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
						},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
						new stdgo.internal.reflect.Reflect.MethodType("string",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
								{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
					], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
						new stdgo.internal.reflect.Reflect.MethodType("set",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false,
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]}, {get: () -> [
									stdgo.internal.reflect.Reflect.GoType.named("Error", [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
										new stdgo.internal.reflect.Reflect.MethodType("error",
											{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
												{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
												{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
										]))
								]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
						new stdgo.internal.reflect.Reflect.MethodType("string",
							{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
								{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
								{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
							{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
						])),
					optional: false
				},
				{
					name: "defValue",
					embedded: false,
					tag: "",
					type: stdgo.internal.reflect.Reflect.GoType.basic(string_kind),
					optional: false
				}
			])))}))) : GoMap<GoString, Ref<Flag>>);
	visit(_visitor);
	if ((_m.length) != ((0 : GoInt))) {
		_t.errorf(Go.str("Visit sees unset flags"));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	set(Go.str("test_bool"), Go.str("true"));
	set(Go.str("test_int"), Go.str("1"));
	set(Go.str("test_int64"), Go.str("1"));
	set(Go.str("test_uint"), Go.str("1"));
	set(Go.str("test_uint64"), Go.str("1"));
	set(Go.str("test_string"), Go.str("1"));
	set(Go.str("test_float64"), Go.str("1"));
	set(Go.str("test_duration"), Go.str("1s"));
	set(Go.str("test_func"), Go.str("1"));
	_desired = Go.str("1");
	visit(_visitor);
	if ((_m.length) != ((9 : GoInt))) {
		_t.error(Go.toInterface(Go.str("Visit fails after set")));
		for (_k => _v in _m) {
			_t.log(Go.toInterface(_k), Go.toInterface(_v));
		};
	};
	var _flagNames:Slice<GoString> = (null : Slice<GoString>);
	visit(function(_f:Ref<Flag>):Void {
		_flagNames = _flagNames.__appendref__(_f.name);
	});
	if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
		_t.errorf(Go.str("flag names not sorted: %v"), Go.toInterface(_flagNames));
	};
}

function testGet(_t:Ref<stdgo.testing.Testing.T>):Void {
	resetForTesting(null);
	bool_(Go.str("test_bool"), true, Go.str("bool value"));
	int_(Go.str("test_int"), (1 : GoInt), Go.str("int value"));
	int64(Go.str("test_int64"), ("2" : GoInt64), Go.str("int64 value"));
	uint(Go.str("test_uint"), ("3" : GoUInt), Go.str("uint value"));
	uint64(Go.str("test_uint64"), ("4" : GoUInt64), Go.str("uint64 value"));
	string(Go.str("test_string"), Go.str("5"), Go.str("string value"));
	float64(Go.str("test_float64"), (6 : GoFloat64), Go.str("float64 value"));
	duration(Go.str("test_duration"), (("7" : GoInt64) : stdgo.time.Time.Duration), Go.str("time.Duration value"));
	var _visitor = function(_f:Ref<Flag>):Void {
		if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == Go.str("test_"))) {
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_f.value) : Getter)) : Getter), ok: true};
			} catch (_) {
				{value: (null : Getter), ok: false};
			}, _g = __tmp__.value, _ok = __tmp__.ok;
			if (!_ok) {
				_t.errorf(Go.str("Visit: value does not satisfy Getter: %T"), Go.toInterface(_f.value));
				return;
			};
			if (_f.name == (Go.str("test_bool"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(true));
			} else if (_f.name == (Go.str("test_int"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(((1 : GoInt) : GoInt)));
			} else if (_f.name == (Go.str("test_int64"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(((("2" : GoInt64) : GoInt64) : GoInt64)));
			} else if (_f.name == (Go.str("test_uint"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(((("3" : GoUInt) : GoUInt) : GoUInt)));
			} else if (_f.name == (Go.str("test_uint64"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(((("4" : GoUInt64) : GoUInt64) : GoUInt64)));
			} else if (_f.name == (Go.str("test_string"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(Go.str("5")));
			} else if (_f.name == (Go.str("test_float64"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface((6 : GoFloat64)));
			} else if (_f.name == (Go.str("test_duration"))) {
				_ok = Go.toInterface(_g.get()) == (Go.toInterface(Go.asInterface((("7" : GoInt64) : stdgo.time.Time.Duration))));
			};
			if (!_ok) {
				_t.errorf(Go.str("Visit: bad value %T(%v) for %s"), _g.get(), _g.get(), Go.toInterface(_f.name));
			};
		};
	};
	visitAll(_visitor);
}

function testUsage(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _called:Bool = false;
	resetForTesting(function():Void {
		_called = true;
	});
	if (commandLine.parse((new Slice<GoString>(0, 0, Go.str("-x")) : Slice<GoString>)) == null) {
		_t.error(Go.toInterface(Go.str("parse did not fail for unknown flag")));
	};
	if (!_called) {
		_t.error(Go.toInterface(Go.str("did not call Usage for unknown flag")));
	};
}

function _testParse(_f:Ref<FlagSet>, _t:Ref<stdgo.testing.Testing.T>):Void {
	if (_f.parsed()) {
		_t.error(Go.toInterface(Go.str("f.Parse() = true before Parse")));
	};
	var _boolFlag = _f.bool_(Go.str("bool"), false, Go.str("bool value"));
	var _bool2Flag = _f.bool_(Go.str("bool2"), false, Go.str("bool2 value"));
	var _intFlag = _f.int_(Go.str("int"), (0 : GoInt), Go.str("int value"));
	var _int64Flag = _f.int64(Go.str("int64"), ("0" : GoInt64), Go.str("int64 value"));
	var _uintFlag = _f.uint(Go.str("uint"), ("0" : GoUInt), Go.str("uint value"));
	var _uint64Flag = _f.uint64(Go.str("uint64"), ("0" : GoUInt64), Go.str("uint64 value"));
	var _stringFlag = _f.string(Go.str("string"), Go.str("0"), Go.str("string value"));
	var _float64Flag = _f.float64(Go.str("float64"), (0 : GoFloat64), Go.str("float64 value"));
	var _durationFlag = _f.duration(Go.str("duration"), (("5000000000" : GoInt64) : stdgo.time.Time.Duration), Go.str("time.Duration value"));
	var _extra:GoString = Go.str("one-extra-argument");
	var _args = (new Slice<GoString>(0, 0, Go.str("-bool"), Go.str("-bool2=true"), Go.str("--int"), Go.str("22"), Go.str("--int64"), Go.str("0x23"),
		Go.str("-uint"), Go.str("24"), Go.str("--uint64"), Go.str("25"), Go.str("-string"), Go.str("hello"), Go.str("-float64"), Go.str("2718e28"),
		Go.str("-duration"), Go.str("2m"), _extra) : Slice<GoString>);
	{
		var _err:Error = _f.parse(_args);
		if (_err != null) {
			_t.fatal(Go.toInterface(_err));
		};
	};
	if (!_f.parsed()) {
		_t.error(Go.toInterface(Go.str("f.Parse() = false after Parse")));
	};
	if (_boolFlag.value != (true)) {
		_t.error(Go.toInterface(Go.str("bool flag should be true, is ")), Go.toInterface(_boolFlag.value));
	};
	if (_bool2Flag.value != (true)) {
		_t.error(Go.toInterface(Go.str("bool2 flag should be true, is ")), Go.toInterface(_bool2Flag.value));
	};
	if (_intFlag.value != ((22 : GoInt))) {
		_t.error(Go.toInterface(Go.str("int flag should be 22, is ")), Go.toInterface(_intFlag.value));
	};
	if (_int64Flag.value != (("35" : GoInt64))) {
		_t.error(Go.toInterface(Go.str("int64 flag should be 0x23, is ")), Go.toInterface(_int64Flag.value));
	};
	if (_uintFlag.value != (("24" : GoUInt))) {
		_t.error(Go.toInterface(Go.str("uint flag should be 24, is ")), Go.toInterface(_uintFlag.value));
	};
	if (_uint64Flag.value != (("25" : GoUInt64))) {
		_t.error(Go.toInterface(Go.str("uint64 flag should be 25, is ")), Go.toInterface(_uint64Flag.value));
	};
	if (_stringFlag.value != (Go.str("hello"))) {
		_t.error(Go.toInterface(Go.str("string flag should be `hello`, is ")), Go.toInterface(_stringFlag.value));
	};
	if (_float64Flag.value != (2.718e+31 : GoFloat64)) {
		_t.error(Go.toInterface(Go.str("float64 flag should be 2718e28, is ")), Go.toInterface(_float64Flag.value));
	};
	if (_durationFlag.value != ((("120000000000" : GoInt64) : stdgo.time.Time.Duration))) {
		_t.error(Go.toInterface(Go.str("duration flag should be 2m, is ")), Go.toInterface(Go.asInterface(_durationFlag.value)));
	};
	if ((_f.args().length) != ((1 : GoInt))) {
		_t.error(Go.toInterface(Go.str("expected one argument, got")), Go.toInterface((_f.args().length)));
	} else if (_f.args()[(0 : GoInt)] != (_extra)) {
		_t.errorf(Go.str("expected argument %q got %q"), Go.toInterface(_extra), Go.toInterface(_f.args()[(0 : GoInt)]));
	};
}

function testParse(_t:Ref<stdgo.testing.Testing.T>):Void {
	resetForTesting(function():Void {
		_t.error(Go.toInterface(Go.str("bad parse")));
	});
	_testParse(commandLine, _t);
}

function testFlagSetParse(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testParse(newFlagSet(Go.str("test"), (0 : ErrorHandling)), _t);
}

function testUserDefined(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init(Go.str("test"), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
	_flags.var_(Go.asInterface((_v : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), Go.str("v"), Go.str("usage"));
	{
		var _err:Error = _flags.parse((new Slice<GoString>(0, 0, Go.str("-v"), Go.str("1"), Go.str("-v"), Go.str("2"), Go.str("-v=3")) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_v.length) != ((3 : GoInt))) {
		_t.fatal(Go.toInterface(Go.str("expected 3 args; got ")), Go.toInterface((_v.length)));
	};
	var _expect:GoString = Go.str("[1 2 3]");
	if ((_v.string() : GoString) != (_expect)) {
		_t.errorf(Go.str("expected value %q got %q"), Go.toInterface(_expect), Go.toInterface((_v.string() : GoString)));
	};
}

function testUserDefinedFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _flags = newFlagSet(Go.str("test"), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _ss:Slice<GoString> = (null : Slice<GoString>);
	_flags.func(Go.str("v"), Go.str("usage"), function(_s:GoString):Error {
		_ss = _ss.__appendref__(_s);
		return (null : Error);
	});
	{
		var _err:Error = _flags.parse((new Slice<GoString>(0, 0, Go.str("-v"), Go.str("1"), Go.str("-v"), Go.str("2"), Go.str("-v=3")) : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	if ((_ss.length) != ((3 : GoInt))) {
		_t.fatal(Go.toInterface(Go.str("expected 3 args; got ")), Go.toInterface((_ss.length)));
	};
	var _expect:GoString = Go.str("[1 2 3]");
	{
		var _got:GoString = stdgo.fmt.Fmt.sprint(_ss);
		if (_got != (_expect)) {
			_t.errorf(Go.str("expected value %q got %q"), Go.toInterface(_expect), Go.toInterface(_got));
		};
	};
	var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
	_flags.setOutput(Go.asInterface((_buf : Ref<stdgo.strings.Strings.Builder>)));
	_flags.parse((new Slice<GoString>(0, 0, Go.str("-h")) : Slice<GoString>));
	{
		var _usage:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_usage, Go.str("usage"))) {
			_t.errorf(Go.str("usage string not included: %q"), Go.toInterface(_usage));
		};
	};
	_flags = newFlagSet(Go.str("test"), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	_flags.func(Go.str("v"), Go.str("usage"), function(_s:GoString):Error {
		return stdgo.fmt.Fmt.errorf(Go.str("test error"));
	});
	{
		var _err:Error = _flags.parse((null : Slice<GoString>));
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
	{
		var _err:Error = _flags.parse((new Slice<GoString>(0, 0, Go.str("-v"), Go.str("1")) : Slice<GoString>));
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("expected error; got none")));
		} else {
			var _errMsg:GoString = _err.error();
			if (!stdgo.strings.Strings.contains(_errMsg, Go.str("test error"))) {
				_t.errorf(Go.str("error should contain \"test error\"; got %q"), Go.toInterface(_errMsg));
			};
		};
	};
}

function testUserDefinedForCommandLine(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _result:GoString = ("" : GoString);
	resetForTesting(function():Void {
		_result = Go.str("HELP");
	});
	usage();
	if (_result != (Go.str("HELP"))) {
		_t.fatalf(Go.str("got %q; expected %q"), Go.toInterface(_result), Go.toInterface(Go.str("HELP")));
	};
}

function testUserDefinedBool(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _flags:FlagSet = ({} : FlagSet);
	_flags.init(Go.str("test"), (0 : ErrorHandling));
	_flags.setOutput(stdgo.io.Io.discard);
	var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
	var _err:Error = (null : Error);
	_flags.var_(Go.asInterface((_b : Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>)), Go.str("b"), Go.str("usage"));
	{
		_err = _flags.parse((new Slice<GoString>(0, 0, Go.str("-b"), Go.str("-b"), Go.str("-b"), Go.str("-b=true"), Go.str("-b=false"), Go.str("-b"),
			Go.str("barg"), Go.str("-b")) : Slice<GoString>));
		if (_err != null) {
			if (_b._count < (4:GoInt)) {
				_t.error(Go.toInterface(_err));
			};
		};
	};
	if (_b._count != ((4 : GoInt))) {
		_t.errorf(Go.str("want: %d; got: %d"), Go.toInterface((4 : GoInt)), Go.toInterface(_b._count));
	};
	if (_err == null) {
		_t.error(Go.toInterface(Go.str("expected error; got none")));
	};
}

function testSetOutput(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _flags:FlagSet = ({} : FlagSet);
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_flags.setOutput(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)));
	_flags.init(Go.str("test"), (0 : ErrorHandling));
	_flags.parse((new Slice<GoString>(0, 0, Go.str("-unknown")) : Slice<GoString>));
	{
		var _out:GoString = (_buf.string() : GoString);
		if (!stdgo.strings.Strings.contains(_out, Go.str("-unknown"))) {
			_t.logf(Go.str("expected output mentioning unknown; got %q"), Go.toInterface(_out));
		};
	};
}

/**
	// This tests that one can reset the flags. This still works but not well, and is
	// superseded by FlagSet.
**/
function testChangingArgs(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	resetForTesting(function():Void {
		_t.fatal(Go.toInterface(Go.str("bad parse")));
	});
	try {
		var _oldArgs = stdgo.os.Os.args;
		__deferstack__.unshift(() -> {
			var a = function():Void {
				stdgo.os.Os.args = _oldArgs;
			};
			a();
		});
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, Go.str("cmd"), Go.str("-before"), Go.str("subcmd"), Go.str("-after"), Go.str("args")) : Slice<GoString>);
		var _before = bool_(Go.str("before"), false, Go.str());
		{
			var _err:Error = commandLine.parse((stdgo.os.Os.args.__slice__((1 : GoInt)) : Slice<GoString>));
			if (_err != null) {
				_t.fatal(Go.toInterface(_err));
			};
		};
		var _cmd:GoString = arg((0 : GoInt));
		stdgo.os.Os.args = args();
		var _after = bool_(Go.str("after"), false, Go.str());
		parse();
		var _args = args();
		if ((((!_before.value || (_cmd != Go.str("subcmd"))) || !_after.value) || (_args.length != (1 : GoInt)))
			|| (_args[(0 : GoInt)] != Go.str("args"))) {
			_t.fatalf(Go.str("expected true subcmd true [args] got %v %v %v %v"), Go.toInterface(_before.value), Go.toInterface(_cmd),
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
function testHelp(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _helpCalled:Bool = false;
	var _fs = newFlagSet(Go.str("help test"), (0 : ErrorHandling));
	_fs.usage = function():Void {
		_helpCalled = true;
	};
	var _flag:Bool = false;
	_fs.boolVar(Go.pointer(_flag), Go.str("flag"), false, Go.str("regular flag"));
	var _err:Error = _fs.parse((new Slice<GoString>(0, 0, Go.str("-flag=true")) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("expected no error; got ")), Go.toInterface(_err));
	};
	if (!_flag) {
		_t.error(Go.toInterface(Go.str("flag was not set by -flag")));
	};
	if (_helpCalled) {
		_t.error(Go.toInterface(Go.str("help called for regular flag")));
		_helpCalled = false;
	};
	_err = _fs.parse((new Slice<GoString>(0, 0, Go.str("-help")) : Slice<GoString>));
	if (_err == null) {
		_t.fatal(Go.toInterface(Go.str("error expected")));
	};
	if (Go.toInterface(_err) != (Go.toInterface(errHelp))) {
		_t.fatal(Go.toInterface(Go.str("expected ErrHelp; got ")), Go.toInterface(_err));
	};
	if (!_helpCalled) {
		_t.fatal(Go.toInterface(Go.str("help was not called")));
	};
	var _help:Bool = false;
	_fs.boolVar(Go.pointer(_help), Go.str("help"), false, Go.str("help flag"));
	_helpCalled = false;
	_err = _fs.parse((new Slice<GoString>(0, 0, Go.str("-help")) : Slice<GoString>));
	if (_err != null) {
		_t.fatal(Go.toInterface(Go.str("expected no error for defined -help; got ")), Go.toInterface(_err));
	};
	if (_helpCalled) {
		_t.fatal(Go.toInterface(Go.str("help was called; should not have been for defined help flag")));
	};
}

function testPrintDefaults(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _fs = newFlagSet(Go.str("print defaults test"), (0 : ErrorHandling));
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
	_fs.setOutput(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)));
	_fs.bool_(Go.str("A"), false, Go.str("for bootstrapping, allow \'any\' type"));
	_fs.bool_(Go.str("Alongflagname"), false, Go.str("disable bounds checking"));
	_fs.bool_(Go.str("C"), true, Go.str("a boolean defaulting to true"));
	_fs.string(Go.str("D"), Go.str(), Go.str("set relative `path` for local imports"));
	_fs.string(Go.str("E"), Go.str("0"), Go.str("issue 23543"));
	_fs.float64(Go.str("F"), (2.7 : GoFloat64), Go.str("a non-zero `number`"));
	_fs.float64(Go.str("G"), (0 : GoFloat64), Go.str("a float that defaults to zero"));
	_fs.string(Go.str("M"), Go.str(), Go.str("a multiline\nhelp\nstring"));
	_fs.int_(Go.str("N"), (27 : GoInt), Go.str("a non-zero int"));
	_fs.bool_(Go.str("O"), true, Go.str("a flag\nmultiline help string"));
	_fs.var_(Go.asInterface(((new Slice<GoString>(0, 0, Go.str("a"),
		Go.str("b")) : stdgo.flag_test.Flag_test.T_flagVar) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)),
		Go.str("V"), Go.str("a `list` of strings"));
	_fs.int_(Go.str("Z"), (0 : GoInt), Go.str("an int that defaults to zero"));
	_fs.var_(Go.asInterface(((new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
		Go.str()) : stdgo.flag_test.Flag_test.T_zeroPanicker) : Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)),
		Go.str("ZP0"), Go.str("a flag whose String method panics when it is zero"));
	_fs.var_(Go.asInterface(((new stdgo.flag_test.Flag_test.T_zeroPanicker(true,
		Go.str("something")) : stdgo.flag_test.Flag_test.T_zeroPanicker) : Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)),
		Go.str("ZP1"), Go.str("a flag whose String method panics when it is zero"));
	_fs.duration(Go.str("maxT"), (("0" : GoInt64) : stdgo.time.Time.Duration), Go.str("set `timeout` for dial"));
	_fs.printDefaults();
	var _got:GoString = (_buf.string() : GoString);
	if (_got != (Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n"))) {
		_t.errorf(Go.str("got:\n%q\nwant:\n%q"), Go.toInterface(_got),
			Go.toInterface(Go.str("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n")));
	};
}

/**
	// Issue 19230: validate range of Int and Uint flag values.
**/
function testIntFlagOverflow(_t:Ref<stdgo.testing.Testing.T>):Void {
	if (false) {
		return;
	};
	resetForTesting(null);
	int_(Go.str("i"), (0 : GoInt), Go.str());
	uint(Go.str("u"), ("0" : GoUInt), Go.str());
	{
		var _err:Error = set(Go.str("i"), Go.str("2147483648"));
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("unexpected success setting Int")));
		};
	};
	{
		var _err:Error = set(Go.str("u"), Go.str("4294967296"));
		if (_err == null) {
			_t.error(Go.toInterface(Go.str("unexpected success setting Uint")));
		};
	};
}

/**
	// Issue 20998: Usage should respect CommandLine.output.
**/
function testUsageOutput(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	resetForTesting(defaultUsage);
	try {
		var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
		commandLine.setOutput(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)));
		{
			var _a0 = stdgo.os.Os.args;
			__deferstack__.unshift(() -> {
				var a = function(_old:Slice<GoString>):Void {
					stdgo.os.Os.args = _old;
				};
				a(_a0);
			});
		};
		stdgo.os.Os.args = (new Slice<GoString>(0, 0, Go.str("app"), Go.str("-i=1"), Go.str("-unknown")) : Slice<GoString>);
		parse();
		{};
		{
			var _got:GoString = (_buf.string() : GoString);
			if (_got != (Go.str("flag provided but not defined: -i\nUsage of app:\n"))) {
				_t.errorf(Go.str("output = %q; want %q"), Go.toInterface(_got), Go.toInterface(Go.str("flag provided but not defined: -i\nUsage of app:\n")));
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

function testGetters(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _expectedName:GoString = Go.str("flag set");
	var _expectedErrorHandling:ErrorHandling = (0 : ErrorHandling);
	var _expectedOutput:stdgo.io.Io.Writer = Go.asInterface(stdgo.os.Os.stderr);
	var _fs = newFlagSet(_expectedName, _expectedErrorHandling);
	if (_fs.name() != (_expectedName)) {
		_t.errorf(Go.str("unexpected name: got %s, expected %s"), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != (_expectedErrorHandling)) {
		_t.errorf(Go.str("unexpected ErrorHandling: got %d, expected %d"), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
	};
	if (Go.toInterface(_fs.output()) != (Go.toInterface(_expectedOutput))) {
		_t.errorf(Go.str("unexpected output: got %#v, expected %#v"), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
	_expectedName = Go.str("gopher");
	_expectedErrorHandling = (1 : ErrorHandling);
	_expectedOutput = Go.asInterface(stdgo.os.Os.stdout);
	_fs.init(_expectedName, _expectedErrorHandling);
	_fs.setOutput(_expectedOutput);
	if (_fs.name() != (_expectedName)) {
		_t.errorf(Go.str("unexpected name: got %s, expected %s"), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
	};
	if (_fs.errorHandling() != (_expectedErrorHandling)) {
		_t.errorf(Go.str("unexpected ErrorHandling: got %d, expected %d"), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
	};
	if (Go.toInterface(_fs.output()) != (Go.toInterface(_expectedOutput))) {
		_t.errorf(Go.str("unexpected output: got %v, expected %v"), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
	};
}

function testParseError(_t:Ref<stdgo.testing.Testing.T>):Void {
	for (_0 => _typ in (new Slice<GoString>(0, 0, Go.str("bool"), Go.str("int"), Go.str("int64"), Go.str("uint"), Go.str("uint64"), Go.str("float64"),
		Go.str("duration")) : Slice<GoString>)) {
		var _fs = newFlagSet(Go.str("parse error test"), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.bool_(Go.str("bool"), false, Go.str());
		_fs.int_(Go.str("int"), (0 : GoInt), Go.str());
		_fs.int64(Go.str("int64"), ("0" : GoInt64), Go.str());
		_fs.uint(Go.str("uint"), ("0" : GoUInt), Go.str());
		_fs.uint64(Go.str("uint64"), ("0" : GoUInt64), Go.str());
		_fs.float64(Go.str("float64"), (0 : GoFloat64), Go.str());
		_fs.duration(Go.str("duration"), (("0" : GoInt64) : stdgo.time.Time.Duration), Go.str());
		var _args = (new Slice<GoString>(0, 0, (Go.str("-") + _typ) + Go.str("=x")) : Slice<GoString>);
		var _err:Error = _fs.parse(_args);
		if (_err == null) {
			_t.errorf(Go.str("Parse(%q)=%v; expected parse error"), Go.toInterface(_args), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), Go.str("invalid"))
			|| !stdgo.strings.Strings.contains(_err.error(), Go.str("parse error"))) {
			_t.errorf(Go.str("Parse(%q)=%v; expected parse error"), Go.toInterface(_args), Go.toInterface(_err));
		};
	};
}

function testRangeError(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _bad = (new Slice<GoString>(0, 0, Go.str("-int=123456789012345678901"), Go.str("-int64=123456789012345678901"), Go.str("-uint=123456789012345678901"),
		Go.str("-uint64=123456789012345678901"), Go.str("-float64=1e1000")) : Slice<GoString>);
	for (_0 => _arg in _bad) {
		var _fs = newFlagSet(Go.str("parse error test"), (0 : ErrorHandling));
		_fs.setOutput(stdgo.io.Io.discard);
		_fs.int_(Go.str("int"), (0 : GoInt), Go.str());
		_fs.int64(Go.str("int64"), ("0" : GoInt64), Go.str());
		_fs.uint(Go.str("uint"), ("0" : GoUInt), Go.str());
		_fs.uint64(Go.str("uint64"), ("0" : GoUInt64), Go.str());
		_fs.float64(Go.str("float64"), (0 : GoFloat64), Go.str());
		var _err:Error = _fs.parse((new Slice<GoString>(0, 0, _arg) : Slice<GoString>));
		if (_err == null) {
			_t.errorf(Go.str("Parse(%q)=%v; expected range error"), Go.toInterface(_arg), Go.toInterface(_err));
			continue;
		};
		if (!stdgo.strings.Strings.contains(_err.error(), Go.str("invalid"))
			|| !stdgo.strings.Strings.contains(_err.error(), Go.str("value out of range"))) {
			_t.errorf(Go.str("Parse(%q)=%v; expected range error"), Go.toInterface(_arg), Go.toInterface(_err));
		};
	};
}

function testExitCode(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	var _magic:GoInt = (123 : GoInt);
	if (stdgo.os.Os.getenv(Go.str("GO_CHILD_FLAG")) != (Go.str())) {
		var _fs = newFlagSet(Go.str("test"), (1 : ErrorHandling));
		if (stdgo.os.Os.getenv(Go.str("GO_CHILD_FLAG_HANDLE")) != (Go.str())) {
			var _b:Bool = false;
			_fs.boolVar(Go.pointer(_b), stdgo.os.Os.getenv(Go.str("GO_CHILD_FLAG_HANDLE")), false, Go.str());
		};
		_fs.parse((new Slice<GoString>(0, 0, stdgo.os.Os.getenv(Go.str("GO_CHILD_FLAG"))) : Slice<GoString>));
		Sys.exit(_magic);
	};
	var _tests = (new Slice<T__struct_0>(0, 0, ({_flag: Go.str("-h"), _expectExit: (0 : GoInt)} : T__struct_0),
		({_flag: Go.str("-help"), _expectExit: (0 : GoInt)} : T__struct_0), ({_flag: Go.str("-undefined"), _expectExit: (2 : GoInt)} : T__struct_0),
		({_flag: Go.str("-h"), _flagHandle: Go.str("h"), _expectExit: _magic} : T__struct_0),
		({_flag: Go.str("-help"), _flagHandle: Go.str("help"), _expectExit: _magic} : T__struct_0)) : Slice<T__struct_0>);
	for (_0 => _test in _tests) {
		var _cmd = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], Go.str("-test.run=TestExitCode"));
		_cmd.env = (stdgo.os.Os.environ().__append__(Go.str("GO_CHILD_FLAG=") + _test._flag, Go.str("GO_CHILD_FLAG_HANDLE=") + _test._flagHandle));
		_cmd.run();
		var _got:GoInt = _cmd.processState.exitCode();
		if (false && (_test._expectExit != (0 : GoInt))) {
			_test._expectExit = (1 : GoInt);
		};
		if (_got != (_test._expectExit)) {
			_t.errorf(Go.str("unexpected exit code for test case %+v \n: got %d, expect %d"), Go.toInterface(_test), Go.toInterface(_got),
				Go.toInterface(_test._expectExit));
		};
	};
}

function _mustPanic(_t:Ref<stdgo.testing.Testing.T>, _testName:GoString, _expected:GoString, _f:() -> Void):Void {
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
					}) == null ? (null : AnyInterface) : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__();
					_t.errorf(Go.str("%s\n: expected panic(%q), but did not panic"), Go.toInterface(_testName), Go.toInterface(_expected));
				} else if (Go.typeEquals(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				} : GoString))) {
					var _msg:GoString = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? "" : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__() == null ? "" : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}) == null ? "" : ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					}).__underlying__().value;
					if (_msg != (_expected)) {
						_t.errorf(Go.str("%s\n: expected panic(%q), but got panic(%q)"), Go.toInterface(_testName), Go.toInterface(_expected),
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
					_t.errorf(Go.str("%s\n: expected panic(%q), but got panic(%T%v)"), Go.toInterface(_testName), Go.toInterface(_expected), _msg, _msg);
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

function testInvalidFlags(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_1>(0, 0, ({_flag: Go.str("-foo"), _errorMsg: Go.str("flag \"-foo\" begins with -")} : T__struct_1),
		({_flag: Go.str("foo=bar"), _errorMsg: Go.str("flag \"foo=bar\" contains =")} : T__struct_1)) : Slice<T__struct_1>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf(Go.str("FlagSet.Var(&v, %q, \"\")"), Go.toInterface(_test._flag));
		var _fs = newFlagSet(Go.str(), (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput(Go.asInterface(_buf));
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
			_fs.var_(Go.asInterface((_v : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), _test._flag, Go.str());
		});
		{
			var _msg:GoString = _test._errorMsg + Go.str("\n");
			if (_msg != ((_buf.string() : GoString))) {
				_t.errorf(Go.str("%s\n: unexpected output: expected %q, bug got %q"), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(_buf));
			};
		};
	};
}

function testRedefinedFlags(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _tests = (new Slice<T__struct_2>(0, 0, ({_flagSetName: Go.str(), _errorMsg: Go.str("flag redefined: foo")} : T__struct_2),
		({_flagSetName: Go.str("fs"), _errorMsg: Go.str("fs flag redefined: foo")} : T__struct_2)) : Slice<T__struct_2>);
	for (_0 => _test in _tests) {
		var _testName:GoString = stdgo.fmt.Fmt.sprintf(Go.str("flag redefined in FlagSet(%q)"), Go.toInterface(_test._flagSetName));
		var _fs = newFlagSet(_test._flagSetName, (0 : ErrorHandling));
		var _buf = stdgo.bytes.Bytes.newBuffer((null : Slice<GoUInt8>));
		_fs.setOutput(Go.asInterface(_buf));
		var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
		_fs.var_(Go.asInterface((_v : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), Go.str("foo"), Go.str());
		_mustPanic(_t, _testName, _test._errorMsg, function():Void {
			_fs.var_(Go.asInterface((_v : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), Go.str("foo"), Go.str());
		});
		{
			var _msg:GoString = _test._errorMsg + Go.str("\n");
			if (_msg != ((_buf.string() : GoString))) {
				_t.errorf(Go.str("%s\n: unexpected output: expected %q, bug got %q"), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(_buf));
			};
		};
	};
}

@:keep var _ = {
	try {
		{};
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), Go.str("gopher_type"), Go.str("pocket"), Go.str("the variety of gopher"));
		stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), Go.str("g"), Go.str("pocket"), Go.str("the variety of gopher (shorthand)"));
		stdgo.flag.Flag.var_(Go.asInterface((_intervalFlag : Ref<stdgo.flag_test.Flag_test.T_interval>)), Go.str("deltaT"),
			Go.str("comma-separated list of intervals to use between events"));
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class URLValue_asInterface {
	@:keep
	public function set(_s:GoString):Error
		return __self__.value.set(_s);

	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<URLValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag_test.Flag_test.URLValue_asInterface) class URLValue_static_extension {
	@:keep
	static public function set(_v:URLValue, _s:GoString):Error {
		{
			var __tmp__ = stdgo.net.url.Url.parse(_s),
				_u:Ref<stdgo.net.url.Url.URL> = __tmp__._0,
				_err:Error = __tmp__._1;
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
		return (null : Error);
	}

	@:keep
	static public function string(_v:URLValue):GoString {
		if (_v.url != null) {
			return (_v.url.string() : GoString);
		};
		return Go.str();
	}
}

private class T_boolFlagVar_asInterface {
	@:keep
	public function isBoolFlag():Bool
		return __self__.value.isBoolFlag();

	@:keep
	public function set(_value:GoString):Error
		return __self__.value.set(_value);

	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_boolFlagVar>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag_test.Flag_test.T_boolFlagVar_asInterface) class T_boolFlagVar_static_extension {
	@:keep
	static public function isBoolFlag(_b:Ref<T_boolFlagVar>):Bool {
		return _b._count < (4:GoInt);
	}

	@:keep
	static public function set(_b:Ref<T_boolFlagVar>, _value:GoString):Error {
		if (_value == (Go.str("true"))) {
			_b._count++;
		};
		return (null : Error);
	}

	@:keep
	static public function string(_b:Ref<T_boolFlagVar>):GoString {
		return stdgo.fmt.Fmt.sprintf(Go.str("%d"), Go.toInterface(_b._count));
	}
}

private class T_zeroPanicker_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function set(_s:GoString):Error
		return __self__.value.set(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_zeroPanicker>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag_test.Flag_test.T_zeroPanicker_asInterface) class T_zeroPanicker_static_extension {
	@:keep
	static public function string(_f:Ref<T_zeroPanicker>):GoString {
		if (!_f._dontPanic) {
			throw Go.toInterface(Go.str("panic!"));
		};
		return _f._v;
	}

	@:keep
	static public function set(_f:Ref<T_zeroPanicker>, _s:GoString):Error {
		_f._v = _s;
		return (null : Error);
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
		return __self__.value.set(_value);

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_interval>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag_test.Flag_test.T_interval_asInterface) class T_interval_static_extension {
	/**
		// Set is the method to set the flag value, part of the flag.Value interface.
		// Set's argument is a string to be parsed to set the flag.
		// It's a comma-separated list, so we split it.
	**/
	@:keep
	static public function set(_i:Ref<T_interval>, _value:GoString):Error {
		if ((_i.length) > (0 : GoInt)) {
			return stdgo.errors.Errors.new_(Go.str("interval flag already set"));
		};
		for (_0 => _dt in stdgo.strings.Strings.split(_value, Go.str(","))) {
			var __tmp__ = stdgo.time.Time.parseDuration(_dt),
				_duration:stdgo.time.Time.Duration = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_err != null) {
				return _err;
			};
			_i = _i.__appendref__(_duration);
		};
		return (null : Error);
	}

	/**
		// String is the method to format the flag's value, part of the flag.Value interface.
		// The String method's output will be used in diagnostics.
	**/
	@:keep
	static public function string(_i:Ref<T_interval>):GoString {
		return stdgo.fmt.Fmt.sprint(_i);
	}
}

private class T_flagVar_asInterface {
	@:keep
	public function set(_value:GoString):Error
		return __self__.value.set(_value);

	@:keep
	public function string():GoString
		return __self__.value.string();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_flagVar>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag_test.Flag_test.T_flagVar_asInterface) class T_flagVar_static_extension {
	@:keep
	static public function set(_f:Ref<T_flagVar>, _value:GoString):Error {
		_f = _f.__appendref__(_value);
		return (null : Error);
	}

	@:keep
	static public function string(_f:Ref<T_flagVar>):GoString {
		return stdgo.fmt.Fmt.sprint((_f : Slice<GoString>));
	}
}
