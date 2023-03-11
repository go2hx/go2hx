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
import stdgo.flag.Flag;
/**
    // These examples demonstrate more intricate uses of the flag package.
**/
private var __go2hxdoc__package : Bool;
/**
    // Example 1: A single string flag called "species" with default value "gopher".
    
    
**/
private var _species = stdgo.flag.Flag.string(("species" : GoString), ("gopher" : GoString), ("the species we are studying" : GoString));
/**
    
    
    
**/
private var _u = (Go.setRef((new stdgo.net.url.Url.URL() : stdgo.net.url.Url.URL)) : Ref<stdgo.net.url.Url.URL>);
/**
    // Example 2: Two flags sharing a variable, so we can have a shorthand.
    // The order of initialization is undefined, so make sure both use the
    // same default value. They must be set up with an init function.
    
    
**/
private var _gopherType : GoString = ("" : GoString);
/**
    
    
    
**/
private var _intervalFlag : T_interval = new stdgo.flag_test.Flag_test.T_interval(0, 0);
/**
    
    
    
**/
private final _defaultOutput = ("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : GoString);
/**
    
    
    
**/
@:structInit @:using(stdgo.flag_test.Flag_test.URLValue_static_extension) class URLValue {
    public var url : Ref<stdgo.net.url.Url.URL> = (null : Ref<stdgo.net.url.Url.URL>);
    public function new(?url:Ref<stdgo.net.url.Url.URL>) {
        if (url != null) this.url = url;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new URLValue(url);
    }
}
/**
    // Declare a user-defined boolean flag type.
    
    
**/
@:structInit @:private @:using(stdgo.flag_test.Flag_test.T_boolFlagVar_static_extension) class T_boolFlagVar {
    public var _count : GoInt = 0;
    public function new(?_count:GoInt) {
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_boolFlagVar(_count);
    }
}
/**
    // zeroPanicker is a flag.Value whose String method panics if its dontPanic
    // field is false.
    
    
**/
@:structInit @:private @:using(stdgo.flag_test.Flag_test.T_zeroPanicker_static_extension) class T_zeroPanicker {
    public var _dontPanic : Bool = false;
    public var _v : GoString = "";
    public function new(?_dontPanic:Bool, ?_v:GoString) {
        if (_dontPanic != null) this._dontPanic = _dontPanic;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_zeroPanicker(_dontPanic, _v);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_0_static_extension) private typedef T__struct_0 = {
    public var _flag : GoString;
    public var _flagHandle : GoString;
    public var _expectExit : GoInt;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_1_static_extension) private typedef T__struct_1 = {
    public var _flag : GoString;
    public var _errorMsg : GoString;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.flag_test.Flag_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _flagSetName : GoString;
    public var _errorMsg : GoString;
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
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleFunc" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
        _fs.func(("ip" : GoString), ("`IP address` to parse" : GoString), function(_s:GoString):Error {
            _ip = stdgo.net.Net.parseIP(_s);
            if (_ip == null) {
                return stdgo.errors.Errors.new_(("could not parse IP" : GoString));
            };
            return (null : Error);
        });
        _fs.parse((new Slice<GoString>(0, 0, ("-ip" : GoString), ("127.0.0.1" : GoString)) : Slice<GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : GoString), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
        _fs.parse((new Slice<GoString>(0, 0, ("-ip" : GoString), ("256.0.0.1" : GoString)) : Slice<GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v, loopback: %t}\n\n" : GoString), Go.toInterface(Go.asInterface(_ip)), Go.toInterface(_ip.isLoopback()));
    }
function example():Void {}
function exampleTextVar():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleTextVar" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.setOutput(Go.asInterface(stdgo.os.Os.stdout));
        var _ip:stdgo.net.Net.IP = new stdgo.net.Net.IP(0, 0);
        _fs.textVar(Go.asInterface((Go.setRef(_ip) : Ref<stdgo.net.Net.IP>)), ("ip" : GoString), Go.asInterface(stdgo.net.Net.ipv4((192 : GoUInt8), (168 : GoUInt8), (0 : GoUInt8), (100 : GoUInt8))), ("`IP address` to parse" : GoString));
        _fs.parse((new Slice<GoString>(0, 0, ("-ip" : GoString), ("127.0.0.1" : GoString)) : Slice<GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v}\n\n" : GoString), Go.toInterface(Go.asInterface(_ip)));
        _ip = null;
        _fs.parse((new Slice<GoString>(0, 0, ("-ip" : GoString), ("256.0.0.1" : GoString)) : Slice<GoString>));
        stdgo.fmt.Fmt.printf(("{ip: %v}\n\n" : GoString), Go.toInterface(Go.asInterface(_ip)));
    }
function exampleValue():Void {
        var _fs = stdgo.flag.Flag.newFlagSet(("ExampleValue" : GoString), (1 : stdgo.flag.Flag.ErrorHandling));
        _fs.var_(Go.asInterface((Go.setRef((new URLValue(_u) : URLValue)) : Ref<stdgo.flag_test.Flag_test.URLValue>)), ("url" : GoString), ("URL to parse" : GoString));
        _fs.parse((new Slice<GoString>(0, 0, ("-url" : GoString), ("https://golang.org/pkg/flag/" : GoString)) : Slice<GoString>));
        stdgo.fmt.Fmt.printf(("{scheme: %q, host: %q, path: %q}" : GoString), Go.toInterface(_u.scheme), Go.toInterface(_u.host), Go.toInterface(_u.path));
    }
private function _boolString(_s:GoString):GoString {
        if (_s == (("0" : GoString))) {
            return ("false" : GoString);
        };
        return ("true" : GoString);
    }
function testEverything(_t:Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(null);
        bool_(("test_bool" : GoString), false, ("bool value" : GoString));
        int_(("test_int" : GoString), (0 : GoInt), ("int value" : GoString));
        int64(("test_int64" : GoString), (0i64 : GoInt64), ("int64 value" : GoString));
        uint(("test_uint" : GoString), (0u32 : GoUInt), ("uint value" : GoString));
        uint64(("test_uint64" : GoString), (0i64 : GoUInt64), ("uint64 value" : GoString));
        string(("test_string" : GoString), ("0" : GoString), ("string value" : GoString));
        float64(("test_float64" : GoString), (0 : GoFloat64), ("float64 value" : GoString));
        duration(("test_duration" : GoString), (0i64 : stdgo.time.Time.Duration), ("time.Duration value" : GoString));
        func(("test_func" : GoString), ("func value" : GoString), function(_0:GoString):Error {
            return (null : Error);
        });
        var _m = (new GoObjectMap<GoString, Ref<stdgo.flag.Flag.Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.flag.Flag.Flag", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "usage", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.flag.Flag.Value", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, optional : false }, { name : "defValue", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }))) : GoMap<GoString, Ref<stdgo.flag.Flag.Flag>>);
        var _desired:GoString = ("0" : GoString);
        var _visitor = function(_f:Ref<Flag>):Void {
            if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == ("test_" : GoString))) {
                _m[_f.name] = _f;
                var _ok:Bool = false;
                if ((_f.value.string() : GoString) == (_desired)) {
                    _ok = true;
                } else if ((_f.name == ("test_bool" : GoString)) && ((_f.value.string() : GoString) == _boolString(_desired))) {
                    _ok = true;
                } else if ((_f.name == ("test_duration" : GoString)) && ((_f.value.string() : GoString) == (_desired + ("s" : GoString)))) {
                    _ok = true;
                } else if ((_f.name == ("test_func" : GoString)) && ((_f.value.string() : GoString) == Go.str())) {
                    _ok = true;
                };
                if (!_ok) {
                    _t.error(Go.toInterface(("Visit: bad value" : GoString)), Go.toInterface((_f.value.string() : GoString)), Go.toInterface(("for" : GoString)), Go.toInterface(_f.name));
                };
            };
        };
        visitAll(_visitor);
        if ((_m.length) != ((9 : GoInt))) {
            _t.error(Go.toInterface(("VisitAll misses some flags" : GoString)));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        _m = (new GoObjectMap<GoString, Ref<stdgo.flag.Flag.Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.flag.Flag.Flag", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "usage", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.flag.Flag.Value", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }) }, optional : false }, { name : "defValue", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, optional : false }]), false, { get : () -> null }) }) }))) : GoMap<GoString, Ref<stdgo.flag.Flag.Flag>>);
        visit(_visitor);
        if ((_m.length) != ((0 : GoInt))) {
            _t.errorf(("Visit sees unset flags" : GoString));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        set(("test_bool" : GoString), ("true" : GoString));
        set(("test_int" : GoString), ("1" : GoString));
        set(("test_int64" : GoString), ("1" : GoString));
        set(("test_uint" : GoString), ("1" : GoString));
        set(("test_uint64" : GoString), ("1" : GoString));
        set(("test_string" : GoString), ("1" : GoString));
        set(("test_float64" : GoString), ("1" : GoString));
        set(("test_duration" : GoString), ("1s" : GoString));
        set(("test_func" : GoString), ("1" : GoString));
        _desired = ("1" : GoString);
        visit(_visitor);
        if ((_m.length) != ((9 : GoInt))) {
            _t.error(Go.toInterface(("Visit fails after set" : GoString)));
            for (_k => _v in _m) {
                _t.log(Go.toInterface(_k), Go.toInterface((_v : stdgo.flag.Flag.Flag)));
            };
        };
        var _flagNames:Slice<GoString> = (null : Slice<GoString>);
        visit(function(_f:Ref<Flag>):Void {
            _flagNames = _flagNames.__appendref__(_f.name);
        });
        if (!stdgo.sort.Sort.stringsAreSorted(_flagNames)) {
            _t.errorf(("flag names not sorted: %v" : GoString), Go.toInterface(_flagNames));
        };
    }
