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
var _species : Pointer<GoString> = stdgo.flag.Flag.toString(((("species" : GoString))), ((("gopher" : GoString))), ((("the species we are studying" : GoString))));
var _u : Ref<stdgo.net.url.Url.URL> = ((new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL));
var _gopherType : GoString = (("" : GoString));
var _intervalFlag : T_interval = new stdgo.flag_test.Flag_test.T_interval();
@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
    @:keep
    public function set(_s:GoString):Error {
        var _v = this;
        (_v == null ? null : _v.__copy__());
        {
            var __tmp__ = stdgo.net.url.Url.parse(_s), _u:Ref<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                    _v.url.forceQuery = __tmp__.forceQuery;
                    _v.url.rawQuery = __tmp__.rawQuery;
                    _v.url.fragment = __tmp__.fragment;
                    _v.url.rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _v = this;
        (_v == null ? null : _v.__copy__());
        if (_v.url != null) {
            return ((_v.url.toString() : GoString));
        };
        return ((("" : GoString)));
    }
    public var url : Ref<stdgo.net.url.Url.URL> = ((null : Ref<stdgo.net.url.Url.URL>));
    public function new(?url:Ref<stdgo.net.url.Url.URL>) {
        if (url != null) this.url = url;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new URLValue(url);
    }
}
@:structInit @:using(stdgo.flag_test.Flag_test.T_boolFlagVar_static_extension) class T_boolFlagVar {
    @:keep
    public function isBoolFlag():Bool {
        var _b = this;
        _b;
        return _b._count < ((4 : GoInt));
    }
    @:keep
    public function set(_value:GoString):Error {
        var _b = this;
        _b;
        if (_value == ((("true" : GoString)))) {
            _b._count++;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _b = this;
        _b;
        return stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_b._count));
    }
    public var _count : GoInt = ((0 : GoInt));
    public function new(?_count:GoInt) {
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_boolFlagVar(_count);
    }
}
@:structInit @:local class T__struct_0 {
    public var _flag : GoString = (("" : GoString));
    public var _flagHandle : GoString = (("" : GoString));
    public var _expectExit : GoInt = ((0 : GoInt));
    public function toString():String return "{" + Go.string(_flag) + " " + Go.string(_flagHandle) + " " + Go.string(_expectExit) + "}";
    public function new(?_flag:GoString, ?_flagHandle:GoString, ?_expectExit:GoInt, ?toString) {
        if (_flag != null) this._flag = _flag;
        if (_flagHandle != null) this._flagHandle = _flagHandle;
        if (_expectExit != null) this._expectExit = _expectExit;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_flag, _flagHandle, _expectExit);
    }
}
@:structInit @:local class T__struct_1 {
    public var _flag : GoString = (("" : GoString));
    public var _errorMsg : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_flag) + " " + Go.string(_errorMsg) + "}";
    public function new(?_flag:GoString, ?_errorMsg:GoString, ?toString) {
        if (_flag != null) this._flag = _flag;
        if (_errorMsg != null) this._errorMsg = _errorMsg;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_flag, _errorMsg);
    }
}
@:structInit @:local class T__struct_2 {
    public var _flagSetName : GoString = (("" : GoString));
    public var _errorMsg : GoString = (("" : GoString));
    public function toString():String return "{" + Go.string(_flagSetName) + " " + Go.string(_errorMsg) + "}";
    public function new(?_flagSetName:GoString, ?_errorMsg:GoString, ?toString) {
        if (_flagSetName != null) this._flagSetName = _flagSetName;
        if (_errorMsg != null) this._errorMsg = _errorMsg;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_2(_flagSetName, _errorMsg);
    }
}
@:named @:using(stdgo.flag_test.Flag_test.T_interval_static_extension) typedef T_interval = Slice<stdgo.time.Time.Duration>;
@:named @:using(stdgo.flag_test.Flag_test.T_flagVar_static_extension) typedef T_flagVar = Slice<GoString>;
function exampleFunc():Void {
        var _fs:Ref<FlagSet> = stdgo.flag.Flag.newFlagSet(((("ExampleFunc" : GoString))), ((0 : GoInt)));
        _fs.setOutput(stdgo.os.Os.stdout);
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP();
        _fs.func(((("ip" : GoString))), ((("`IP address` to parse" : GoString))), function(_s:GoString):Error {
            _ip = stdgo.net.Net.parseIP(_s);
            if (_ip == null) {
                return stdgo.errors.Errors.new_(((("could not parse IP" : GoString))));
            };
            return ((null : stdgo.Error));
        });
        _fs.parse(((new Slice<GoString>(((("-ip" : GoString))), ((("127.0.0.1" : GoString)))) : Slice<GoString>)));
        stdgo.fmt.Fmt.printf(((("{ip: %v, loopback: %t}\n\n" : GoString))), Go.toInterface(_ip), Go.toInterface(_ip.isLoopback()));
        _fs.parse(((new Slice<GoString>(((("-ip" : GoString))), ((("256.0.0.1" : GoString)))) : Slice<GoString>)));
        stdgo.fmt.Fmt.printf(((("{ip: %v, loopback: %t}\n\n" : GoString))), Go.toInterface(_ip), Go.toInterface(_ip.isLoopback()));
    }
function example():Void {}
function exampleValue():Void {
        var _fs:Ref<FlagSet> = stdgo.flag.Flag.newFlagSet(((("ExampleValue" : GoString))), ((1 : GoInt)));
        _fs.var_(((new stdgo.flag_test.Flag_test.URLValue(_u) : stdgo.flag_test.Flag_test.URLValue)), ((("url" : GoString))), ((("URL to parse" : GoString))));
        _fs.parse(((new Slice<GoString>(((("-url" : GoString))), ((("https://golang.org/pkg/flag/" : GoString)))) : Slice<GoString>)));
        stdgo.fmt.Fmt.printf("{scheme: %q, host: %q, path: %q}", Go.toInterface(_u.scheme), Go.toInterface(_u.host), Go.toInterface(_u.path));
    }
function _boolString(_s:GoString):GoString {
        if (_s == ((("0" : GoString)))) {
            return ((("false" : GoString)));
        };
        return ((("true" : GoString)));
    }
