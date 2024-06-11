package stdgo._internal.flag_test;
import stdgo._internal.flag.Flag;
import stdgo._internal.flag.Flag;
private var __go2hxdoc__package : Bool;
var _gopherType : stdgo.GoString = ("" : stdgo.GoString);
var _intervalFlag : T_interval = new stdgo._internal.flag_test.Flag_test.T_interval(0, 0);
final _defaultOutput : stdgo.GoString = ("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString);
var _species : stdgo.Pointer<stdgo.GoString> = stdgo._internal.flag.Flag.string(("species" : stdgo.GoString), ("gopher" : stdgo.GoString), ("the species we are studying" : stdgo.GoString));
var _u : stdgo.Ref<stdgo._internal.net.url.Url.URL> = (stdgo.Go.setRef((new stdgo._internal.net.url.Url.URL() : stdgo._internal.net.url.Url.URL)) : stdgo.Ref<stdgo._internal.net.url.Url.URL>);
@:structInit @:using(stdgo._internal.flag_test.Flag_test.URLValue_static_extension) class URLValue {
    public var url : stdgo.Ref<stdgo._internal.net.url.Url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url.URL>);
    public function new(?url:stdgo.Ref<stdgo._internal.net.url.Url.URL>) {
        if (url != null) this.url = url;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new URLValue(url);
    }
}
@:structInit @:private @:using(stdgo._internal.flag_test.Flag_test.T_boolFlagVar_static_extension) class T_boolFlagVar {
    public var _count : stdgo.GoInt = 0;
    public function new(?_count:stdgo.GoInt) {
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_boolFlagVar(_count);
    }
}
@:structInit @:private @:using(stdgo._internal.flag_test.Flag_test.T_zeroPanicker_static_extension) class T_zeroPanicker {
    public var _dontPanic : Bool = false;
    public var _v : stdgo.GoString = "";
    public function new(?_dontPanic:Bool, ?_v:stdgo.GoString) {
        if (_dontPanic != null) this._dontPanic = _dontPanic;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zeroPanicker(_dontPanic, _v);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.flag_test.Flag_test.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _flag : stdgo.GoString;
    public var _flagHandle : stdgo.GoString;
    public var _expectExit : stdgo.GoInt;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.flag_test.Flag_test.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _flag : stdgo.GoString;
    public var _errorMsg : stdgo.GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.flag_test.Flag_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _flagSetName : stdgo.GoString;
    public var _errorMsg : stdgo.GoString;
};
@:named @:using(stdgo._internal.flag_test.Flag_test.T_interval_static_extension) typedef T_interval = stdgo.Slice<stdgo._internal.time.Time.Duration>;
@:named @:using(stdgo._internal.flag_test.Flag_test.T_flagVar_static_extension) typedef T_flagVar = stdgo.Slice<stdgo.GoString>;
function exampleFunc():Void {
        var _fs = stdgo._internal.flag.Flag.newFlagSet(("ExampleFunc" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        var _ip:stdgo._internal.net.Net.IP = new stdgo._internal.net.Net.IP(0, 0);
        _fs.func(("ip" : stdgo.GoString), ("`IP address` to parse" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ip = stdgo._internal.net.Net.parseIP(_s?.__copy__());
            if (_ip == null) {
                return stdgo._internal.errors.Errors.new_(("could not parse IP" : stdgo.GoString));
            };
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)), stdgo.Go.toInterface(_ip.isLoopback()));
    }
function exampleBoolFunc():Void {
        var _fs = stdgo._internal.flag.Flag.newFlagSet(("ExampleBoolFunc" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        _fs.boolFunc(("log" : stdgo.GoString), ("logs a dummy message" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("dummy message:" : stdgo.GoString)), stdgo.Go.toInterface(_s));
            return (null : stdgo.Error);
        });
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-log" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-log=0" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
    }
function example():Void {}
function exampleTextVar():Void {
        var _fs = stdgo._internal.flag.Flag.newFlagSet(("ExampleTextVar" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _fs.setOutput(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        var _ip:stdgo._internal.net.Net.IP = new stdgo._internal.net.Net.IP(0, 0);
        _fs.textVar(stdgo.Go.asInterface((stdgo.Go.setRef(_ip) : stdgo.Ref<stdgo._internal.net.Net.IP>)), ("ip" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.Net.ipv4((192 : stdgo.GoUInt8), (168 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (100 : stdgo.GoUInt8))), ("`IP address` to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("127.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
        _ip = null;
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-ip" : stdgo.GoString), ("256.0.0.1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt.printf(("{ip: %v}\n\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ip)));
    }
function exampleValue():Void {
        var _fs = stdgo._internal.flag.Flag.newFlagSet(("ExampleValue" : stdgo.GoString), (1 : stdgo._internal.flag.Flag.ErrorHandling));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.flag_test.Flag_test.URLValue(_u) : stdgo._internal.flag_test.Flag_test.URLValue)) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.URLValue>)), ("url" : stdgo.GoString), ("URL to parse" : stdgo.GoString));
        _fs.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-url" : stdgo.GoString), ("https://golang.org/pkg/flag/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        stdgo._internal.fmt.Fmt.printf(("{scheme: %q, host: %q, path: %q}" : stdgo.GoString), stdgo.Go.toInterface(_u.scheme), stdgo.Go.toInterface(_u.host), stdgo.Go.toInterface(_u.path));
    }
function _boolString(_s:stdgo.GoString):stdgo.GoString {
        if (_s == (("0" : stdgo.GoString))) {
            return ("false" : stdgo.GoString);
        };
        return ("true" : stdgo.GoString);
    }
function testEverything(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        resetForTesting(null);
        bool_(("test_bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        int_(("test_int" : stdgo.GoString), (0 : stdgo.GoInt), ("int value" : stdgo.GoString));
        int64(("test_int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        uint(("test_uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        uint64(("test_uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        string(("test_string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        float64(("test_float64" : stdgo.GoString), (0 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        duration(("test_duration" : stdgo.GoString), (0i64 : stdgo._internal.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        func(("test_func" : stdgo.GoString), ("func value" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        boolFunc(("test_boolfunc" : stdgo.GoString), ("func" : stdgo.GoString), function(_0:stdgo.GoString):stdgo.Error {
            return (null : stdgo.Error);
        });
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        var _desired:stdgo.GoString = ("0" : stdgo.GoString);
        var _visitor = function(_f:stdgo.Ref<Flag>):Void {
            if ((((_f.name.length) > (5 : stdgo.GoInt) : Bool) && ((_f.name.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString)) : Bool)) {
                _m[_f.name] = _f;
                var _ok:Bool = false;
                if ((_f.value.string() : stdgo.GoString) == (_desired)) {
                    _ok = true;
                } else if (((_f.name == ("test_bool" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == _boolString(_desired?.__copy__())) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_duration" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == (_desired + ("s" : stdgo.GoString)?.__copy__() : stdgo.GoString)) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_func" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                    _ok = true;
                } else if (((_f.name == ("test_boolfunc" : stdgo.GoString)) && ((_f.value.string() : stdgo.GoString) == stdgo.Go.str()) : Bool)) {
                    _ok = true;
                };
                if (!_ok) {
                    _t.error(stdgo.Go.toInterface(("Visit: bad value" : stdgo.GoString)), stdgo.Go.toInterface((_f.value.string() : stdgo.GoString)), stdgo.Go.toInterface(("for" : stdgo.GoString)), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
        if ((_m.length) != ((10 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("VisitAll misses some flags" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag.Flag)));
            };
        };
        _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        visit(_visitor);
        if ((_m.length) != ((0 : stdgo.GoInt))) {
            _t.errorf(("Visit sees unset flags" : stdgo.GoString));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag.Flag)));
            };
        };
        set(("test_bool" : stdgo.GoString), ("true" : stdgo.GoString));
        set(("test_int" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_int64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_uint" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_uint64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_string" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_float64" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_duration" : stdgo.GoString), ("1s" : stdgo.GoString));
        set(("test_func" : stdgo.GoString), ("1" : stdgo.GoString));
        set(("test_boolfunc" : stdgo.GoString), stdgo.Go.str()?.__copy__());
        _desired = ("1" : stdgo.GoString);
        visit(_visitor);
        if ((_m.length) != ((10 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("Visit fails after set" : stdgo.GoString)));
            for (_k => _v in _m) {
                _t.log(stdgo.Go.toInterface(_k), stdgo.Go.toInterface((_v : stdgo._internal.flag.Flag.Flag)));
            };
        };
        var _flagNames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        visit(function(_f:stdgo.Ref<Flag>):Void {
            _flagNames = (_flagNames.__append__(_f.name?.__copy__()));
        });
        if (!stdgo._internal.sort.Sort.stringsAreSorted(_flagNames)) {
            _t.errorf(("flag names not sorted: %v" : stdgo.GoString), stdgo.Go.toInterface(_flagNames));
        };
    }
function testGet(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        resetForTesting(null);
        bool_(("test_bool" : stdgo.GoString), true, ("bool value" : stdgo.GoString));
        int_(("test_int" : stdgo.GoString), (1 : stdgo.GoInt), ("int value" : stdgo.GoString));
        int64(("test_int64" : stdgo.GoString), (2i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        uint(("test_uint" : stdgo.GoString), (3u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        uint64(("test_uint64" : stdgo.GoString), (4i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        string(("test_string" : stdgo.GoString), ("5" : stdgo.GoString), ("string value" : stdgo.GoString));
        float64(("test_float64" : stdgo.GoString), (6 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        duration(("test_duration" : stdgo.GoString), (7i64 : stdgo._internal.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        var _visitor = function(_f:stdgo.Ref<Flag>):Void {
            if ((((_f.name.length) > (5 : stdgo.GoInt) : Bool) && ((_f.name.__slice__((0 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.GoString) == ("test_" : stdgo.GoString)) : Bool)) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_f.value) : Getter)) : Getter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.flag.Flag.Getter), _1 : false };
                }, _g = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Visit: value does not satisfy Getter: %T" : stdgo.GoString), stdgo.Go.toInterface(_f.value));
                    return;
                };
                {
                    final __value__ = _f.name;
                    if (__value__ == (("test_bool" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(true));
                    } else if (__value__ == (("test_int" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((1 : stdgo.GoInt) : stdgo.GoInt)));
                    } else if (__value__ == (("test_int64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((2i64 : stdgo.GoInt64) : stdgo.GoInt64)));
                    } else if (__value__ == (("test_uint" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((3u32 : stdgo.GoUInt) : stdgo.GoUInt)));
                    } else if (__value__ == (("test_uint64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(((4i64 : stdgo.GoUInt64) : stdgo.GoUInt64)));
                    } else if (__value__ == (("test_string" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(("5" : stdgo.GoString)));
                    } else if (__value__ == (("test_float64" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface((6 : stdgo.GoFloat64)));
                    } else if (__value__ == (("test_duration" : stdgo.GoString))) {
                        _ok = _g.get() == (stdgo.Go.toInterface(stdgo.Go.asInterface((7i64 : stdgo._internal.time.Time.Duration))));
                    };
                };
                if (!_ok) {
                    _t.errorf(("Visit: bad value %T(%v) for %s" : stdgo.GoString), _g.get(), _g.get(), stdgo.Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
    }
function testUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _called:Bool = false;
        resetForTesting(function():Void {
            _called = true;
        });
        if (commandLine.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-x" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) == null) {
            _t.error(stdgo.Go.toInterface(("parse did not fail for unknown flag" : stdgo.GoString)));
        };
        if (!_called) {
            _t.error(stdgo.Go.toInterface(("did not call Usage for unknown flag" : stdgo.GoString)));
        };
    }
function _testParse(_f:stdgo.Ref<FlagSet>, _t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = true before Parse" : stdgo.GoString)));
        };
        var _boolFlag = _f.bool_(("bool" : stdgo.GoString), false, ("bool value" : stdgo.GoString));
        var _bool2Flag = _f.bool_(("bool2" : stdgo.GoString), false, ("bool2 value" : stdgo.GoString));
        var _intFlag = _f.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), ("int value" : stdgo.GoString));
        var _int64Flag = _f.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), ("int64 value" : stdgo.GoString));
        var _uintFlag = _f.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), ("uint value" : stdgo.GoString));
        var _uint64Flag = _f.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), ("uint64 value" : stdgo.GoString));
        var _stringFlag = _f.string(("string" : stdgo.GoString), ("0" : stdgo.GoString), ("string value" : stdgo.GoString));
        var _float64Flag = _f.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), ("float64 value" : stdgo.GoString));
        var _durationFlag = _f.duration(("duration" : stdgo.GoString), (5000000000i64 : stdgo._internal.time.Time.Duration), ("time.Duration value" : stdgo.GoString));
        var _extra:stdgo.GoString = ("one-extra-argument" : stdgo.GoString);
        var _args = (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
("-bool" : stdgo.GoString),
("-bool2=true" : stdgo.GoString),
("--int" : stdgo.GoString),
("22" : stdgo.GoString),
("--int64" : stdgo.GoString),
("0x23" : stdgo.GoString),
("-uint" : stdgo.GoString),
("24" : stdgo.GoString),
("--uint64" : stdgo.GoString),
("25" : stdgo.GoString),
("-string" : stdgo.GoString),
("hello" : stdgo.GoString),
("-float64" : stdgo.GoString),
("2718e28" : stdgo.GoString),
("-duration" : stdgo.GoString),
("2m" : stdgo.GoString),
_extra?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _err:stdgo.Error = _f.parse(_args);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (!_f.parsed()) {
            _t.error(stdgo.Go.toInterface(("f.Parse() = false after Parse" : stdgo.GoString)));
        };
        if (_boolFlag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_boolFlag.value));
        };
        if (_bool2Flag.value != (true)) {
            _t.error(stdgo.Go.toInterface(("bool2 flag should be true, is " : stdgo.GoString)), stdgo.Go.toInterface(_bool2Flag.value));
        };
        if (_intFlag.value != ((22 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("int flag should be 22, is " : stdgo.GoString)), stdgo.Go.toInterface(_intFlag.value));
        };
        if (_int64Flag.value != ((35i64 : stdgo.GoInt64))) {
            _t.error(stdgo.Go.toInterface(("int64 flag should be 0x23, is " : stdgo.GoString)), stdgo.Go.toInterface(_int64Flag.value));
        };
        if (_uintFlag.value != ((24u32 : stdgo.GoUInt))) {
            _t.error(stdgo.Go.toInterface(("uint flag should be 24, is " : stdgo.GoString)), stdgo.Go.toInterface(_uintFlag.value));
        };
        if (_uint64Flag.value != ((25i64 : stdgo.GoUInt64))) {
            _t.error(stdgo.Go.toInterface(("uint64 flag should be 25, is " : stdgo.GoString)), stdgo.Go.toInterface(_uint64Flag.value));
        };
        if (_stringFlag.value != (("hello" : stdgo.GoString))) {
            _t.error(stdgo.Go.toInterface(("string flag should be `hello`, is " : stdgo.GoString)), stdgo.Go.toInterface(_stringFlag.value));
        };
        if (_float64Flag.value != (2.718e+31 : stdgo.GoFloat64)) {
            _t.error(stdgo.Go.toInterface(("float64 flag should be 2718e28, is " : stdgo.GoString)), stdgo.Go.toInterface(_float64Flag.value));
        };
        if (_durationFlag.value != ((120000000000i64 : stdgo._internal.time.Time.Duration))) {
            _t.error(stdgo.Go.toInterface(("duration flag should be 2m, is " : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_durationFlag.value)));
        };
        if ((_f.args().length) != ((1 : stdgo.GoInt))) {
            _t.error(stdgo.Go.toInterface(("expected one argument, got" : stdgo.GoString)), stdgo.Go.toInterface((_f.args().length)));
        } else if (_f.args()[(0 : stdgo.GoInt)] != (_extra)) {
            _t.errorf(("expected argument %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_extra), stdgo.Go.toInterface(_f.args()[(0 : stdgo.GoInt)]));
        };
    }
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        resetForTesting(function():Void {
            _t.error(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
        });
        _testParse(commandLine, _t);
    }
function testFlagSetParse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testParse(newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling)), _t);
    }
function testUserDefined(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags:FlagSet = ({} : stdgo._internal.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        var _v:T_flagVar = new stdgo._internal.flag_test.Flag_test.T_flagVar(0, 0);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_flagVar>)), ("v" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v" : stdgo.GoString), ("2" : stdgo.GoString), ("-v=3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_v.length) != ((3 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("expected 3 args; got " : stdgo.GoString)), stdgo.Go.toInterface((_v.length)));
        };
        var _expect:stdgo.GoString = ("[1 2 3]" : stdgo.GoString);
        if ((_v.string() : stdgo.GoString) != (_expect)) {
            _t.errorf(("expected value %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface((_v.string() : stdgo.GoString)));
        };
    }
function testUserDefinedFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _flags.func(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ss = (_ss.__append__(_s?.__copy__()));
            return (null : stdgo.Error);
        });
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v" : stdgo.GoString), ("2" : stdgo.GoString), ("-v=3" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((3 : stdgo.GoInt))) {
            _t.fatal(stdgo.Go.toInterface(("expected 3 args; got " : stdgo.GoString)), stdgo.Go.toInterface((_ss.length)));
        };
        var _expect:stdgo.GoString = ("[1 2 3]" : stdgo.GoString);
        {
            var _got:stdgo.GoString = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_ss))?.__copy__();
            if (_got != (_expect)) {
                _t.errorf(("expected value %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_got));
            };
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-h" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        {
            var _usage:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (!stdgo._internal.strings.Strings.contains(_usage?.__copy__(), ("usage" : stdgo.GoString))) {
                _t.errorf(("usage string not included: %q" : stdgo.GoString), stdgo.Go.toInterface(_usage));
            };
        };
        _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        _flags.func(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            return stdgo._internal.fmt.Fmt.errorf(("test error" : stdgo.GoString));
        });
        {
            var _err:stdgo.Error = _flags.parse((null : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-v" : stdgo.GoString), ("1" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
            } else {
                var _errMsg:stdgo.GoString = _err.error()?.__copy__();
                if (!stdgo._internal.strings.Strings.contains(_errMsg?.__copy__(), ("test error" : stdgo.GoString))) {
                    _t.errorf(("error should contain \"test error\"; got %q" : stdgo.GoString), stdgo.Go.toInterface(_errMsg));
                };
            };
        };
    }
function testUserDefinedForCommandLine(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _result:stdgo.GoString = ("" : stdgo.GoString);
        resetForTesting(function():Void {
            _result = ("HELP" : stdgo.GoString);
        });
        usage();
        if (_result != (("HELP" : stdgo.GoString))) {
            _t.fatalf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(("HELP" : stdgo.GoString)));
        };
    }
function testUserDefinedBool(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags:FlagSet = ({} : stdgo._internal.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        var _b:T_boolFlagVar = ({} : stdgo._internal.flag_test.Flag_test.T_boolFlagVar);
        var _err:stdgo.Error = (null : stdgo.Error);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_boolFlagVar>)), ("b" : stdgo.GoString), ("usage" : stdgo.GoString));
        {
            _err = _flags.parse((new stdgo.Slice<stdgo.GoString>(8, 8, ...[("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b" : stdgo.GoString), ("-b=true" : stdgo.GoString), ("-b=false" : stdgo.GoString), ("-b" : stdgo.GoString), ("barg" : stdgo.GoString), ("-b" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                if ((_b._count < (4 : stdgo.GoInt) : Bool)) {
                    _t.error(stdgo.Go.toInterface(_err));
                };
            };
        };
        if (_b._count != ((4 : stdgo.GoInt))) {
            _t.errorf(("want: %d; got: %d" : stdgo.GoString), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface(_b._count));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        };
    }
function testUserDefinedBoolUsage(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags:FlagSet = ({} : stdgo._internal.flag.Flag.FlagSet);
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)));
        var _b:T_boolFlagVar = ({} : stdgo._internal.flag_test.Flag_test.T_boolFlagVar);
        _flags.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_boolFlagVar>)), ("b" : stdgo.GoString), ("X" : stdgo.GoString));
        _b._count = (0 : stdgo.GoInt);
        _flags.printDefaults();
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        var _want:stdgo.GoString = ("  -b\tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
        _b._count = (4 : stdgo.GoInt);
        _flags.printDefaults();
        _got = (_buf.string() : stdgo.GoString)?.__copy__();
        _want = ("  -b\tX\n  -b value\n    \tX\n" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
function testSetOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags:FlagSet = ({} : stdgo._internal.flag.Flag.FlagSet);
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _flags.init(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-unknown" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        {
            var _out:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (!stdgo._internal.strings.Strings.contains(_out?.__copy__(), ("-unknown" : stdgo.GoString))) {
                _t.logf(("expected output mentioning unknown; got %q" : stdgo.GoString), stdgo.Go.toInterface(_out));
            };
        };
    }
function testChangingArgs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(function():Void {
                _t.fatal(stdgo.Go.toInterface(("bad parse" : stdgo.GoString)));
            });
            var _oldArgs = stdgo._internal.os.Os.args;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo._internal.os.Os.args = _oldArgs;
                };
                a();
            });
            stdgo._internal.os.Os.args = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("cmd" : stdgo.GoString), ("-before" : stdgo.GoString), ("subcmd" : stdgo.GoString), ("-after" : stdgo.GoString), ("args" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _before = bool_(("before" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            {
                var _err:stdgo.Error = commandLine.parse((stdgo._internal.os.Os.args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
                if (_err != null) {
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            var _cmd:stdgo.GoString = arg((0 : stdgo.GoInt))?.__copy__();
            stdgo._internal.os.Os.args = args();
            var _after = bool_(("after" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            parse();
            var _args = args();
            if (((((!_before.value || _cmd != (("subcmd" : stdgo.GoString)) : Bool) || !_after.value : Bool) || (_args.length) != ((1 : stdgo.GoInt)) : Bool) || (_args[(0 : stdgo.GoInt)] != ("args" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("expected true subcmd true [args] got %v %v %v %v" : stdgo.GoString), stdgo.Go.toInterface(_before.value), stdgo.Go.toInterface(_cmd), stdgo.Go.toInterface(_after.value), stdgo.Go.toInterface(_args));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testHelp(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _helpCalled:Bool = false;
        var _fs = newFlagSet(("help test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _fs.usage = function():Void {
            _helpCalled = true;
        };
        var _flag:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_flag), ("flag" : stdgo.GoString), false, ("regular flag" : stdgo.GoString));
        var _err:stdgo.Error = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-flag=true" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_flag) {
            _t.error(stdgo.Go.toInterface(("flag was not set by -flag" : stdgo.GoString)));
        };
        if (_helpCalled) {
            _t.error(stdgo.Go.toInterface(("help called for regular flag" : stdgo.GoString)));
            _helpCalled = false;
        };
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-help" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("error expected" : stdgo.GoString)));
        };
        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(errHelp))) {
            _t.fatal(stdgo.Go.toInterface(("expected ErrHelp; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was not called" : stdgo.GoString)));
        };
        var _help:Bool = false;
        _fs.boolVar(stdgo.Go.pointer(_help), ("help" : stdgo.GoString), false, ("help flag" : stdgo.GoString));
        _helpCalled = false;
        _err = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-help" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("expected no error for defined -help; got " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_helpCalled) {
            _t.fatal(stdgo.Go.toInterface(("help was called; should not have been for defined help flag" : stdgo.GoString)));
        };
    }
function testPrintDefaults(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _fs = newFlagSet(("print defaults test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _fs.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _fs.bool_(("A" : stdgo.GoString), false, ("for bootstrapping, allow \'any\' type" : stdgo.GoString));
        _fs.bool_(("Alongflagname" : stdgo.GoString), false, ("disable bounds checking" : stdgo.GoString));
        _fs.bool_(("C" : stdgo.GoString), true, ("a boolean defaulting to true" : stdgo.GoString));
        _fs.string(("D" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("set relative `path` for local imports" : stdgo.GoString));
        _fs.string(("E" : stdgo.GoString), ("0" : stdgo.GoString), ("issue 23543" : stdgo.GoString));
        _fs.float64(("F" : stdgo.GoString), (2.7 : stdgo.GoFloat64), ("a non-zero `number`" : stdgo.GoString));
        _fs.float64(("G" : stdgo.GoString), (0 : stdgo.GoFloat64), ("a float that defaults to zero" : stdgo.GoString));
        _fs.string(("M" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a multiline\nhelp\nstring" : stdgo.GoString));
        _fs.int_(("N" : stdgo.GoString), (27 : stdgo.GoInt), ("a non-zero int" : stdgo.GoString));
        _fs.bool_(("O" : stdgo.GoString), true, ("a flag\nmultiline help string" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("a" : stdgo.GoString), ("b" : stdgo.GoString)]).__setString__() : stdgo._internal.flag_test.Flag_test.T_flagVar)) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_flagVar>)), ("V" : stdgo.GoString), ("a `list` of strings" : stdgo.GoString));
        _fs.int_(("Z" : stdgo.GoString), (0 : stdgo.GoInt), ("an int that defaults to zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.flag_test.Flag_test.T_zeroPanicker(true, stdgo.Go.str()?.__copy__()) : stdgo._internal.flag_test.Flag_test.T_zeroPanicker)) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_zeroPanicker>)), ("ZP0" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.flag_test.Flag_test.T_zeroPanicker(true, ("something" : stdgo.GoString)) : stdgo._internal.flag_test.Flag_test.T_zeroPanicker)) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_zeroPanicker>)), ("ZP1" : stdgo.GoString), ("a flag whose String method panics when it is zero" : stdgo.GoString));
        _fs.duration(("maxT" : stdgo.GoString), (0i64 : stdgo._internal.time.Time.Duration), ("set `timeout` for dial" : stdgo.GoString));
        _fs.printDefaults();
        var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        if (_got != (("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString))) {
            _t.errorf(("got:\n%q\nwant:\n%q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : stdgo.GoString)));
        };
    }
function testIntFlagOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (false) {
            return;
        };
        resetForTesting(null);
        int_(("i" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
        uint(("u" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
        {
            var _err:stdgo.Error = set(("i" : stdgo.GoString), ("2147483648" : stdgo.GoString));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Int" : stdgo.GoString)));
            };
        };
        {
            var _err:stdgo.Error = set(("u" : stdgo.GoString), ("4294967296" : stdgo.GoString));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("unexpected success setting Uint" : stdgo.GoString)));
            };
        };
    }
function testUsageOutput(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(defaultUsage);
            var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            commandLine.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
            {
                var _a0 = stdgo._internal.os.Os.args;
                __deferstack__.unshift(() -> {
                    var a = function(_old:stdgo.Slice<stdgo.GoString>):Void {
                        stdgo._internal.os.Os.args = _old;
                    };
                    a(_a0);
                });
            };
            stdgo._internal.os.Os.args = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("app" : stdgo.GoString), ("-i=1" : stdgo.GoString), ("-unknown" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
            parse();
            {};
            {
                var _got:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
                if (_got != (("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString))) {
                    _t.errorf(("output = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("flag provided but not defined: -i\nUsage of app:\n" : stdgo.GoString)));
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testGetters(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _expectedName:stdgo.GoString = ("flag set" : stdgo.GoString);
        var _expectedErrorHandling:stdgo._internal.flag.Flag.ErrorHandling = (0 : stdgo._internal.flag.Flag.ErrorHandling);
        var _expectedOutput:stdgo._internal.io.Io.Writer = stdgo.Go.asInterface(stdgo._internal.os.Os.stderr);
        var _fs = newFlagSet(_expectedName?.__copy__(), _expectedErrorHandling);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %#v, expected %#v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
        _expectedName = ("gopher" : stdgo.GoString);
        _expectedErrorHandling = (1 : stdgo._internal.flag.Flag.ErrorHandling);
        _expectedOutput = stdgo.Go.asInterface(stdgo._internal.os.Os.stdout);
        _fs.init(_expectedName?.__copy__(), _expectedErrorHandling);
        _fs.setOutput(_expectedOutput);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_fs.name()), stdgo.Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fs.errorHandling()), stdgo.Go.toInterface(_expectedErrorHandling));
        };
        if (stdgo.Go.toInterface(_fs.output()) != (stdgo.Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_fs.output()), stdgo.Go.toInterface(_expectedOutput));
        };
    }
function testParseError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _typ in (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("bool" : stdgo.GoString), ("int" : stdgo.GoString), ("int64" : stdgo.GoString), ("uint" : stdgo.GoString), ("uint64" : stdgo.GoString), ("float64" : stdgo.GoString), ("duration" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _fs = newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo._internal.io.Io.discard);
            var __blank__ = _fs.bool_(("bool" : stdgo.GoString), false, stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.duration(("duration" : stdgo.GoString), (0i64 : stdgo._internal.time.Time.Duration), stdgo.Go.str()?.__copy__());
            var _args = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[((("-" : stdgo.GoString) + _typ?.__copy__() : stdgo.GoString) + ("=x" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            var _err:stdgo.Error = _fs.parse(_args);
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("invalid" : stdgo.GoString)) || !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("parse error" : stdgo.GoString)) : Bool)) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : stdgo.GoString), stdgo.Go.toInterface(_args), stdgo.Go.toInterface(_err));
            };
        };
    }
function testRangeError(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _bad = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-int=123456789012345678901" : stdgo.GoString), ("-int64=123456789012345678901" : stdgo.GoString), ("-uint=123456789012345678901" : stdgo.GoString), ("-uint64=123456789012345678901" : stdgo.GoString), ("-float64=1e1000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _arg in _bad) {
            var _fs = newFlagSet(("parse error test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo._internal.io.Io.discard);
            var __blank__ = _fs.int_(("int" : stdgo.GoString), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.int64(("int64" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint(("uint" : stdgo.GoString), (0u32 : stdgo.GoUInt), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.uint64(("uint64" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo.Go.str()?.__copy__());
            var __blank__ = _fs.float64(("float64" : stdgo.GoString), (0 : stdgo.GoFloat64), stdgo.Go.str()?.__copy__());
            var _err:stdgo.Error = _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_arg?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("invalid" : stdgo.GoString)) || !stdgo._internal.strings.Strings.contains(_err.error()?.__copy__(), ("value out of range" : stdgo.GoString)) : Bool)) {
                _t.errorf(("Parse(%q)=%v; expected range error" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_err));
            };
        };
    }
function testExitCode(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        var _magic:stdgo.GoInt = (123 : stdgo.GoInt);
        if (stdgo._internal.os.Os.getenv(("GO_CHILD_FLAG" : stdgo.GoString)) != (stdgo.Go.str())) {
            var _fs = newFlagSet(("test" : stdgo.GoString), (1 : stdgo._internal.flag.Flag.ErrorHandling));
            if (stdgo._internal.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString)) != (stdgo.Go.str())) {
                var _b:Bool = false;
                _fs.boolVar(stdgo.Go.pointer(_b), stdgo._internal.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : stdgo.GoString))?.__copy__(), false, stdgo.Go.str()?.__copy__());
            };
            _fs.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.os.Os.getenv(("GO_CHILD_FLAG" : stdgo.GoString))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            Sys.exit(_magic);
        };
        var _tests = (new stdgo.Slice<T__struct_0>(5, 5, ...[({ _flag : ("-h" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : T__struct_0), ({ _flag : ("-undefined" : stdgo.GoString), _expectExit : (2 : stdgo.GoInt), _flagHandle : ("" : stdgo.GoString) } : T__struct_0), ({ _flag : ("-h" : stdgo.GoString), _flagHandle : ("h" : stdgo.GoString), _expectExit : _magic } : T__struct_0), ({ _flag : ("-help" : stdgo.GoString), _flagHandle : ("help" : stdgo.GoString), _expectExit : _magic } : T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _flag : ("" : stdgo.GoString), _flagHandle : ("" : stdgo.GoString), _expectExit : (0 : stdgo.GoInt) } : T__struct_0)])) : stdgo.Slice<T__struct_0>);
        for (__0 => _test in _tests) {
            var _cmd = stdgo._internal.os.exec.Exec.command(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__(), ("-test.run=TestExitCode" : stdgo.GoString));
            _cmd.env = (stdgo._internal.os.Os.environ_().__append__((("GO_CHILD_FLAG=" : stdgo.GoString) + _test._flag?.__copy__() : stdgo.GoString)?.__copy__(), (("GO_CHILD_FLAG_HANDLE=" : stdgo.GoString) + _test._flagHandle?.__copy__() : stdgo.GoString)?.__copy__()));
            _cmd.run();
            var _got:stdgo.GoInt = _cmd.processState.exitCode();
            if ((false && (_test._expectExit != (0 : stdgo.GoInt)) : Bool)) {
                _test._expectExit = (1 : stdgo.GoInt);
            };
            if (_got != (_test._expectExit)) {
                _t.errorf(("unexpected exit code for test case %+v \n: got %d, expect %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._expectExit));
            };
        };
    }
function _mustPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _testName:stdgo.GoString, _expected:stdgo.GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _msg:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but did not panic" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                            var _msg:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                            {
                                var __tmp__ = stdgo._internal.regexp.Regexp.matchString(_expected?.__copy__(), _msg?.__copy__()), _ok:Bool = __tmp__._0, __16:stdgo.Error = __tmp__._1;
                                if (!_ok) {
                                    _t.errorf(("%s\n: expected panic(%q), but got panic(%q)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_msg));
                                };
                            };
                        } else {
                            var _msg:stdgo.AnyInterface = __type__?.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but got panic(%T%v)" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_expected), _msg, _msg);
                        };
                    };
                };
                a();
            });
            _f();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testInvalidFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_1>(2, 2, ...[({ _flag : ("-foo" : stdgo.GoString), _errorMsg : ("flag \"-foo\" begins with -" : stdgo.GoString) } : T__struct_1), ({ _flag : ("foo=bar" : stdgo.GoString), _errorMsg : ("flag \"foo=bar\" contains =" : stdgo.GoString) } : T__struct_1)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _flag : ("" : stdgo.GoString), _errorMsg : ("" : stdgo.GoString) } : T__struct_1)])) : stdgo.Slice<T__struct_1>);
        for (__0 => _test in _tests) {
            var _testName:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("FlagSet.Var(&v, %q, \"\")" : stdgo.GoString), stdgo.Go.toInterface(_test._flag))?.__copy__();
            var _fs = newFlagSet(stdgo.Go.str()?.__copy__(), (0 : stdgo._internal.flag.Flag.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            _mustPanic(_t, _testName?.__copy__(), _test._errorMsg?.__copy__(), function():Void {
                var _v:T_flagVar = new stdgo._internal.flag_test.Flag_test.T_flagVar(0, 0);
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_flagVar>)), _test._flag?.__copy__(), stdgo.Go.str()?.__copy__());
            });
            {
                var _msg:stdgo.GoString = (_test._errorMsg + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
function testRedefinedFlags(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(2, 2, ...[({ _flagSetName : stdgo.Go.str()?.__copy__(), _errorMsg : ("flag redefined: foo" : stdgo.GoString) } : T__struct_2), ({ _flagSetName : ("fs" : stdgo.GoString), _errorMsg : ("fs flag redefined: foo" : stdgo.GoString) } : T__struct_2)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _flagSetName : ("" : stdgo.GoString), _errorMsg : ("" : stdgo.GoString) } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            var _testName:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("flag redefined in FlagSet(%q)" : stdgo.GoString), stdgo.Go.toInterface(_test._flagSetName))?.__copy__();
            var _fs = newFlagSet(_test._flagSetName?.__copy__(), (0 : stdgo._internal.flag.Flag.ErrorHandling));
            var _buf = (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Builder() : stdgo._internal.strings.Strings.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
            _fs.setOutput(stdgo.Go.asInterface(_buf));
            var _v:T_flagVar = new stdgo._internal.flag_test.Flag_test.T_flagVar(0, 0);
            _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            _mustPanic(_t, _testName?.__copy__(), _test._errorMsg?.__copy__(), function():Void {
                _fs.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_flagVar>)), ("foo" : stdgo.GoString), stdgo.Go.str()?.__copy__());
            });
            {
                var _msg:stdgo.GoString = (_test._errorMsg + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                if (_msg != ((_buf.string() : stdgo.GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : stdgo.GoString), stdgo.Go.toInterface(_testName), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
                };
            };
        };
    }
function testUserDefinedBoolFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            _ss = (_ss.__append__(_s?.__copy__()));
            return (null : stdgo.Error);
        });
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(5, 5, ...[("-v" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("-v" : stdgo.GoString), ("1" : stdgo.GoString), ("-v=2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((1 : stdgo.GoInt))) {
            _t.fatalf(("got %d args; want 1 arg" : stdgo.GoString), stdgo.Go.toInterface((_ss.length)));
        };
        var _want:stdgo.GoString = ("[true]" : stdgo.GoString);
        {
            var _got:stdgo.GoString = stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(_ss))?.__copy__();
            if (_got != (_want)) {
                _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _buf:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _flags.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)));
        _flags.parse((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-h" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
        {
            var _usage:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
            if (!stdgo._internal.strings.Strings.contains(_usage?.__copy__(), ("usage" : stdgo.GoString))) {
                _t.errorf(("usage string not included: %q" : stdgo.GoString), stdgo.Go.toInterface(_usage));
            };
        };
        _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo._internal.io.Io.discard);
        _flags.boolFunc(("v" : stdgo.GoString), ("usage" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.Error {
            return stdgo._internal.fmt.Fmt.errorf(("test error" : stdgo.GoString));
        });
        {
            var _err:stdgo.Error = _flags.parse((null : stdgo.Slice<stdgo.GoString>));
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _err:stdgo.Error = _flags.parse((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("-v" : stdgo.GoString), stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("got err == nil; want err != nil" : stdgo.GoString)));
            } else {
                var _errMsg:stdgo.GoString = _err.error()?.__copy__();
                if (!stdgo._internal.strings.Strings.contains(_errMsg?.__copy__(), ("test error" : stdgo.GoString))) {
                    _t.errorf(("got %q; error should contain \"test error\"" : stdgo.GoString), stdgo.Go.toInterface(_errMsg));
                };
            };
        };
    }
function testDefineAfterSet(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _flags = newFlagSet(("test" : stdgo.GoString), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        _flags.set(("myFlag" : stdgo.GoString), ("value" : stdgo.GoString));
        _mustPanic(_t, ("DefineAfterSet" : stdgo.GoString), ("flag myFlag set at .*/flag_test.go:.* before being defined" : stdgo.GoString), function():Void {
            var __blank__ = _flags.string(("myFlag" : stdgo.GoString), ("default" : stdgo.GoString), ("usage" : stdgo.GoString));
        });
    }
@:keep var _ = {
        try {
            {};
            stdgo._internal.flag.Flag.stringVar(stdgo.Go.pointer(_gopherType), ("gopher_type" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher" : stdgo.GoString));
            stdgo._internal.flag.Flag.stringVar(stdgo.Go.pointer(_gopherType), ("g" : stdgo.GoString), ("pocket" : stdgo.GoString), ("the variety of gopher (shorthand)" : stdgo.GoString));
            stdgo._internal.flag.Flag.var_(stdgo.Go.asInterface((stdgo.Go.setRef(_intervalFlag) : stdgo.Ref<stdgo._internal.flag_test.Flag_test.T_interval>)), ("deltaT" : stdgo.GoString), ("comma-separated list of intervals to use between events" : stdgo.GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class URLValue_asInterface {
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<URLValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.URLValue_asInterface) class URLValue_static_extension {
    @:keep
    static public function set( _v:URLValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:URLValue = _v?.__copy__();
        {
            var __tmp__ = stdgo._internal.net.url.Url.parse(_s?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            } else {
                {
                    var __tmp__ = (_u : stdgo._internal.net.url.Url.URL)?.__copy__();
                    (_v.url : stdgo._internal.net.url.Url.URL).scheme = __tmp__.scheme;
                    (_v.url : stdgo._internal.net.url.Url.URL).opaque = __tmp__.opaque;
                    (_v.url : stdgo._internal.net.url.Url.URL).user = __tmp__.user;
                    (_v.url : stdgo._internal.net.url.Url.URL).host = __tmp__.host;
                    (_v.url : stdgo._internal.net.url.Url.URL).path = __tmp__.path;
                    (_v.url : stdgo._internal.net.url.Url.URL).rawPath = __tmp__.rawPath;
                    (_v.url : stdgo._internal.net.url.Url.URL).omitHost = __tmp__.omitHost;
                    (_v.url : stdgo._internal.net.url.Url.URL).forceQuery = __tmp__.forceQuery;
                    (_v.url : stdgo._internal.net.url.Url.URL).rawQuery = __tmp__.rawQuery;
                    (_v.url : stdgo._internal.net.url.Url.URL).fragment = __tmp__.fragment;
                    (_v.url : stdgo._internal.net.url.Url.URL).rawFragment = __tmp__.rawFragment;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _v:URLValue):stdgo.GoString {
        @:recv var _v:URLValue = _v?.__copy__();
        if (_v.url != null && ((_v.url : Dynamic).__nil__ == null || !(_v.url : Dynamic).__nil__)) {
            return (_v.url.string() : stdgo.GoString)?.__copy__();
        };
        return stdgo.Go.str()?.__copy__();
    }
}
class T_boolFlagVar_asInterface {
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolFlagVar>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T_boolFlagVar_asInterface) class T_boolFlagVar_static_extension {
    @:keep
    static public function isBoolFlag( _b:stdgo.Ref<T_boolFlagVar>):Bool {
        @:recv var _b:stdgo.Ref<T_boolFlagVar> = _b;
        return (_b._count < (4 : stdgo.GoInt) : Bool);
    }
    @:keep
    static public function set( _b:stdgo.Ref<T_boolFlagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _b:stdgo.Ref<T_boolFlagVar> = _b;
        if (_value == (("true" : stdgo.GoString))) {
            _b._count++;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _b:stdgo.Ref<T_boolFlagVar>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<T_boolFlagVar> = _b;
        return stdgo._internal.fmt.Fmt.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_b._count))?.__copy__();
    }
}
class T_zeroPanicker_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_zeroPanicker>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T_zeroPanicker_asInterface) class T_zeroPanicker_static_extension {
    @:keep
    static public function string( _f:stdgo.Ref<T_zeroPanicker>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<T_zeroPanicker> = _f;
        if (!_f._dontPanic) {
            throw stdgo.Go.toInterface(("panic!" : stdgo.GoString));
        };
        return _f._v?.__copy__();
    }
    @:keep
    static public function set( _f:stdgo.Ref<T_zeroPanicker>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_zeroPanicker> = _f;
        _f._v = _s?.__copy__();
        return (null : stdgo.Error);
    }
}
class T_interval_asInterface {
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_interval>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T_interval_asInterface) class T_interval_static_extension {
    @:keep
    static public function set( _i:stdgo.Ref<T_interval>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _i:stdgo.Ref<T_interval> = _i;
        if ((((_i : stdgo._internal.flag_test.Flag_test.T_interval).length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("interval flag already set" : stdgo.GoString));
        };
        for (__0 => _dt in stdgo._internal.strings.Strings.split(_value?.__copy__(), ("," : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.time.Time.parseDuration(_dt?.__copy__()), _duration:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (_i : stdgo._internal.flag_test.Flag_test.T_interval).__setData__(((_i : stdgo._internal.flag_test.Flag_test.T_interval).__append__(_duration)));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _i:stdgo.Ref<T_interval>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<T_interval> = _i;
        return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface((_i : stdgo._internal.flag_test.Flag_test.T_interval))))?.__copy__();
    }
}
class T_flagVar_asInterface {
    @:keep
    public dynamic function set(_value:stdgo.GoString):stdgo.Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_flagVar>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag_test.Flag_test.T_flagVar_asInterface) class T_flagVar_static_extension {
    @:keep
    static public function set( _f:stdgo.Ref<T_flagVar>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<T_flagVar> = _f;
        (_f : stdgo._internal.flag_test.Flag_test.T_flagVar).__setData__(((_f : stdgo._internal.flag_test.Flag_test.T_flagVar).__append__(_value?.__copy__())));
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _f:stdgo.Ref<T_flagVar>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<T_flagVar> = _f;
        return stdgo._internal.fmt.Fmt.sprint(stdgo.Go.toInterface(((_f : stdgo._internal.flag_test.Flag_test.T_flagVar) : stdgo.Slice<stdgo.GoString>)))?.__copy__();
    }
}