function testGet(_t:Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(null);
        bool_(("test_bool" : GoString), true, ("bool value" : GoString));
        int_(("test_int" : GoString), (1 : GoInt), ("int value" : GoString));
        int64(("test_int64" : GoString), (2i64 : GoInt64), ("int64 value" : GoString));
        uint(("test_uint" : GoString), (3u32 : GoUInt), ("uint value" : GoString));
        uint64(("test_uint64" : GoString), (4i64 : GoUInt64), ("uint64 value" : GoString));
        string(("test_string" : GoString), ("5" : GoString), ("string value" : GoString));
        float64(("test_float64" : GoString), (6 : GoFloat64), ("float64 value" : GoString));
        duration(("test_duration" : GoString), (7i64 : stdgo.time.Time.Duration), ("time.Duration value" : GoString));
        var _visitor = function(_f:Ref<Flag>):Void {
            if ((_f.name.length > (5 : GoInt)) && ((_f.name.__slice__((0 : GoInt), (5 : GoInt)) : GoString) == ("test_" : GoString))) {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_f.value) : Getter)) : Getter), ok : true };
                } catch(_) {
                    { value : (null : stdgo.flag.Flag.Getter), ok : false };
                }, _g = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    _t.errorf(("Visit: value does not satisfy Getter: %T" : GoString), Go.toInterface(_f.value));
                    return;
                };
                {
                    final __value__ = _f.name;
                    if (__value__ == (("test_bool" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(true));
                    } else if (__value__ == (("test_int" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(((1 : GoInt) : GoInt)));
                    } else if (__value__ == (("test_int64" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(((2i64 : GoInt64) : GoInt64)));
                    } else if (__value__ == (("test_uint" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(((3u32 : GoUInt) : GoUInt)));
                    } else if (__value__ == (("test_uint64" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(((4i64 : GoUInt64) : GoUInt64)));
                    } else if (__value__ == (("test_string" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(("5" : GoString)));
                    } else if (__value__ == (("test_float64" : GoString))) {
                        _ok = _g.get() == (Go.toInterface((6 : GoFloat64)));
                    } else if (__value__ == (("test_duration" : GoString))) {
                        _ok = _g.get() == (Go.toInterface(Go.asInterface((7i64 : stdgo.time.Time.Duration))));
                    };
                };
                if (!_ok) {
                    _t.errorf(("Visit: bad value %T(%v) for %s" : GoString), _g.get(), _g.get(), Go.toInterface(_f.name));
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
        if (commandLine.parse((new Slice<GoString>(0, 0, ("-x" : GoString)) : Slice<GoString>)) == null) {
            _t.error(Go.toInterface(("parse did not fail for unknown flag" : GoString)));
        };
        if (!_called) {
            _t.error(Go.toInterface(("did not call Usage for unknown flag" : GoString)));
        };
    }
private function _testParse(_f:Ref<FlagSet>, _t:Ref<stdgo.testing.Testing.T>):Void {
        if (_f.parsed()) {
            _t.error(Go.toInterface(("f.Parse() = true before Parse" : GoString)));
        };
        var _boolFlag = _f.bool_(("bool" : GoString), false, ("bool value" : GoString));
        var _bool2Flag = _f.bool_(("bool2" : GoString), false, ("bool2 value" : GoString));
        var _intFlag = _f.int_(("int" : GoString), (0 : GoInt), ("int value" : GoString));
        var _int64Flag = _f.int64(("int64" : GoString), (0i64 : GoInt64), ("int64 value" : GoString));
        var _uintFlag = _f.uint(("uint" : GoString), (0u32 : GoUInt), ("uint value" : GoString));
        var _uint64Flag = _f.uint64(("uint64" : GoString), (0i64 : GoUInt64), ("uint64 value" : GoString));
        var _stringFlag = _f.string(("string" : GoString), ("0" : GoString), ("string value" : GoString));
        var _float64Flag = _f.float64(("float64" : GoString), (0 : GoFloat64), ("float64 value" : GoString));
        var _durationFlag = _f.duration(("duration" : GoString), (5000000000i64 : stdgo.time.Time.Duration), ("time.Duration value" : GoString));
        var _extra:GoString = ("one-extra-argument" : GoString);
        var _args = (new Slice<GoString>(
0,
0,
("-bool" : GoString),
("-bool2=true" : GoString),
("--int" : GoString),
("22" : GoString),
("--int64" : GoString),
("0x23" : GoString),
("-uint" : GoString),
("24" : GoString),
("--uint64" : GoString),
("25" : GoString),
("-string" : GoString),
("hello" : GoString),
("-float64" : GoString),
("2718e28" : GoString),
("-duration" : GoString),
("2m" : GoString),
_extra) : Slice<GoString>);
        {
            var _err:Error = _f.parse(_args);
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
        if (!_f.parsed()) {
            _t.error(Go.toInterface(("f.Parse() = false after Parse" : GoString)));
        };
        if (_boolFlag.value != (true)) {
            _t.error(Go.toInterface(("bool flag should be true, is " : GoString)), Go.toInterface(_boolFlag.value));
        };
        if (_bool2Flag.value != (true)) {
            _t.error(Go.toInterface(("bool2 flag should be true, is " : GoString)), Go.toInterface(_bool2Flag.value));
        };
        if (_intFlag.value != ((22 : GoInt))) {
            _t.error(Go.toInterface(("int flag should be 22, is " : GoString)), Go.toInterface(_intFlag.value));
        };
        if (_int64Flag.value != ((35i64 : GoInt64))) {
            _t.error(Go.toInterface(("int64 flag should be 0x23, is " : GoString)), Go.toInterface(_int64Flag.value));
        };
        if (_uintFlag.value != ((24u32 : GoUInt))) {
            _t.error(Go.toInterface(("uint flag should be 24, is " : GoString)), Go.toInterface(_uintFlag.value));
        };
        if (_uint64Flag.value != ((25i64 : GoUInt64))) {
            _t.error(Go.toInterface(("uint64 flag should be 25, is " : GoString)), Go.toInterface(_uint64Flag.value));
        };
        if (_stringFlag.value != (("hello" : GoString))) {
            _t.error(Go.toInterface(("string flag should be `hello`, is " : GoString)), Go.toInterface(_stringFlag.value));
        };
        if (_float64Flag.value != (2.718e+31 : GoFloat64)) {
            _t.error(Go.toInterface(("float64 flag should be 2718e28, is " : GoString)), Go.toInterface(_float64Flag.value));
        };
        if (_durationFlag.value != ((120000000000i64 : stdgo.time.Time.Duration))) {
            _t.error(Go.toInterface(("duration flag should be 2m, is " : GoString)), Go.toInterface(Go.asInterface(_durationFlag.value)));
        };
        if ((_f.args().length) != ((1 : GoInt))) {
            _t.error(Go.toInterface(("expected one argument, got" : GoString)), Go.toInterface((_f.args().length)));
        } else if (_f.args()[(0 : GoInt)] != (_extra)) {
            _t.errorf(("expected argument %q got %q" : GoString), Go.toInterface(_extra), Go.toInterface(_f.args()[(0 : GoInt)]));
        };
    }
function testParse(_t:Ref<stdgo.testing.Testing.T>):Void {
        resetForTesting(function():Void {
            _t.error(Go.toInterface(("bad parse" : GoString)));
        });
        _testParse(commandLine, _t);
    }
function testFlagSetParse(_t:Ref<stdgo.testing.Testing.T>):Void {
        _testParse(newFlagSet(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling)), _t);
    }
function testUserDefined(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
        _flags.var_(Go.asInterface((Go.setRef(_v) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("v" : GoString), ("usage" : GoString));
        {
            var _err:Error = _flags.parse((new Slice<GoString>(0, 0, ("-v" : GoString), ("1" : GoString), ("-v" : GoString), ("2" : GoString), ("-v=3" : GoString)) : Slice<GoString>));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((_v.length) != ((3 : GoInt))) {
            _t.fatal(Go.toInterface(("expected 3 args; got " : GoString)), Go.toInterface((_v.length)));
        };
        var _expect:GoString = ("[1 2 3]" : GoString);
        if ((_v.string() : GoString) != (_expect)) {
            _t.errorf(("expected value %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface((_v.string() : GoString)));
        };
    }
function testUserDefinedFunc(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flags = newFlagSet(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _ss:Slice<GoString> = (null : Slice<GoString>);
        _flags.func(("v" : GoString), ("usage" : GoString), function(_s:GoString):Error {
            _ss = _ss.__appendref__(_s);
            return (null : Error);
        });
        {
            var _err:Error = _flags.parse((new Slice<GoString>(0, 0, ("-v" : GoString), ("1" : GoString), ("-v" : GoString), ("2" : GoString), ("-v=3" : GoString)) : Slice<GoString>));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        if ((_ss.length) != ((3 : GoInt))) {
            _t.fatal(Go.toInterface(("expected 3 args; got " : GoString)), Go.toInterface((_ss.length)));
        };
        var _expect:GoString = ("[1 2 3]" : GoString);
        {
            var _got:GoString = stdgo.fmt.Fmt.sprint(Go.toInterface(_ss));
            if (_got != (_expect)) {
                _t.errorf(("expected value %q got %q" : GoString), Go.toInterface(_expect), Go.toInterface(_got));
            };
        };
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _flags.setOutput(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
        _flags.parse((new Slice<GoString>(0, 0, ("-h" : GoString)) : Slice<GoString>));
        {
            var _usage:GoString = (_buf.string() : GoString);
            if (!stdgo.strings.Strings.contains(_usage, ("usage" : GoString))) {
                _t.errorf(("usage string not included: %q" : GoString), Go.toInterface(_usage));
            };
        };
        _flags = newFlagSet(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        _flags.func(("v" : GoString), ("usage" : GoString), function(_s:GoString):Error {
            return stdgo.fmt.Fmt.errorf(("test error" : GoString));
        });
        {
            var _err:Error = _flags.parse((null : Slice<GoString>));
            if (_err != null) {
                _t.error(Go.toInterface(_err));
            };
        };
        {
            var _err:Error = _flags.parse((new Slice<GoString>(0, 0, ("-v" : GoString), ("1" : GoString)) : Slice<GoString>));
            if (_err == null) {
                _t.error(Go.toInterface(("expected error; got none" : GoString)));
            } else {
                var _errMsg:GoString = _err.error();
                if (!stdgo.strings.Strings.contains(_errMsg, ("test error" : GoString))) {
                    _t.errorf(("error should contain \"test error\"; got %q" : GoString), Go.toInterface(_errMsg));
                };
            };
        };
    }
function testUserDefinedForCommandLine(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _result:GoString = ("" : GoString);
        resetForTesting(function():Void {
            _result = ("HELP" : GoString);
        });
        usage();
        if (_result != (("HELP" : GoString))) {
            _t.fatalf(("got %q; expected %q" : GoString), Go.toInterface(_result), Go.toInterface(("HELP" : GoString)));
        };
    }
function testUserDefinedBool(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.setOutput(stdgo.io.Io.discard);
        var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
        var _err:Error = (null : Error);
        _flags.var_(Go.asInterface((Go.setRef(_b) : Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>)), ("b" : GoString), ("usage" : GoString));
        {
            _err = _flags.parse((new Slice<GoString>(0, 0, ("-b" : GoString), ("-b" : GoString), ("-b" : GoString), ("-b=true" : GoString), ("-b=false" : GoString), ("-b" : GoString), ("barg" : GoString), ("-b" : GoString)) : Slice<GoString>));
            if (_err != null) {
                if (_b._count < (4 : GoInt)) {
                    _t.error(Go.toInterface(_err));
                };
            };
        };
        if (_b._count != ((4 : GoInt))) {
            _t.errorf(("want: %d; got: %d" : GoString), Go.toInterface((4 : GoInt)), Go.toInterface(_b._count));
        };
        if (_err == null) {
            _t.error(Go.toInterface(("expected error; got none" : GoString)));
        };
    }
function testUserDefinedBoolUsage(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        _flags.init(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        _flags.setOutput(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)));
        var _b:T_boolFlagVar = ({} : stdgo.flag_test.Flag_test.T_boolFlagVar);
        _flags.var_(Go.asInterface((Go.setRef(_b) : Ref<stdgo.flag_test.Flag_test.T_boolFlagVar>)), ("b" : GoString), ("X" : GoString));
        _b._count = (0 : GoInt);
        _flags.printDefaults();
        var _got:GoString = (_buf.string() : GoString);
        var _want:GoString = ("  -b\tX\n" : GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : GoString), Go.toInterface(_want), Go.toInterface(_got));
        };
        _b._count = (4 : GoInt);
        _flags.printDefaults();
        _got = (_buf.string() : GoString);
        _want = ("  -b\tX\n  -b value\n    \tX\n" : GoString);
        if (_got != (_want)) {
            _t.errorf(("false: want %q; got %q" : GoString), Go.toInterface(_want), Go.toInterface(_got));
        };
    }
function testSetOutput(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _flags:FlagSet = ({} : stdgo.flag.Flag.FlagSet);
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _flags.setOutput(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
        _flags.init(("test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _flags.parse((new Slice<GoString>(0, 0, ("-unknown" : GoString)) : Slice<GoString>));
        {
            var _out:GoString = (_buf.string() : GoString);
            if (!stdgo.strings.Strings.contains(_out, ("-unknown" : GoString))) {
                _t.logf(("expected output mentioning unknown; got %q" : GoString), Go.toInterface(_out));
            };
        };
    }
/**
    // This tests that one can reset the flags. This still works but not well, and is
    // superseded by FlagSet.
**/
function testChangingArgs(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(function():Void {
                _t.fatal(Go.toInterface(("bad parse" : GoString)));
            });
            var _oldArgs = stdgo.os.Os.args;
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.os.Os.args = _oldArgs;
                };
                a();
            });
            stdgo.os.Os.args = (new Slice<GoString>(0, 0, ("cmd" : GoString), ("-before" : GoString), ("subcmd" : GoString), ("-after" : GoString), ("args" : GoString)) : Slice<GoString>);
            var _before = bool_(("before" : GoString), false, Go.str());
            {
                var _err:Error = commandLine.parse((stdgo.os.Os.args.__slice__((1 : GoInt)) : Slice<GoString>));
                if (_err != null) {
                    _t.fatal(Go.toInterface(_err));
                };
            };
            var _cmd:GoString = arg((0 : GoInt));
            stdgo.os.Os.args = args();
            var _after = bool_(("after" : GoString), false, Go.str());
            parse();
            var _args = args();
            if ((((!_before.value || (_cmd != ("subcmd" : GoString))) || !_after.value) || (_args.length != (1 : GoInt))) || (_args[(0 : GoInt)] != ("args" : GoString))) {
                _t.fatalf(("expected true subcmd true [args] got %v %v %v %v" : GoString), Go.toInterface(_before.value), Go.toInterface(_cmd), Go.toInterface(_after.value), Go.toInterface(_args));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    // Test that -help invokes the usage message and returns ErrHelp.
**/
function testHelp(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _helpCalled:Bool = false;
        var _fs = newFlagSet(("help test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        _fs.usage = function():Void {
            _helpCalled = true;
        };
        var _flag:Bool = false;
        _fs.boolVar(Go.pointer(_flag), ("flag" : GoString), false, ("regular flag" : GoString));
        var _err:Error = _fs.parse((new Slice<GoString>(0, 0, ("-flag=true" : GoString)) : Slice<GoString>));
        if (_err != null) {
            _t.fatal(Go.toInterface(("expected no error; got " : GoString)), Go.toInterface(_err));
        };
        if (!_flag) {
            _t.error(Go.toInterface(("flag was not set by -flag" : GoString)));
        };
        if (_helpCalled) {
            _t.error(Go.toInterface(("help called for regular flag" : GoString)));
            _helpCalled = false;
        };
        _err = _fs.parse((new Slice<GoString>(0, 0, ("-help" : GoString)) : Slice<GoString>));
        if (_err == null) {
            _t.fatal(Go.toInterface(("error expected" : GoString)));
        };
        if (Go.toInterface(_err) != (Go.toInterface(errHelp))) {
            _t.fatal(Go.toInterface(("expected ErrHelp; got " : GoString)), Go.toInterface(_err));
        };
        if (!_helpCalled) {
            _t.fatal(Go.toInterface(("help was not called" : GoString)));
        };
        var _help:Bool = false;
        _fs.boolVar(Go.pointer(_help), ("help" : GoString), false, ("help flag" : GoString));
        _helpCalled = false;
        _err = _fs.parse((new Slice<GoString>(0, 0, ("-help" : GoString)) : Slice<GoString>));
        if (_err != null) {
            _t.fatal(Go.toInterface(("expected no error for defined -help; got " : GoString)), Go.toInterface(_err));
        };
        if (_helpCalled) {
            _t.fatal(Go.toInterface(("help was called; should not have been for defined help flag" : GoString)));
        };
    }
function testPrintDefaults(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _fs = newFlagSet(("print defaults test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
        var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _fs.setOutput(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
        _fs.bool_(("A" : GoString), false, ("for bootstrapping, allow \'any\' type" : GoString));
        _fs.bool_(("Alongflagname" : GoString), false, ("disable bounds checking" : GoString));
        _fs.bool_(("C" : GoString), true, ("a boolean defaulting to true" : GoString));
        _fs.string(("D" : GoString), Go.str(), ("set relative `path` for local imports" : GoString));
        _fs.string(("E" : GoString), ("0" : GoString), ("issue 23543" : GoString));
        _fs.float64(("F" : GoString), (2.7 : GoFloat64), ("a non-zero `number`" : GoString));
        _fs.float64(("G" : GoString), (0 : GoFloat64), ("a float that defaults to zero" : GoString));
        _fs.string(("M" : GoString), Go.str(), ("a multiline\nhelp\nstring" : GoString));
        _fs.int_(("N" : GoString), (27 : GoInt), ("a non-zero int" : GoString));
        _fs.bool_(("O" : GoString), true, ("a flag\nmultiline help string" : GoString));
        _fs.var_(Go.asInterface((Go.setRef((new Slice<GoString>(0, 0, ("a" : GoString), ("b" : GoString)) : stdgo.flag_test.Flag_test.T_flagVar)) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("V" : GoString), ("a `list` of strings" : GoString));
        _fs.int_(("Z" : GoString), (0 : GoInt), ("an int that defaults to zero" : GoString));
        _fs.var_(Go.asInterface((Go.setRef((new T_zeroPanicker(true, Go.str()) : T_zeroPanicker)) : Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)), ("ZP0" : GoString), ("a flag whose String method panics when it is zero" : GoString));
        _fs.var_(Go.asInterface((Go.setRef((new T_zeroPanicker(true, ("something" : GoString)) : T_zeroPanicker)) : Ref<stdgo.flag_test.Flag_test.T_zeroPanicker>)), ("ZP1" : GoString), ("a flag whose String method panics when it is zero" : GoString));
        _fs.duration(("maxT" : GoString), (0i64 : stdgo.time.Time.Duration), ("set `timeout` for dial" : GoString));
        _fs.printDefaults();
        var _got:GoString = (_buf.string() : GoString);
        if (_got != (("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : GoString))) {
            _t.errorf(("got:\n%q\nwant:\n%q" : GoString), Go.toInterface(_got), Go.toInterface(("  -A\tfor bootstrapping, allow \'any\' type\n  -Alongflagname\n    \tdisable bounds checking\n  -C\ta boolean defaulting to true (default true)\n  -D path\n    \tset relative path for local imports\n  -E string\n    \tissue 23543 (default \"0\")\n  -F number\n    \ta non-zero number (default 2.7)\n  -G float\n    \ta float that defaults to zero\n  -M string\n    \ta multiline\n    \thelp\n    \tstring\n  -N int\n    \ta non-zero int (default 27)\n  -O\ta flag\n    \tmultiline help string (default true)\n  -V list\n    \ta list of strings (default [a b])\n  -Z int\n    \tan int that defaults to zero\n  -ZP0 value\n    \ta flag whose String method panics when it is zero\n  -ZP1 value\n    \ta flag whose String method panics when it is zero\n  -maxT timeout\n    \tset timeout for dial\n\npanic calling String method on zero flag_test.zeroPanicker for flag ZP0: panic!\npanic calling String method on zero flag_test.zeroPanicker for flag ZP1: panic!\n" : GoString)));
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
        int_(("i" : GoString), (0 : GoInt), Go.str());
        uint(("u" : GoString), (0u32 : GoUInt), Go.str());
        {
            var _err:Error = set(("i" : GoString), ("2147483648" : GoString));
            if (_err == null) {
                _t.error(Go.toInterface(("unexpected success setting Int" : GoString)));
            };
        };
        {
            var _err:Error = set(("u" : GoString), ("4294967296" : GoString));
            if (_err == null) {
                _t.error(Go.toInterface(("unexpected success setting Uint" : GoString)));
            };
        };
    }
/**
    // Issue 20998: Usage should respect CommandLine.output.
**/
function testUsageOutput(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            resetForTesting(defaultUsage);
            var _buf:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            commandLine.setOutput(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.strings.Strings.Builder>)));
            {
                var _a0 = stdgo.os.Os.args;
                __deferstack__.unshift(() -> {
                    var a = function(_old:Slice<GoString>):Void {
                        stdgo.os.Os.args = _old;
                    };
                    a(_a0);
                });
            };
            stdgo.os.Os.args = (new Slice<GoString>(0, 0, ("app" : GoString), ("-i=1" : GoString), ("-unknown" : GoString)) : Slice<GoString>);
            parse();
            {};
            {
                var _got:GoString = (_buf.string() : GoString);
                if (_got != (("flag provided but not defined: -i\nUsage of app:\n" : GoString))) {
                    _t.errorf(("output = %q; want %q" : GoString), Go.toInterface(_got), Go.toInterface(("flag provided but not defined: -i\nUsage of app:\n" : GoString)));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testGetters(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _expectedName:GoString = ("flag set" : GoString);
        var _expectedErrorHandling:stdgo.flag.Flag.ErrorHandling = (0 : stdgo.flag.Flag.ErrorHandling);
        var _expectedOutput:stdgo.io.Io.Writer = Go.asInterface(stdgo.os.Os.stderr);
        var _fs = newFlagSet(_expectedName, _expectedErrorHandling);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : GoString), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
        };
        if (Go.toInterface(_fs.output()) != (Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %#v, expected %#v" : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
        };
        _expectedName = ("gopher" : GoString);
        _expectedErrorHandling = (1 : stdgo.flag.Flag.ErrorHandling);
        _expectedOutput = Go.asInterface(stdgo.os.Os.stdout);
        _fs.init(_expectedName, _expectedErrorHandling);
        _fs.setOutput(_expectedOutput);
        if (_fs.name() != (_expectedName)) {
            _t.errorf(("unexpected name: got %s, expected %s" : GoString), Go.toInterface(_fs.name()), Go.toInterface(_expectedName));
        };
        if (_fs.errorHandling() != (_expectedErrorHandling)) {
            _t.errorf(("unexpected ErrorHandling: got %d, expected %d" : GoString), Go.toInterface(_fs.errorHandling()), Go.toInterface(_expectedErrorHandling));
        };
        if (Go.toInterface(_fs.output()) != (Go.toInterface(_expectedOutput))) {
            _t.errorf(("unexpected output: got %v, expected %v" : GoString), Go.toInterface(_fs.output()), Go.toInterface(_expectedOutput));
        };
    }
function testParseError(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _typ in (new Slice<GoString>(0, 0, ("bool" : GoString), ("int" : GoString), ("int64" : GoString), ("uint" : GoString), ("uint64" : GoString), ("float64" : GoString), ("duration" : GoString)) : Slice<GoString>)) {
            var _fs = newFlagSet(("parse error test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.bool_(("bool" : GoString), false, Go.str());
            _fs.int_(("int" : GoString), (0 : GoInt), Go.str());
            _fs.int64(("int64" : GoString), (0i64 : GoInt64), Go.str());
            _fs.uint(("uint" : GoString), (0u32 : GoUInt), Go.str());
            _fs.uint64(("uint64" : GoString), (0i64 : GoUInt64), Go.str());
            _fs.float64(("float64" : GoString), (0 : GoFloat64), Go.str());
            _fs.duration(("duration" : GoString), (0i64 : stdgo.time.Time.Duration), Go.str());
            var _args = (new Slice<GoString>(0, 0, (("-" : GoString) + _typ) + ("=x" : GoString)) : Slice<GoString>);
            var _err:Error = _fs.parse(_args);
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : GoString), Go.toInterface(_args), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ("invalid" : GoString)) || !stdgo.strings.Strings.contains(_err.error(), ("parse error" : GoString))) {
                _t.errorf(("Parse(%q)=%v; expected parse error" : GoString), Go.toInterface(_args), Go.toInterface(_err));
            };
        };
    }
function testRangeError(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _bad = (new Slice<GoString>(0, 0, ("-int=123456789012345678901" : GoString), ("-int64=123456789012345678901" : GoString), ("-uint=123456789012345678901" : GoString), ("-uint64=123456789012345678901" : GoString), ("-float64=1e1000" : GoString)) : Slice<GoString>);
        for (__0 => _arg in _bad) {
            var _fs = newFlagSet(("parse error test" : GoString), (0 : stdgo.flag.Flag.ErrorHandling));
            _fs.setOutput(stdgo.io.Io.discard);
            _fs.int_(("int" : GoString), (0 : GoInt), Go.str());
            _fs.int64(("int64" : GoString), (0i64 : GoInt64), Go.str());
            _fs.uint(("uint" : GoString), (0u32 : GoUInt), Go.str());
            _fs.uint64(("uint64" : GoString), (0i64 : GoUInt64), Go.str());
            _fs.float64(("float64" : GoString), (0 : GoFloat64), Go.str());
            var _err:Error = _fs.parse((new Slice<GoString>(0, 0, _arg) : Slice<GoString>));
            if (_err == null) {
                _t.errorf(("Parse(%q)=%v; expected range error" : GoString), Go.toInterface(_arg), Go.toInterface(_err));
                continue;
            };
            if (!stdgo.strings.Strings.contains(_err.error(), ("invalid" : GoString)) || !stdgo.strings.Strings.contains(_err.error(), ("value out of range" : GoString))) {
                _t.errorf(("Parse(%q)=%v; expected range error" : GoString), Go.toInterface(_arg), Go.toInterface(_err));
            };
        };
    }
function testExitCode(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
        var _magic:GoInt = (123 : GoInt);
        if (stdgo.os.Os.getenv(("GO_CHILD_FLAG" : GoString)) != (Go.str())) {
            var _fs = newFlagSet(("test" : GoString), (1 : stdgo.flag.Flag.ErrorHandling));
            if (stdgo.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : GoString)) != (Go.str())) {
                var _b:Bool = false;
                _fs.boolVar(Go.pointer(_b), stdgo.os.Os.getenv(("GO_CHILD_FLAG_HANDLE" : GoString)), false, Go.str());
            };
            _fs.parse((new Slice<GoString>(0, 0, stdgo.os.Os.getenv(("GO_CHILD_FLAG" : GoString))) : Slice<GoString>));
            Sys.exit(_magic);
        };
        var _tests = (new Slice<T__struct_0>(0, 0, ({ _flag : ("-h" : GoString), _flagHandle : ("" : GoString), _expectExit : (0 : GoInt) } : T__struct_0), ({ _flag : ("-help" : GoString), _flagHandle : ("" : GoString), _expectExit : (0 : GoInt) } : T__struct_0), ({ _flag : ("-undefined" : GoString), _flagHandle : ("" : GoString), _expectExit : (2 : GoInt) } : T__struct_0), ({ _flag : ("-h" : GoString), _flagHandle : ("h" : GoString), _expectExit : _magic } : T__struct_0), ({ _flag : ("-help" : GoString), _flagHandle : ("help" : GoString), _expectExit : _magic } : T__struct_0)) : Slice<T__struct_0>);
        for (__0 => _test in _tests) {
            var _cmd = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], ("-test.run=TestExitCode" : GoString));
            _cmd.env = (stdgo.os.Os.environ().__append__(("GO_CHILD_FLAG=" : GoString) + _test._flag, ("GO_CHILD_FLAG_HANDLE=" : GoString) + _test._flagHandle));
            _cmd.run();
            var _got:GoInt = _cmd.processState.exitCode();
            if (false && (_test._expectExit != (0 : GoInt))) {
                _test._expectExit = (1 : GoInt);
            };
            if (_got != (_test._expectExit)) {
                _t.errorf(("unexpected exit code for test case %+v \n: got %d, expect %d" : GoString), Go.toInterface(Go.asInterface(_test)), Go.toInterface(_got), Go.toInterface(_test._expectExit));
            };
        };
    }
private function _mustPanic(_t:Ref<stdgo.testing.Testing.T>, _testName:GoString, _expected:GoString, _f:() -> Void):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _t.helper();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        final __type__ = ({
                            final r = Go.recover_exception;
                            Go.recover_exception = null;
                            r;
                        });
                        if (__type__ == null) {
                            var _msg:AnyInterface = __type__ == null ? (null : AnyInterface) : __type__.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but did not panic" : GoString), Go.toInterface(_testName), Go.toInterface(_expected));
                        } else if (Go.typeEquals((__type__ : GoString))) {
                            var _msg:GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                            if (_msg != (_expected)) {
                                _t.errorf(("%s\n: expected panic(%q), but got panic(%q)" : GoString), Go.toInterface(_testName), Go.toInterface(_expected), Go.toInterface(_msg));
                            };
                        } else {
                            var _msg:AnyInterface = __type__?.__underlying__();
                            _t.errorf(("%s\n: expected panic(%q), but got panic(%T%v)" : GoString), Go.toInterface(_testName), Go.toInterface(_expected), _msg, _msg);
                        };
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testInvalidFlags(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_1>(0, 0, ({ _flag : ("-foo" : GoString), _errorMsg : ("flag \"-foo\" begins with -" : GoString) } : T__struct_1), ({ _flag : ("foo=bar" : GoString), _errorMsg : ("flag \"foo=bar\" contains =" : GoString) } : T__struct_1)) : Slice<T__struct_1>);
        for (__0 => _test in _tests) {
            var _testName:GoString = stdgo.fmt.Fmt.sprintf(("FlagSet.Var(&v, %q, \"\")" : GoString), Go.toInterface(_test._flag));
            var _fs = newFlagSet(Go.str(), (0 : stdgo.flag.Flag.ErrorHandling));
            var _buf = (Go.setRef((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder)) : Ref<stdgo.strings.Strings.Builder>);
            _fs.setOutput(Go.asInterface(_buf));
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
                _fs.var_(Go.asInterface((Go.setRef(_v) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), _test._flag, Go.str());
            });
            {
                var _msg:GoString = _test._errorMsg + ("\n" : GoString);
                if (_msg != ((_buf.string() : GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : GoString), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(Go.asInterface(_buf)));
                };
            };
        };
    }
function testRedefinedFlags(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new Slice<T__struct_2>(0, 0, ({ _flagSetName : Go.str(), _errorMsg : ("flag redefined: foo" : GoString) } : T__struct_2), ({ _flagSetName : ("fs" : GoString), _errorMsg : ("fs flag redefined: foo" : GoString) } : T__struct_2)) : Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            var _testName:GoString = stdgo.fmt.Fmt.sprintf(("flag redefined in FlagSet(%q)" : GoString), Go.toInterface(_test._flagSetName));
            var _fs = newFlagSet(_test._flagSetName, (0 : stdgo.flag.Flag.ErrorHandling));
            var _buf = (Go.setRef((new stdgo.strings.Strings.Builder() : stdgo.strings.Strings.Builder)) : Ref<stdgo.strings.Strings.Builder>);
            _fs.setOutput(Go.asInterface(_buf));
            var _v:T_flagVar = new stdgo.flag_test.Flag_test.T_flagVar(0, 0);
            _fs.var_(Go.asInterface((Go.setRef(_v) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("foo" : GoString), Go.str());
            _mustPanic(_t, _testName, _test._errorMsg, function():Void {
                _fs.var_(Go.asInterface((Go.setRef(_v) : Ref<stdgo.flag_test.Flag_test.T_flagVar>)), ("foo" : GoString), Go.str());
            });
            {
                var _msg:GoString = _test._errorMsg + ("\n" : GoString);
                if (_msg != ((_buf.string() : GoString))) {
                    _t.errorf(("%s\n: unexpected output: expected %q, bug got %q" : GoString), Go.toInterface(_testName), Go.toInterface(_msg), Go.toInterface(Go.asInterface(_buf)));
                };
            };
        };
    }
@:keep var _ = {
        try {
            {};
            stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), ("gopher_type" : GoString), ("pocket" : GoString), ("the variety of gopher" : GoString));
            stdgo.flag.Flag.stringVar(Go.pointer(_gopherType), ("g" : GoString), ("pocket" : GoString), ("the variety of gopher (shorthand)" : GoString));
            stdgo.flag.Flag.var_(Go.asInterface((Go.setRef(_intervalFlag) : Ref<stdgo.flag_test.Flag_test.T_interval>)), ("deltaT" : GoString), ("comma-separated list of intervals to use between events" : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class URLValue_asInterface {
    @:keep
    public dynamic function set(_s:GoString):Error return __self__.value.set(_s);
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<URLValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.URLValue_asInterface) class URLValue_static_extension {
    @:keep
    static public function set( _v:URLValue, _s:GoString):Error {
        {
            var __tmp__ = stdgo.net.url.Url.parse(_s), _u:Ref<stdgo.net.url.Url.URL> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            } else {
                {
                    var __tmp__ = (_u : stdgo.net.url.Url.URL)?.__copy__();
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
    static public function string( _v:URLValue):GoString {
        if (_v.url != null && ((_v.url : Dynamic).__nil__ == null || !(_v.url : Dynamic).__nil__)) {
            return (_v.url.string() : GoString);
        };
        return Go.str();
    }
}
class T_boolFlagVar_asInterface {
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    @:keep
    public dynamic function set(_value:GoString):Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_boolFlagVar>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_boolFlagVar_asInterface) class T_boolFlagVar_static_extension {
    @:keep
    static public function isBoolFlag( _b:Ref<T_boolFlagVar>):Bool {
        return _b._count < (4 : GoInt);
    }
    @:keep
    static public function set( _b:Ref<T_boolFlagVar>, _value:GoString):Error {
        if (_value == (("true" : GoString))) {
            _b._count++;
        };
        return (null : Error);
    }
    @:keep
    static public function string( _b:Ref<T_boolFlagVar>):GoString {
        return stdgo.fmt.Fmt.sprintf(("%d" : GoString), Go.toInterface(_b._count));
    }
}
class T_zeroPanicker_asInterface {
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    @:keep
    public dynamic function set(_s:GoString):Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_zeroPanicker>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_zeroPanicker_asInterface) class T_zeroPanicker_static_extension {
    @:keep
    static public function string( _f:Ref<T_zeroPanicker>):GoString {
        if (!_f._dontPanic) {
            throw Go.toInterface(("panic!" : GoString));
        };
        return _f._v;
    }
    @:keep
    static public function set( _f:Ref<T_zeroPanicker>, _s:GoString):Error {
        _f._v = _s;
        return (null : Error);
    }
}
class T_interval_asInterface {
    /**
        // Set is the method to set the flag value, part of the flag.Value interface.
        // Set's argument is a string to be parsed to set the flag.
        // It's a comma-separated list, so we split it.
    **/
    @:keep
    public dynamic function set(_value:GoString):Error return __self__.value.set(_value);
    /**
        // String is the method to format the flag's value, part of the flag.Value interface.
        // The String method's output will be used in diagnostics.
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_interval>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_interval_asInterface) class T_interval_static_extension {
    /**
        // Set is the method to set the flag value, part of the flag.Value interface.
        // Set's argument is a string to be parsed to set the flag.
        // It's a comma-separated list, so we split it.
    **/
    @:keep
    static public function set( _i:Ref<T_interval>, _value:GoString):Error {
        if (((_i : stdgo.flag_test.Flag_test.T_interval).length) > (0 : GoInt)) {
            return stdgo.errors.Errors.new_(("interval flag already set" : GoString));
        };
        for (__0 => _dt in stdgo.strings.Strings.split(_value, ("," : GoString))) {
            var __tmp__ = stdgo.time.Time.parseDuration(_dt), _duration:stdgo.time.Time.Duration = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            _i.__setData__(((_i : stdgo.flag_test.Flag_test.T_interval).__append__(_duration)));
        };
        return (null : Error);
    }
    /**
        // String is the method to format the flag's value, part of the flag.Value interface.
        // The String method's output will be used in diagnostics.
    **/
    @:keep
    static public function string( _i:Ref<T_interval>):GoString {
        return stdgo.fmt.Fmt.sprint(Go.toInterface(Go.asInterface((_i : stdgo.flag_test.Flag_test.T_interval))));
    }
}
class T_flagVar_asInterface {
    @:keep
    public dynamic function set(_value:GoString):Error return __self__.value.set(_value);
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_flagVar>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag_test.Flag_test.T_flagVar_asInterface) class T_flagVar_static_extension {
    @:keep
    static public function set( _f:Ref<T_flagVar>, _value:GoString):Error {
        _f.__setData__(((_f : stdgo.flag_test.Flag_test.T_flagVar).__append__(_value)));
        return (null : Error);
    }
    @:keep
    static public function string( _f:Ref<T_flagVar>):GoString {
        return stdgo.fmt.Fmt.sprint(Go.toInterface(((_f : stdgo.flag_test.Flag_test.T_flagVar) : Slice<GoString>)));
    }
}