function testEverything(_t:stdgo.testing.Testing.T_):Void {
        resetForTesting(null);
        bool(((("test_bool" : GoString))), false, ((("bool value" : GoString))));
        int(((("test_int" : GoString))), ((0 : GoInt)), ((("int value" : GoString))));
        int64(((("test_int64" : GoString))), ((0 : GoInt64)), ((("int64 value" : GoString))));
        uint(((("test_uint" : GoString))), ((0 : GoUInt)), ((("uint value" : GoString))));
        uint64(((("test_uint64" : GoString))), ((0 : GoUInt64)), ((("uint64 value" : GoString))));
        _toString(((("test_string" : GoString))), ((("0" : GoString))), ((("string value" : GoString))));
        float64(((("test_float64" : GoString))), ((0 : GoFloat64)), ((("float64 value" : GoString))));
        duration(((("test_duration" : GoString))), ((0 : GoInt64)), ((("time.Duration value" : GoString))));
        func(((("test_func" : GoString))), ((("func value" : GoString))), function(_0:GoString):Error {
            return ((null : stdgo.Error));
        });
        var _m:GoMap<GoString, Ref<Flag>> = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))))));
        var _desired:GoString = ((("0" : GoString)));
        var _visitor:Ref<Flag> -> Void = function(_f:Flag):Void {
            if (((_f.name != null ? _f.name.length : ((0 : GoInt))) > ((5 : GoInt))) && (((_f.name.__slice__(((0 : GoInt)), ((5 : GoInt))) : GoString)) == ((("test_" : GoString))))) {
                if (_m != null) _m[_f.name] = _f;
                var _ok:Bool = false;
                if (((_f.value.toString() : GoString)) == _desired) {
                    _ok = true;
                } else if ((_f.name == ((("test_bool" : GoString)))) && (((_f.value.toString() : GoString)) == _boolString(_desired))) {
                    _ok = true;
                } else if ((_f.name == ((("test_duration" : GoString)))) && (((_f.value.toString() : GoString)) == (_desired + ((("s" : GoString)))))) {
                    _ok = true;
                } else if ((_f.name == ((("test_func" : GoString)))) && (((_f.value.toString() : GoString)) == ((("" : GoString))))) {
                    _ok = true;
                };
                if (!_ok) {
                    _t.error(Go.toInterface(((("Visit: bad value" : GoString)))), Go.toInterface(((_f.value.toString() : GoString))), Go.toInterface(((("for" : GoString)))), Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
        if ((_m != null ? _m.length : ((0 : GoInt))) != ((9 : GoInt))) {
            _t.error(Go.toInterface(((("VisitAll misses some flags" : GoString)))));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface(_v));
            };
        };
        _m = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))))));
        visit(_visitor);
        if ((_m != null ? _m.length : ((0 : GoInt))) != ((0 : GoInt))) {
            _t.errorf(((("Visit sees unset flags" : GoString))));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface(_v));
            };
        };
        set(((("test_bool" : GoString))), ((("true" : GoString))));
        set(((("test_int" : GoString))), ((("1" : GoString))));
        set(((("test_int64" : GoString))), ((("1" : GoString))));
        set(((("test_uint" : GoString))), ((("1" : GoString))));
        set(((("test_uint64" : GoString))), ((("1" : GoString))));
        set(((("test_string" : GoString))), ((("1" : GoString))));
        set(((("test_float64" : GoString))), ((("1" : GoString))));
        set(((("test_duration" : GoString))), ((("1s" : GoString))));
        set(((("test_func" : GoString))), ((("1" : GoString))));
        _desired = ((("1" : GoString)));
        visit(_visitor);
        if ((_m != null ? _m.length : ((0 : GoInt))) != ((9 : GoInt))) {
            _t.error(Go.toInterface(((("Visit fails after set" : GoString)))));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface(_v));
            };
        };
        var _flagNames:Slice<GoString> = ((null : Slice<GoString>));
        visit(function(_f:Flag):Void {
            _flagNames = (_flagNames != null ? _flagNames.__append__(_f.name) : new Slice<GoString>(_f.name));
        });
        if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
            _t.errorf(((("flag names not sorted: %v" : GoString))), Go.toInterface(_flagNames));
        };
    }
function testGet(_t:stdgo.testing.Testing.T_):Void {
        resetForTesting(null);
        bool(((("test_bool" : GoString))), true, ((("bool value" : GoString))));
        int(((("test_int" : GoString))), ((1 : GoInt)), ((("int value" : GoString))));
        int64(((("test_int64" : GoString))), ((2 : GoInt64)), ((("int64 value" : GoString))));
        uint(((("test_uint" : GoString))), ((3 : GoUInt)), ((("uint value" : GoString))));
        uint64(((("test_uint64" : GoString))), ((4 : GoUInt64)), ((("uint64 value" : GoString))));
        _toString(((("test_string" : GoString))), ((("5" : GoString))), ((("string value" : GoString))));
        float64(((("test_float64" : GoString))), ((6 : GoFloat64)), ((("float64 value" : GoString))));
        duration(((("test_duration" : GoString))), ((7 : GoInt64)), ((("time.Duration value" : GoString))));
        var _visitor:Ref<Flag> -> Void = function(_f:Flag):Void {
            if (((_f.name != null ? _f.name.length : ((0 : GoInt))) > ((5 : GoInt))) && (((_f.name.__slice__(((0 : GoInt)), ((5 : GoInt))) : GoString)) == ((("test_" : GoString))))) {
                var __tmp__ = try {
                    { value : ((((_f.value.__underlying__().value : Dynamic)) : Getter)), ok : true };
                } catch(_) {
                    { value : ((null : Getter)), ok : false };
                }, _g = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.errorf(((("Visit: value does not satisfy Getter: %T" : GoString))), Go.toInterface(_f.value));
                    return;
                };
                if (_f.name == ((("test_bool" : GoString)))) {
                    _ok = _g.get() == true;
                } else if (_f.name == ((("test_int" : GoString)))) {
                    _ok = _g.get() == ((((1 : GoInt)) : GoInt));
                } else if (_f.name == ((("test_int64" : GoString)))) {
                    _ok = _g.get() == ((((2 : GoInt64)) : GoInt64));
                } else if (_f.name == ((("test_uint" : GoString)))) {
                    _ok = _g.get() == ((((3 : GoUInt)) : GoUInt));
                } else if (_f.name == ((("test_uint64" : GoString)))) {
                    _ok = _g.get() == ((((4 : GoUInt64)) : GoUInt64));
                } else if (_f.name == ((("test_string" : GoString)))) {
                    _ok = _g.get() == ((("5" : GoString)));
                } else if (_f.name == ((("test_float64" : GoString)))) {
                    _ok = _g.get() == ((((6 : GoFloat64)) : GoFloat64));
                } else if (_f.name == ((("test_duration" : GoString)))) {
                    _ok = _g.get() == ((((7 : GoInt64)) : stdgo.time.Time.Duration));
                };
                if (!_ok) {
                    _t.errorf(((("Visit: bad value %T(%v) for %s" : GoString))), Go.toInterface(_g.get()), Go.toInterface(_g.get()), Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
    }
function testUsage(_t:stdgo.testing.Testing.T_):Void {
        var _called:Bool = false;
        resetForTesting(function():Void {
            _called = true;
        });
        if (commandLine.parse(((new Slice<GoString>(((("-x" : GoString)))) : Slice<GoString>))) == null) {
            _t.error(Go.toInterface(((("parse did not fail for unknown flag" : GoString)))));
        };
        if (!_called) {
            _t.error(Go.toInterface(((("did not call Usage for unknown flag" : GoString)))));
        };
    }
function _testParse(_f:FlagSet, _t:stdgo.testing.Testing.T_):Void {
        if (_f.parsed()) {
            _t.error(Go.toInterface(((("f.Parse() = true before Parse" : GoString)))));
        };
        var _boolFlag:Pointer<Bool> = _f.bool(((("bool" : GoString))), false, ((("bool value" : GoString))));
        var _bool2Flag:Pointer<Bool> = _f.bool(((("bool2" : GoString))), false, ((("bool2 value" : GoString))));
        var _intFlag:Pointer<GoInt> = _f.int(((("int" : GoString))), ((0 : GoInt)), ((("int value" : GoString))));
        var _int64Flag:Pointer<GoInt64> = _f.int64(((("int64" : GoString))), ((0 : GoInt64)), ((("int64 value" : GoString))));
        var _uintFlag:Pointer<GoUInt> = _f.uint(((("uint" : GoString))), ((0 : GoUInt)), ((("uint value" : GoString))));
        var _uint64Flag:Pointer<GoUInt64> = _f.uint64(((("uint64" : GoString))), ((0 : GoUInt64)), ((("uint64 value" : GoString))));
        var _stringFlag:Pointer<GoString> = _f.toString(((("string" : GoString))), ((("0" : GoString))), ((("string value" : GoString))));
        var _float64Flag:Pointer<GoFloat64> = _f.float64(((("float64" : GoString))), ((0 : GoFloat64)), ((("float64 value" : GoString))));
        var _durationFlag:Pointer<stdgo.time.Time.Duration> = _f.duration(((("duration" : GoString))), (("5000000000" : GoInt64)), ((("time.Duration value" : GoString))));
        var _extra:GoString = ((("one-extra-argument" : GoString)));
        var _args:Slice<GoString> = ((new Slice<GoString>(
((("-bool" : GoString))),
((("-bool2=true" : GoString))),
((("--int" : GoString))),
((("22" : GoString))),
((("--int64" : GoString))),
((("0x23" : GoString))),
((("-uint" : GoString))),
((("24" : GoString))),
((("--uint64" : GoString))),
((("25" : GoString))),
((("-string" : GoString))),
((("hello" : GoString))),
((("-float64" : GoString))),
((("2718e28" : GoString))),
((("-duration" : GoString))),
((("2m" : GoString))),
_extra) : Slice<GoString>));
        {
            var _err:stdgo.Error = _f.parse(_args);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!_f.parsed()) {
            _t.error(Go.toInterface(((("f.Parse() = false after Parse" : GoString)))));
        };
        if (_boolFlag.value != true) {
            _t.error(Go.toInterface(((("bool flag should be true, is " : GoString)))), Go.toInterface(_boolFlag.value));
        };
        if (_bool2Flag.value != true) {
            _t.error(Go.toInterface(((("bool2 flag should be true, is " : GoString)))), Go.toInterface(_bool2Flag.value));
        };
        if (_intFlag.value != ((22 : GoInt))) {
            _t.error(Go.toInterface(((("int flag should be 22, is " : GoString)))), Go.toInterface(_intFlag.value));
        };
        if (_int64Flag.value != ((35 : GoInt64))) {
            _t.error(Go.toInterface(((("int64 flag should be 0x23, is " : GoString)))), Go.toInterface(_int64Flag.value));
        };
        if (_uintFlag.value != ((24 : GoUInt))) {
            _t.error(Go.toInterface(((("uint flag should be 24, is " : GoString)))), Go.toInterface(_uintFlag.value));
        };
        if (_uint64Flag.value != ((25 : GoUInt64))) {
            _t.error(Go.toInterface(((("uint64 flag should be 25, is " : GoString)))), Go.toInterface(_uint64Flag.value));
        };
        if (_stringFlag.value != ((("hello" : GoString)))) {
            _t.error(Go.toInterface(((("string flag should be `hello`, is " : GoString)))), Go.toInterface(_stringFlag.value));
        };
        if (_float64Flag.value != ((2.718e+31 : GoFloat64))) {
            _t.error(Go.toInterface(((("float64 flag should be 2718e28, is " : GoString)))), Go.toInterface(_float64Flag.value));
        };
        if (_durationFlag.value != (("120000000000" : GoInt64))) {
            _t.error(Go.toInterface(((("duration flag should be 2m, is " : GoString)))), Go.toInterface(_durationFlag.value));
        };
        if ((_f.args() != null ? _f.args().length : ((0 : GoInt))) != ((1 : GoInt))) {
            _t.error(Go.toInterface(((("expected one argument, got" : GoString)))), Go.toInterface((_f.args() != null ? _f.args().length : ((0 : GoInt)))));
        } else if ((_f.args() != null ? _f.args()[((0 : GoInt))] : (("" : GoString))) != _extra) {
            _t.errorf(((("expected argument %q got %q" : GoString))), Go.toInterface(_extra), Go.toInterface((_f.args() != null ? _f.args()[((0 : GoInt))] : (("" : GoString)))));
        };
    }
function testParse(_t:stdgo.testing.Testing.T_):Void {
        resetForTesting(function():Void {
            _t.error(Go.toInterface(((("bad parse" : GoString)))));
        });
        _testParse(commandLine, _t);
    }
function testFlagSetParse(_t:stdgo.testing.Testing.T_):Void {
        _testParse(newFlagSet(((("test" : GoString))), ((0 : GoInt))), _t);
    }
function testUserDefined(_t:stdgo.testing.Testing.T_):Void {
        var _flags:FlagSet = new FlagSet();
        _flags.init(((("test" : GoString))), ((0 : GoInt)));
        var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar();
        _flags.var_(new Ref_wrapper<stdgo.flag_test.Flag_test.T_flagVar>(_v), ((("v" : GoString))), ((("usage" : GoString))));
        {
            var _err:stdgo.Error = _flags.parse(((new Slice<GoString>(((("-v" : GoString))), ((("1" : GoString))), ((("-v" : GoString))), ((("2" : GoString))), ((("-v=3" : GoString)))) : Slice<GoString>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((_v != null ? _v.length : ((0 : GoInt))) != ((3 : GoInt))) {
            _t.fatal(Go.toInterface(((("expected 3 args; got " : GoString)))), Go.toInterface((_v != null ? _v.length : ((0 : GoInt)))));
        };
        var _expect:GoString = ((("[1 2 3]" : GoString)));
        if (((_v.toString() : GoString)) != _expect) {
            _t.errorf(((("expected value %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(((_v.toString() : GoString))));
        };
    }
function testUserDefinedFunc(_t:stdgo.testing.Testing.T_):Void {
        var _flags:FlagSet = new FlagSet();
        _flags.init(((("test" : GoString))), ((0 : GoInt)));
        var _ss:Slice<GoString> = ((null : Slice<GoString>));
        _flags.func(((("v" : GoString))), ((("usage" : GoString))), function(_s:GoString):Error {
            _ss = (_ss != null ? _ss.__append__(_s) : new Slice<GoString>(_s));
            return ((null : stdgo.Error));
        });
        {
            var _err:stdgo.Error = _flags.parse(((new Slice<GoString>(((("-v" : GoString))), ((("1" : GoString))), ((("-v" : GoString))), ((("2" : GoString))), ((("-v=3" : GoString)))) : Slice<GoString>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((_ss != null ? _ss.length : ((0 : GoInt))) != ((3 : GoInt))) {
            _t.fatal(Go.toInterface(((("expected 3 args; got " : GoString)))), Go.toInterface((_ss != null ? _ss.length : ((0 : GoInt)))));
        };
        var _expect:GoString = ((("[1 2 3]" : GoString)));
        {
            var _got:GoString = stdgo.fmt.Fmt.sprint(_ss);
            if (_got != _expect) {
                _t.errorf(((("expected value %q got %q" : GoString))), Go.toInterface(_expect), Go.toInterface(_got));
            };
        };
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        _flags.setOutput(_buf);
        _flags.parse(((new Slice<GoString>(((("-h" : GoString)))) : Slice<GoString>)));
        {
            var _usage:GoString = ((_buf.toString() : GoString));
            if (!stdgo.strings.Strings.contains(_usage, ((("usage" : GoString))))) {
                _t.errorf(((("usage string not included: %q" : GoString))), Go.toInterface(_usage));
            };
        };
        _flags = (newFlagSet(((("test" : GoString))), ((0 : GoInt))) == null ? null : newFlagSet(((("test" : GoString))), ((0 : GoInt))).__copy__());
        _flags.func(((("v" : GoString))), ((("usage" : GoString))), function(_s:GoString):Error {
            return stdgo.fmt.Fmt.errorf(((("test error" : GoString))));
        });
        {
            var _err:stdgo.Error = _flags.parse(((null : Slice<GoString>)));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _flags.parse(((new Slice<GoString>(((("-v" : GoString))), ((("1" : GoString)))) : Slice<GoString>)));
            if (_err == null) {
                _t.error(Go.toInterface(((("expected error; got none" : GoString)))));
            } else {
                var _errMsg:GoString = _err.error();
                if (!stdgo.strings.Strings.contains(_errMsg, ((("test error" : GoString))))) {
                    _t.errorf("error should contain \"test error\"; got %q", Go.toInterface(_errMsg));
                };
            };
        };
    }
function testUserDefinedForCommandLine(_t:stdgo.testing.Testing.T_):Void {
        {};
        var _result:GoString = (("" : GoString));
        resetForTesting(function():Void {
            _result = ((("HELP" : GoString)));
        });
        usage();
        if (_result != ((("HELP" : GoString)))) {
            _t.fatalf(((("got %q; expected %q" : GoString))), Go.toInterface(_result), Go.toInterface(((("HELP" : GoString)))));
        };
    }
function testUserDefinedBool(_t:stdgo.testing.Testing.T_):Void {
        var _flags:FlagSet = new FlagSet();
        _flags.init(((("test" : GoString))), ((0 : GoInt)));
        var _b:T_boolFlagVar = new stdgo.flag_test.Flag_test.T_boolFlagVar();
        var _err:Error = ((null : stdgo.Error));
        _flags.var_(_b, ((("b" : GoString))), ((("usage" : GoString))));
        {
            _err = _flags.parse(((new Slice<GoString>(((("-b" : GoString))), ((("-b" : GoString))), ((("-b" : GoString))), ((("-b=true" : GoString))), ((("-b=false" : GoString))), ((("-b" : GoString))), ((("barg" : GoString))), ((("-b" : GoString)))) : Slice<GoString>)));
            if (_err != null) {
                if (_b._count < ((4 : GoInt))) {
                    _t.error(Go.toInterface(_err));
                };
            };
        };
        if (_b._count != ((4 : GoInt))) {
            _t.errorf(((("want: %d; got: %d" : GoString))), Go.toInterface(((4 : GoInt))), Go.toInterface(_b._count));
        };
        if (_err == null) {
            _t.error(Go.toInterface(((("expected error; got none" : GoString)))));
        };
    }
function testSetOutput(_t:stdgo.testing.Testing.T_):Void {
        var _flags:FlagSet = new FlagSet();
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        _flags.setOutput(_buf);
        _flags.init(((("test" : GoString))), ((0 : GoInt)));
        _flags.parse(((new Slice<GoString>(((("-unknown" : GoString)))) : Slice<GoString>)));
        {
            var _out:GoString = ((_buf.toString() : GoString));
            if (!stdgo.strings.Strings.contains(_out, ((("-unknown" : GoString))))) {
                _t.logf(((("expected output mentioning unknown; got %q" : GoString))), Go.toInterface(_out));
            };
        };
    }
function testChangingArgs(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(function():Void {
                _t.fatal(Go.toInterface(((("bad parse" : GoString)))));
            });
            var _oldArgs:Slice<GoString> = stdgo.os.Os.args;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.os.Os.args = _oldArgs;
                };
                a();
            });
            stdgo.os.Os.args = ((new Slice<GoString>(((("cmd" : GoString))), ((("-before" : GoString))), ((("subcmd" : GoString))), ((("-after" : GoString))), ((("args" : GoString)))) : Slice<GoString>));
            var _before:Pointer<Bool> = bool(((("before" : GoString))), false, ((("" : GoString))));
            {
                var _err:stdgo.Error = commandLine.parse(((stdgo.os.Os.args.__slice__(((1 : GoInt))) : Slice<GoString>)));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _cmd:GoString = arg(((0 : GoInt)));
            stdgo.os.Os.args = args();
            var _after:Pointer<Bool> = bool(((("after" : GoString))), false, ((("" : GoString))));
            parse();
            var _args:Slice<GoString> = args();
            if ((((!_before.value || (_cmd != ((("subcmd" : GoString))))) || !_after.value) || ((_args != null ? _args.length : ((0 : GoInt))) != ((1 : GoInt)))) || ((_args != null ? _args[((0 : GoInt))] : (("" : GoString))) != ((("args" : GoString))))) {
                _t.fatalf(((("expected true subcmd true [args] got %v %v %v %v" : GoString))), Go.toInterface(_before.value), Go.toInterface(_cmd), Go.toInterface(_after.value), Go.toInterface(_args));
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testHelp(_t:stdgo.testing.Testing.T_):Void {
        var _helpCalled:Bool = false;
        var _fs:Ref<FlagSet> = newFlagSet(((("help test" : GoString))), ((0 : GoInt)));
        _fs.usage = function():Void {
            _helpCalled = true;
        };
        var _flag:Bool = false;
        _fs.boolVar(Go.pointer(_flag), ((("flag" : GoString))), false, ((("regular flag" : GoString))));
        var _err:stdgo.Error = _fs.parse(((new Slice<GoString>(((("-flag=true" : GoString)))) : Slice<GoString>)));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("expected no error; got " : GoString)))), Go.toInterface(_err));
        };
        if (!_flag) {
            _t.error(Go.toInterface(((("flag was not set by -flag" : GoString)))));
        };
        if (_helpCalled) {
            _t.error(Go.toInterface(((("help called for regular flag" : GoString)))));
            _helpCalled = false;
        };
        _err = _fs.parse(((new Slice<GoString>(((("-help" : GoString)))) : Slice<GoString>)));
        if (_err == null) {
            _t.fatal(Go.toInterface(((("error expected" : GoString)))));
        };
        if (_err != errHelp) {
            _t.fatal(Go.toInterface(((("expected ErrHelp; got " : GoString)))), Go.toInterface(_err));
        };
        if (!_helpCalled) {
            _t.fatal(Go.toInterface(((("help was not called" : GoString)))));
        };
        var _help:Bool = false;
        _fs.boolVar(Go.pointer(_help), ((("help" : GoString))), false, ((("help flag" : GoString))));
        _helpCalled = false;
        _err = _fs.parse(((new Slice<GoString>(((("-help" : GoString)))) : Slice<GoString>)));
        if (_err != null) {
            _t.fatal(Go.toInterface(((("expected no error for defined -help; got " : GoString)))), Go.toInterface(_err));
        };
        if (_helpCalled) {
            _t.fatal(Go.toInterface(((("help was called; should not have been for defined help flag" : GoString)))));
        };
    }
function testPrintDefaults(_t:stdgo.testing.Testing.T_):Void {
        var _fs:Ref<FlagSet> = newFlagSet(((("print defaults test" : GoString))), ((0 : GoInt)));
        var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        _fs.setOutput(_buf);
        _fs.bool(((("A" : GoString))), false, ((("for bootstrapping, allow \'any\' type" : GoString))));
        _fs.bool(((("Alongflagname" : GoString))), false, ((("disable bounds checking" : GoString))));
        _fs.bool(((("C" : GoString))), true, ((("a boolean defaulting to true" : GoString))));
        _fs.toString(((("D" : GoString))), ((("" : GoString))), ((("set relative `path` for local imports" : GoString))));
        _fs.toString(((("E" : GoString))), ((("0" : GoString))), ((("issue 23543" : GoString))));
        _fs.float64(((("F" : GoString))), ((2.7 : GoFloat64)), ((("a non-zero `number`" : GoString))));
        _fs.float64(((("G" : GoString))), ((0 : GoFloat64)), ((("a float that defaults to zero" : GoString))));
        _fs.toString(((("M" : GoString))), ((("" : GoString))), ((("a multiline\nhelp\nstring" : GoString))));
        _fs.int(((("N" : GoString))), ((27 : GoInt)), ((("a non-zero int" : GoString))));
        _fs.bool(((("O" : GoString))), true, ((("a flag\nmultiline help string" : GoString))));
        _fs.int(((("Z" : GoString))), ((0 : GoInt)), ((("an int that defaults to zero" : GoString))));
        _fs.duration(((("maxT" : GoString))), ((0 : GoInt64)), ((("set `timeout` for dial" : GoString))));
        _fs.printDefaults();
        var _got:GoString = ((_buf.toString() : GoString));
        if (_got != ((("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -Z int\n    \tan int that defaults to zero\n  -maxT timeout\n    \tset timeout for dial\n" : GoString)))) {
            _t.errorf(((("got %q want %q\n" : GoString))), Go.toInterface(_got), Go.toInterface(((("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -Z int\n    \tan int that defaults to zero\n  -maxT timeout\n    \tset timeout for dial\n" : GoString)))));
        };
    }
function testIntFlagOverflow(_t:stdgo.testing.Testing.T_):Void {
        if (false) {
            return;
        };
        resetForTesting(null);
        int(((("i" : GoString))), ((0 : GoInt)), ((("" : GoString))));
        uint(((("u" : GoString))), ((0 : GoUInt)), ((("" : GoString))));
        {
            var _err:stdgo.Error = set(((("i" : GoString))), ((("2147483648" : GoString))));
            if (_err == null) {
                _t.error(Go.toInterface(((("unexpected success setting Int" : GoString)))));
            };
        };
        {
            var _err:stdgo.Error = set(((("u" : GoString))), ((("4294967296" : GoString))));
            if (_err == null) {
                _t.error(Go.toInterface(((("unexpected success setting Uint" : GoString)))));
            };
        };
    }
function testUsageOutput(_t:stdgo.testing.Testing.T_):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(defaultUsage);
            var _buf:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            commandLine.setOutput(_buf);
            {
                var _a0 = stdgo.os.Os.args;
                __deferstack__.unshift(() -> {
                    var a = function(_old:Slice<GoString>):Void {
                        stdgo.os.Os.args = _old;
                    };
                    a(_a0);
                });
            };
            stdgo.os.Os.args = ((new Slice<GoString>(((("app" : GoString))), ((("-i=1" : GoString))), ((("-unknown" : GoString)))) : Slice<GoString>));
            parse();
            {};
            {
                var _got:GoString = ((_buf.toString() : GoString));
                if (_got != ((("flag provided but not defined: -i\nUsage of app:\n" : GoString)))) {
                    _t.errorf(((("output = %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(((("flag provided but not defined: -i\nUsage of app:\n" : GoString)))));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testGetters(_t:stdgo.testing.Testing.T_):Void {
        var _expectedName:GoString = ((("flag set" : GoString)));
        var _expectedErrorHandling:ErrorHandling = ((0 : GoInt));
        var _expectedOutput:stdgo.io.Io.Writer = ((stdgo.os.Os.stderr : stdgo.io.Io.Writer));
        var _fs:Ref<FlagSet> = newFlagSet(_expectedName, _expectedErrorHandling);
        if (_fs.name() != _expectedName) {
            _t.errorf(((("unexpected name: got %s, expected %s" : GoString))), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != _expectedErrorHandling) {
            _t.errorf(((("unexpected ErrorHandling: got %d, expected %d" : GoString))), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
        };
        if (_fs.output() != _expectedOutput) {
            _t.errorf(((("unexpected output: got %#v, expected %#v" : GoString))), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
        };
        _expectedName = ((("gopher" : GoString)));
        _expectedErrorHandling = ((1 : GoInt));
        _expectedOutput = stdgo.os.Os.stdout;
        _fs.init(_expectedName, _expectedErrorHandling);
        _fs.setOutput(_expectedOutput);
        if (_fs.name() != _expectedName) {
            _t.errorf(((("unexpected name: got %s, expected %s" : GoString))), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != _expectedErrorHandling) {
            _t.errorf(((("unexpected ErrorHandling: got %d, expected %d" : GoString))), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
        };
        if (_fs.output() != _expectedOutput) {
            _t.errorf(((("unexpected output: got %v, expected %v" : GoString))), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
        };
    }
function testParseError(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _typ in ((new Slice<GoString>(((("bool" : GoString))), ((("int" : GoString))), ((("int64" : GoString))), ((("uint" : GoString))), ((("uint64" : GoString))), ((("float64" : GoString))), ((("duration" : GoString)))) : Slice<GoString>))) {
            var _fs:Ref<FlagSet> = newFlagSet(((("parse error test" : GoString))), ((0 : GoInt)));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.bool(((("bool" : GoString))), false, ((("" : GoString))));
            _fs.int(((("int" : GoString))), ((0 : GoInt)), ((("" : GoString))));
            _fs.int64(((("int64" : GoString))), ((0 : GoInt64)), ((("" : GoString))));
            _fs.uint(((("uint" : GoString))), ((0 : GoUInt)), ((("" : GoString))));
            _fs.uint64(((("uint64" : GoString))), ((0 : GoUInt64)), ((("" : GoString))));
            _fs.float64(((("float64" : GoString))), ((0 : GoFloat64)), ((("" : GoString))));
            _fs.duration(((("duration" : GoString))), ((0 : GoInt64)), ((("" : GoString))));
            var _args:Slice<GoString> = ((new Slice<GoString>((((("-" : GoString))) + _typ) + ((("=x" : GoString)))) : Slice<GoString>));
            var _err:stdgo.Error = _fs.parse(_args);
            if (_err == null) {
                _t.errorf(((("Parse(%q)=%v; expected parse error" : GoString))), Go.toInterface(_args), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ((("invalid" : GoString)))) || !stdgo.strings.Strings.contains(_err.error(), ((("parse error" : GoString))))) {
                _t.errorf(((("Parse(%q)=%v; expected parse error" : GoString))), Go.toInterface(_args), Go.toInterface(_err));
            };
        };
    }
function testRangeError(_t:stdgo.testing.Testing.T_):Void {
        var _bad:Slice<GoString> = ((new Slice<GoString>(((("-int=123456789012345678901" : GoString))), ((("-int64=123456789012345678901" : GoString))), ((("-uint=123456789012345678901" : GoString))), ((("-uint64=123456789012345678901" : GoString))), ((("-float64=1e1000" : GoString)))) : Slice<GoString>));
        for (_0 => _arg in _bad) {
            var _fs:Ref<FlagSet> = newFlagSet(((("parse error test" : GoString))), ((0 : GoInt)));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.int(((("int" : GoString))), ((0 : GoInt)), ((("" : GoString))));
            _fs.int64(((("int64" : GoString))), ((0 : GoInt64)), ((("" : GoString))));
            _fs.uint(((("uint" : GoString))), ((0 : GoUInt)), ((("" : GoString))));
            _fs.uint64(((("uint64" : GoString))), ((0 : GoUInt64)), ((("" : GoString))));
            _fs.float64(((("float64" : GoString))), ((0 : GoFloat64)), ((("" : GoString))));
            var _err:stdgo.Error = _fs.parse(((new Slice<GoString>(_arg) : Slice<GoString>)));
            if (_err == null) {
                _t.errorf(((("Parse(%q)=%v; expected range error" : GoString))), Go.toInterface(_arg), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ((("invalid" : GoString)))) || !stdgo.strings.Strings.contains(_err.error(), ((("value out of range" : GoString))))) {
                _t.errorf(((("Parse(%q)=%v; expected range error" : GoString))), Go.toInterface(_arg), Go.toInterface(_err));
            };
        };
    }
function testExitCode(_t:stdgo.testing.Testing.T_):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(_t);
        var _magic:GoInt = ((123 : GoInt));
        if (stdgo.os.Os.getenv(((("GO_CHILD_FLAG" : GoString)))) != ((("" : GoString)))) {
            var _fs:Ref<FlagSet> = newFlagSet(((("test" : GoString))), ((1 : GoInt)));
            if (stdgo.os.Os.getenv(((("GO_CHILD_FLAG_HANDLE" : GoString)))) != ((("" : GoString)))) {
                var _b:Bool = false;
                _fs.boolVar(Go.pointer(_b), stdgo.os.Os.getenv(((("GO_CHILD_FLAG_HANDLE" : GoString)))), false, ((("" : GoString))));
            };
            _fs.parse(((new Slice<GoString>(stdgo.os.Os.getenv(((("GO_CHILD_FLAG" : GoString))))) : Slice<GoString>)));
            stdgo.os.Os.exit(_magic);
        };
        var _tests:Slice<stdgo.flag_test.Flag_test.T__struct_0> = ((new Slice<stdgo.flag_test.Flag_test.T__struct_0>(((({ _flag : ((("-h" : GoString))), _expectExit : ((0 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)) == null ? null : (({ _flag : ((("-h" : GoString))), _expectExit : ((0 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)).__copy__()), ((({ _flag : ((("-help" : GoString))), _expectExit : ((0 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)) == null ? null : (({ _flag : ((("-help" : GoString))), _expectExit : ((0 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)).__copy__()), ((({ _flag : ((("-undefined" : GoString))), _expectExit : ((2 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)) == null ? null : (({ _flag : ((("-undefined" : GoString))), _expectExit : ((2 : GoInt)), _flagHandle : "" } : stdgo.flag_test.Flag_test.T__struct_0)).__copy__()), ((({ _flag : ((("-h" : GoString))), _flagHandle : ((("h" : GoString))), _expectExit : _magic } : stdgo.flag_test.Flag_test.T__struct_0)) == null ? null : (({ _flag : ((("-h" : GoString))), _flagHandle : ((("h" : GoString))), _expectExit : _magic } : stdgo.flag_test.Flag_test.T__struct_0)).__copy__()), ((({ _flag : ((("-help" : GoString))), _flagHandle : ((("help" : GoString))), _expectExit : _magic } : stdgo.flag_test.Flag_test.T__struct_0)) == null ? null : (({ _flag : ((("-help" : GoString))), _flagHandle : ((("help" : GoString))), _expectExit : _magic } : stdgo.flag_test.Flag_test.T__struct_0)).__copy__())) : Slice<stdgo.flag_test.Flag_test.T__struct_0>));
        for (_0 => _test in _tests) {
            var _cmd:Ref<stdgo.os.exec.Exec.Cmd> = stdgo.os.exec.Exec.command((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((("-test.run=TestExitCode" : GoString))));
            _cmd.env = (stdgo.os.Os.environ() != null ? stdgo.os.Os.environ().__append__(((("GO_CHILD_FLAG=" : GoString))) + _test._flag, ((("GO_CHILD_FLAG_HANDLE=" : GoString))) + _test._flagHandle) : new Slice<GoString>(((("GO_CHILD_FLAG=" : GoString))) + _test._flag, ((("GO_CHILD_FLAG_HANDLE=" : GoString))) + _test._flagHandle));
            _cmd.run();
            var _got:GoInt = _cmd.processState.exitCode();
            if (false && (_test._expectExit != ((0 : GoInt)))) {
                _test._expectExit = ((1 : GoInt));
            };
            if (_got != _test._expectExit) {
                _t.errorf(((("unexpected exit code for test case %+v \n: got %d, expect %d" : GoString))), Go.toInterface(_test), Go.toInterface(_got), Go.toInterface(_test._expectExit));
            };
        };
    }
function _mustPanic(_t:stdgo.testing.Testing.T_, _testName:GoString, _expected:GoString, _f:() -> Void):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) == null) {
                        var _msg:AnyInterface = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__();
                        _t.errorf(((("%s\n: expected panic(%q), but did not panic" : GoString))), Go.toInterface(_testName), Go.toInterface(_expected));
                    } else if (Go.assertable(((({
                        final r = __recover_exception__;
                        __recover_exception__ = null;
                        r;
                    }) : GoString)))) {
                        var _msg:GoString = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__() == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__().value;
                        if (_msg != _expected) {
                            _t.errorf(((("%s\n: expected panic(%q), but got panic(%q)" : GoString))), Go.toInterface(_testName), Go.toInterface(_expected), Go.toInterface(_msg));
                        };
                    } else {
                        var _msg:AnyInterface = ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }) == null ? null : ({
                            final r = __recover_exception__;
                            __recover_exception__ = null;
                            r;
                        }).__underlying__();
                        _t.errorf(((("%s\n: expected panic(%q), but got panic(%T%v)" : GoString))), Go.toInterface(_testName), Go.toInterface(_expected), Go.toInterface(_msg), Go.toInterface(_msg));
                    };
                };
                a();
            });
            _f();
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        };
    }
function testInvalidFlags(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.flag_test.Flag_test.T__struct_1> = ((new Slice<stdgo.flag_test.Flag_test.T__struct_1>(((({ _flag : ((("-foo" : GoString))), _errorMsg : ((("flag \"-foo\" begins with -" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_1)) == null ? null : (({ _flag : ((("-foo" : GoString))), _errorMsg : ((("flag \"-foo\" begins with -" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_1)).__copy__()), ((({ _flag : ((("foo=bar" : GoString))), _errorMsg : ((("flag \"foo=bar\" contains =" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_1)) == null ? null : (({ _flag : ((("foo=bar" : GoString))), _errorMsg : ((("flag \"foo=bar\" contains =" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_1)).__copy__())) : Slice<stdgo.flag_test.Flag_test.T__struct_1>));
        for (_0 => _test in _tests) {
            var _testName:GoString = stdgo.fmt.Fmt.sprintf(((("FlagSet.Var(&v, %q, \"\")" : GoString))), Go.toInterface(_test._flag));
            var _fs:Ref<FlagSet> = newFlagSet(((("" : GoString))), ((0 : GoInt)));
            var _buf:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
            _fs.setOutput(_buf);
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar();
                _fs.var_(new Ref_wrapper<stdgo.flag_test.Flag_test.T_flagVar>(_v), _test._flag, ((("" : GoString))));
            });
            {
                var _msg:GoString = _test._errorMsg + ((("\n" : GoString)));
                if (_msg != ((_buf.toString() : GoString))) {
                    _t.errorf(((("%s\n: unexpected output: expected %q, bug got %q" : GoString))), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(_buf));
                };
            };
        };
    }
function testRedefinedFlags(_t:stdgo.testing.Testing.T_):Void {
        var _tests:Slice<stdgo.flag_test.Flag_test.T__struct_2> = ((new Slice<stdgo.flag_test.Flag_test.T__struct_2>(((({ _flagSetName : ((("" : GoString))), _errorMsg : ((("flag redefined: foo" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_2)) == null ? null : (({ _flagSetName : ((("" : GoString))), _errorMsg : ((("flag redefined: foo" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_2)).__copy__()), ((({ _flagSetName : ((("fs" : GoString))), _errorMsg : ((("fs flag redefined: foo" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_2)) == null ? null : (({ _flagSetName : ((("fs" : GoString))), _errorMsg : ((("fs flag redefined: foo" : GoString))) } : stdgo.flag_test.Flag_test.T__struct_2)).__copy__())) : Slice<stdgo.flag_test.Flag_test.T__struct_2>));
        for (_0 => _test in _tests) {
            var _testName:GoString = stdgo.fmt.Fmt.sprintf(((("flag redefined in FlagSet(%q)" : GoString))), Go.toInterface(_test._flagSetName));
            var _fs:Ref<FlagSet> = newFlagSet(_test._flagSetName, ((0 : GoInt)));
            var _buf:Ref<stdgo.bytes.Bytes.Buffer> = stdgo.bytes.Bytes.newBuffer(((null : Slice<GoUInt8>)));
            _fs.setOutput(_buf);
            var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar();
            _fs.var_(new Ref_wrapper<stdgo.flag_test.Flag_test.T_flagVar>(_v), ((("foo" : GoString))), ((("" : GoString))));
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                _fs.var_(new Ref_wrapper<stdgo.flag_test.Flag_test.T_flagVar>(_v), ((("foo" : GoString))), ((("" : GoString))));
            });
            {
                var _msg:GoString = _test._errorMsg + ((("\n" : GoString)));
                if (_msg != ((_buf.toString() : GoString))) {
                    _t.errorf(((("%s\n: unexpected output: expected %q, bug got %q" : GoString))), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(_buf));
                };
            };
        };
    }
@:keep var _ = {
        try {
            stdgo.flag.Flag.var_(new Ref_wrapper<stdgo.flag_test.Flag_test.T_interval>(_intervalFlag), ((("deltaT" : GoString))), ((("comma-separated list of intervals to use between events" : GoString))));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class URLValue_wrapper {
    @:keep
    public function set(_s:GoString):Error {
        var _v = __t__;
        (_v == null ? null : _v.__copy__());
        {
            var __tmp__ = stdgo.net.url.Url.parse(_s), _u:Ref<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                    _v.url.forceQuery = __tmp__.forceQuery;
                    _v.url.rawQuery = __tmp__.rawQuery;
                    _v.url.fragment = __tmp__.fragment;
                    _v.url.rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _v = __t__;
        (_v == null ? null : _v.__copy__());
        if (_v.url != null) {
            return ((_v.url.toString() : GoString));
        };
        return ((("" : GoString)));
    }
    public var __t__ : URLValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class URLValue_static_extension {
    @:keep
    public static function set( _v:stdgo.flag_test.Flag_test.URLValue, _s:GoString):Error {
        (_v == null ? null : _v.__copy__());
        {
            var __tmp__ = stdgo.net.url.Url.parse(_s), _u:Ref<stdgo.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
                    _v.url.forceQuery = __tmp__.forceQuery;
                    _v.url.rawQuery = __tmp__.rawQuery;
                    _v.url.fragment = __tmp__.fragment;
                    _v.url.rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function toString( _v:stdgo.flag_test.Flag_test.URLValue):GoString {
        (_v == null ? null : _v.__copy__());
        if (_v.url != null) {
            return ((_v.url.toString() : GoString));
        };
        return ((("" : GoString)));
    }
}
class T_boolFlagVar_wrapper {
    @:keep
    public function isBoolFlag():Bool {
        var _b = __t__;
        _b;
        return _b._count < ((4 : GoInt));
    }
    @:keep
    public function set(_value:GoString):Error {
        var _b = __t__;
        _b;
        if (_value == ((("true" : GoString)))) {
            _b._count++;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _b = __t__;
        _b;
        return stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_b._count));
    }
    public var __t__ : T_boolFlagVar;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_boolFlagVar_static_extension {
    @:keep
    public static function isBoolFlag( _b:Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>):Bool {
        _b;
        return _b._count < ((4 : GoInt));
    }
    @:keep
    public static function set( _b:Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>, _value:GoString):Error {
        _b;
        if (_value == ((("true" : GoString)))) {
            _b._count++;
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function toString( _b:Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>):GoString {
        _b;
        return stdgo.fmt.Fmt.sprintf(((("%d" : GoString))), Go.toInterface(_b._count));
    }
}
class T__struct_0_wrapper {
    public var __t__ : T__struct_0;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_1_wrapper {
    public var __t__ : T__struct_1;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__struct_2_wrapper {
    public var __t__ : T__struct_2;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_interval_wrapper {
    @:keep
    public function set(_value:GoString):Error {
        var _i = __t__;
        _i;
        if ((_i != null ? _i.length : ((0 : GoInt))) > ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("interval flag already set" : GoString))));
        };
        for (_0 => _dt in stdgo.strings.Strings.split(_value, ((("," : GoString))))) {
            var __tmp__ = stdgo.time.Time.parseDuration(_dt), _duration:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _i = (_i != null ? _i.__append__(_duration) : new Slice<Slice<stdgo.time.Time.Duration>>(_duration));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _i = __t__;
        _i;
        return stdgo.fmt.Fmt.sprint(_i);
    }
    public var __t__ : T_interval;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_interval_static_extension {
    @:keep
    public static function set( _i:Ref<stdgo.flag_test.Flag_test.T_interval>, _value:GoString):Error {
        _i;
        if ((_i != null ? _i.length : ((0 : GoInt))) > ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("interval flag already set" : GoString))));
        };
        for (_0 => _dt in stdgo.strings.Strings.split(_value, ((("," : GoString))))) {
            var __tmp__ = stdgo.time.Time.parseDuration(_dt), _duration:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _i = (_i != null ? _i.__append__(_duration) : new Slice<Slice<stdgo.time.Time.Duration>>(_duration));
        };
        return ((null : stdgo.Error));
    }
    @:keep
    public static function toString( _i:Ref<stdgo.flag_test.Flag_test.T_interval>):GoString {
        _i;
        return stdgo.fmt.Fmt.sprint(_i);
    }
}
class T_flagVar_wrapper {
    @:keep
    public function set(_value:GoString):Error {
        var _f = __t__;
        _f;
        _f = (_f != null ? _f.__append__(_value) : new Slice<Slice<GoString>>(_value));
        return ((null : stdgo.Error));
    }
    @:keep
    public function toString():GoString {
        var _f = __t__;
        _f;
        return stdgo.fmt.Fmt.sprint(((_f : Slice<GoString>)));
    }
    public var __t__ : T_flagVar;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_flagVar_static_extension {
    @:keep
    public static function set( _f:Ref<stdgo.flag_test.Flag_test.T_flagVar>, _value:GoString):Error {
        _f;
        _f = (_f != null ? _f.__append__(_value) : new Slice<Slice<GoString>>(_value));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function toString( _f:Ref<stdgo.flag_test.Flag_test.T_flagVar>):GoString {
        _f;
        return stdgo.fmt.Fmt.sprint(((_f : Slice<GoString>)));
    }
}
