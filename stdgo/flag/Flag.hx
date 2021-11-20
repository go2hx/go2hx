package stdgo.flag;
import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.StdGoTypes;
typedef T_boolFlag = StructType & {
    > Value,
    public function isBoolFlag():Bool;
};
typedef Value = StructType & {
    public function toString():GoString;
    public function set(arg0:GoString):Error;
};
typedef Getter = StructType & {
    > Value,
    public function get():AnyInterface;
};
@:named class T_boolValue {
    public function isBoolFlag():Bool {
        var _b = new Pointer(() -> new T_boolValue(this.__t__), __tmp__ -> new T_boolValue(this.__t__ = __tmp__.__t__));
        return true;
    }
    public function toString():GoString {
        var _b = new Pointer(() -> new T_boolValue(this.__t__), __tmp__ -> new T_boolValue(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.formatBool(_b.value.__t__);
    }
    public function get():AnyInterface {
        var _b = new Pointer(() -> new T_boolValue(this.__t__), __tmp__ -> new T_boolValue(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_b.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _b = new Pointer(() -> new T_boolValue(this.__t__), __tmp__ -> new T_boolValue(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = new T_boolValue(_v);
        return _err;
    }
    public var __t__ : Bool;
    public function new(?t:Bool) {
        __t__ = t == null ? false : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_boolValue(__t__);
}
@:named class T_intValue {
    public function toString():GoString {
        var _i = new Pointer(() -> new T_intValue(this.__t__), __tmp__ -> new T_intValue(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.itoa(_i.value.__t__);
    }
    public function get():AnyInterface {
        var _i = new Pointer(() -> new T_intValue(this.__t__), __tmp__ -> new T_intValue(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_i.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _i = new Pointer(() -> new T_intValue(this.__t__), __tmp__ -> new T_intValue(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), stdgo.strconv.Strconv.intSize), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = new T_intValue(_v);
        return _err;
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_intValue(__t__);
}
@:named class T_int64Value {
    public function toString():GoString {
        var _i = new Pointer(() -> new T_int64Value(this.__t__), __tmp__ -> new T_int64Value(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.formatInt(_i.value.__t__, ((10 : GoInt)));
    }
    public function get():AnyInterface {
        var _i = new Pointer(() -> new T_int64Value(this.__t__), __tmp__ -> new T_int64Value(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_i.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _i = new Pointer(() -> new T_int64Value(this.__t__), __tmp__ -> new T_int64Value(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = new T_int64Value(_v);
        return _err;
    }
    public var __t__ : GoInt64;
    public function new(?t:GoInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_int64Value(__t__);
}
@:named class T_uintValue {
    public function toString():GoString {
        var _i = new Pointer(() -> new T_uintValue(this.__t__), __tmp__ -> new T_uintValue(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.formatUint(_i.value.__t__, ((10 : GoInt)));
    }
    public function get():AnyInterface {
        var _i = new Pointer(() -> new T_uintValue(this.__t__), __tmp__ -> new T_uintValue(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_i.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _i = new Pointer(() -> new T_uintValue(this.__t__), __tmp__ -> new T_uintValue(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), stdgo.strconv.Strconv.intSize), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = new T_uintValue(_v);
        return _err;
    }
    public var __t__ : GoUInt;
    public function new(?t:GoUInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_uintValue(__t__);
}
@:named class T_uint64Value {
    public function toString():GoString {
        var _i = new Pointer(() -> new T_uint64Value(this.__t__), __tmp__ -> new T_uint64Value(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.formatUint(_i.value.__t__, ((10 : GoInt)));
    }
    public function get():AnyInterface {
        var _i = new Pointer(() -> new T_uint64Value(this.__t__), __tmp__ -> new T_uint64Value(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_i.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _i = new Pointer(() -> new T_uint64Value(this.__t__), __tmp__ -> new T_uint64Value(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = new T_uint64Value(_v);
        return _err;
    }
    public var __t__ : GoUInt64;
    public function new(?t:GoUInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_uint64Value(__t__);
}
@:named class T_stringValue {
    public function toString():GoString {
        var _s = new Pointer(() -> new T_stringValue(this.__t__), __tmp__ -> new T_stringValue(this.__t__ = __tmp__.__t__));
        return _s.value.__t__;
    }
    public function get():AnyInterface {
        var _s = new Pointer(() -> new T_stringValue(this.__t__), __tmp__ -> new T_stringValue(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_s.value.__t__);
    }
    public function set(_val:GoString):Error {
        var _s = new Pointer(() -> new T_stringValue(this.__t__), __tmp__ -> new T_stringValue(this.__t__ = __tmp__.__t__));
        _s.value = new T_stringValue(_val);
        return ((null : stdgo.Error));
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_stringValue(__t__);
}
@:named class T_float64Value {
    public function toString():GoString {
        var _f = new Pointer(() -> new T_float64Value(this.__t__), __tmp__ -> new T_float64Value(this.__t__ = __tmp__.__t__));
        return stdgo.strconv.Strconv.formatFloat(_f.value.__t__, (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((64 : GoInt)));
    }
    public function get():AnyInterface {
        var _f = new Pointer(() -> new T_float64Value(this.__t__), __tmp__ -> new T_float64Value(this.__t__ = __tmp__.__t__));
        return Go.toInterface(_f.value.__t__);
    }
    public function set(_s:GoString):Error {
        var _f = new Pointer(() -> new T_float64Value(this.__t__), __tmp__ -> new T_float64Value(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, ((64 : GoInt))), _v:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = new T_float64Value(_v);
        return _err;
    }
    public var __t__ : GoFloat64;
    public function new(?t:GoFloat64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_float64Value(__t__);
}
@:named class T_durationValue {
    public function toString():GoString {
        var _d = new Pointer(() -> new T_durationValue(this.__t__), __tmp__ -> new T_durationValue(this.__t__ = __tmp__.__t__));
        return new Pointer<stdgo.time.Time.Duration>(() -> new stdgo.time.Time.Duration(_d.value.__t__), v -> new stdgo.time.Time.Duration((_d.value = new T_durationValue(v.__t__)).__t__)).value.toString();
    }
    public function get():AnyInterface {
        var _d = new Pointer(() -> new T_durationValue(this.__t__), __tmp__ -> new T_durationValue(this.__t__ = __tmp__.__t__));
        return Go.toInterface(new stdgo.time.Time.Duration(_d.value.__t__));
    }
    public function set(_s:GoString):Error {
        var _d = new Pointer(() -> new T_durationValue(this.__t__), __tmp__ -> new T_durationValue(this.__t__ = __tmp__.__t__));
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = new T_durationValue(_v.__t__);
        return _err;
    }
    public var __t__ : GoInt64;
    public function new(?t:GoInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_durationValue(__t__);
}
@:named class T_funcValue {
    public function toString():GoString {
        var _f = this.__copy__();
        return "";
    }
    public function set(_s:GoString):Error {
        var _f = this.__copy__();
        return _f.__t__(_s);
    }
    public var __t__ : GoString -> stdgo.Error;
    public function new(?t:GoString -> stdgo.Error) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_funcValue(__t__);
}
@:named class ErrorHandling {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new ErrorHandling(__t__);
}
@:structInit class FlagSet {
    public function init(_name:GoString, _errorHandling:ErrorHandling):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value._name = _name;
        _f.value._errorHandling = _errorHandling;
    }
    public function parsed():Bool {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._parsed;
    }
    public function parse(_arguments:Slice<GoString>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value._parsed = true;
        _f.value._args = _arguments;
        while (true) {
            var __tmp__ = _f.value._parseOne(), _seen:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_seen) {
                continue;
            };
            if (_err == null) {
                break;
            };
            if (_f.value._errorHandling.__t__ == continueOnError.__t__) {
                return _err;
            } else if (_f.value._errorHandling.__t__ == exitOnError.__t__) {
                if (Go.toInterface(_err) == Go.toInterface(errHelp)) {
                    stdgo.os.Os.exit(((0 : GoInt)));
                };
                stdgo.os.Os.exit(((2 : GoInt)));
            } else if (_f.value._errorHandling.__t__ == panicOnError.__t__) {
                throw _err;
            };
        };
        return ((null : stdgo.Error));
    }
    public function _parseOne():{ var _0 : Bool; var _1 : Error; } {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._args.length == ((0 : GoInt))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _s:GoString = _f.value._args[((0 : GoInt))];
        if (_s.length < ((2 : GoInt)) || _s[((0 : GoInt))] != (("-".code : GoRune))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _numMinuses:GoInt = ((1 : GoInt));
        if (_s[((1 : GoInt))] == (("-".code : GoRune))) {
            _numMinuses++;
            if (_s.length == ((2 : GoInt))) {
                _f.value._args = _f.value._args.__slice__(((1 : GoInt)));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = _s.__slice__(_numMinuses);
        if (_name.length == ((0 : GoInt)) || _name[((0 : GoInt))] == (("-".code : GoRune)) || _name[((0 : GoInt))] == (("=".code : GoRune))) {
            return { _0 : false, _1 : _f.value._failf("bad flag syntax: %s", Go.toInterface(_s)) };
        };
        _f.value._args = _f.value._args.__slice__(((1 : GoInt)));
        var _hasValue:Bool = false;
        var _value:GoString = "";
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _name.length, _i++, {
                if (_name[_i] == (("=".code : GoRune))) {
                    _value = _name.__slice__(_i + ((1 : GoInt)));
                    _hasValue = true;
                    _name = _name.__slice__(((0 : GoInt)), _i);
                    break;
                };
            });
        };
        var _m:GoMap<GoString, Pointer<Flag>> = _f.value._formal;
        var __tmp__ = _m.exists(_name) ? { value : _m[_name], ok : true } : { value : _m.defaultValue(), ok : false }, _flag:Pointer<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (!_alreadythere) {
            if (_name == (("help" : GoString)) || _name == (("h" : GoString))) {
                _f.value._usage();
                return { _0 : false, _1 : errHelp };
            };
            return { _0 : false, _1 : _f.value._failf("flag provided but not defined: -%s", Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { value : ((_flag.value.value.__underlying__().value : T_boolFlag)), ok : true };
            } catch(_) {
                { value : ((null : T_boolFlag)), ok : false };
            }, _fv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _fv.isBoolFlag()) {
                if (_hasValue) {
                    {
                        var _err:stdgo.Error = _fv.set(_value);
                        if (_err != null) {
                            return { _0 : false, _1 : _f.value._failf("invalid boolean value %q for -%s: %v", Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _fv.set("true");
                        if (_err != null) {
                            return { _0 : false, _1 : _f.value._failf("invalid boolean flag %s: %v", Go.toInterface(_name), Go.toInterface(_err)) };
                        };
                    };
                };
            } else {
                if (!_hasValue && _f.value._args.length > ((0 : GoInt))) {
                    _hasValue = true;
                    {
                        final __tmp__0 = _f.value._args[((0 : GoInt))];
                        final __tmp__1 = _f.value._args.__slice__(((1 : GoInt)));
                        _value = __tmp__0;
                        _f.value._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : _f.value._failf("flag needs an argument: -%s", Go.toInterface(_name)) };
                };
                {
                    var _err:stdgo.Error = _flag.value.value.set(_value);
                    if (_err != null) {
                        return { _0 : false, _1 : _f.value._failf("invalid value %q for flag -%s: %v", Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f.value._actual == null || _f.value._actual.isNil()) {
            _f.value._actual = new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        _f.value._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    public function _usage():Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value.usage == null) {
            _f.value._defaultUsage();
        } else {
            _f.value.usage();
        };
    }
    public function _failf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f.value._sprintf(_format, ..._a.toArray());
        _f.value._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    public function _sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.toArray());
        stdgo.fmt.Fmt.fprintln(_f.value.output(), _msg);
        return _msg;
    }
    public function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (stdgo.strings.Strings.hasPrefix(_name, "-")) {
            throw _f.value._sprintf("flag %q begins with -", Go.toInterface(_name));
        } else if (stdgo.strings.Strings.contains(_name, "=")) {
            throw _f.value._sprintf("flag %q contains =", Go.toInterface(_name));
        };
        var _flag:Pointer<Flag> = Go.pointer(new Flag(_name, _usage, _value, _value.toString()));
        var __tmp__ = _f.value._formal.exists(_name) ? { value : _f.value._formal[_name], ok : true } : { value : _f.value._formal.defaultValue(), ok : false }, _:Pointer<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f.value._name == (("" : GoString))) {
                _msg = _f.value._sprintf("flag redefined: %s", Go.toInterface(_name));
            } else {
                _msg = _f.value._sprintf("%s flag redefined: %s", Go.toInterface(_f.value._name), Go.toInterface(_name));
            };
            throw _msg;
        };
        if (_f.value._formal == null || _f.value._formal.isNil()) {
            _f.value._formal = new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        _f.value._formal[_name] = _flag;
    }
    public function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(new T_funcValue(_fn).__copy__(), _name, _usage);
    }
    public function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<stdgo.time.Time.Duration> = Go.pointer(new stdgo.time.Time.Duration());
        _f.value.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    public function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newDurationValue(_value, _p).value, _name, _usage);
    }
    public function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoFloat64> = Go.pointer(((0 : GoFloat64)));
        _f.value.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newFloat64Value(_value, _p).value, _name, _usage);
    }
    public function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoString> = Go.pointer((("" : GoString)));
        _f.value.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    public function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newStringValue(_value, _p).value, _name, _usage);
    }
    public function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoUInt64> = Go.pointer(((0 : GoUInt64)));
        _f.value.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newUint64Value(_value, _p).value, _name, _usage);
    }
    public function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoUInt> = Go.pointer(((0 : GoUInt)));
        _f.value.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    public function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newUintValue(_value, _p).value, _name, _usage);
    }
    public function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoInt64> = Go.pointer(((0 : GoInt64)));
        _f.value.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newInt64Value(_value, _p).value, _name, _usage);
    }
    public function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<GoInt> = Go.pointer(((0 : GoInt)));
        _f.value.intVar(_p, _name, _value, _usage);
        return _p;
    }
    public function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newIntValue(_value, _p).value, _name, _usage);
    }
    public function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _p:Pointer<Bool> = Go.pointer(false);
        _f.value.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    public function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.var_(_newBoolValue(_value, _p).value, _name, _usage);
    }
    public function args():Slice<GoString> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._args;
    }
    public function narg():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._args.length;
    }
    public function arg(_i:GoInt):GoString {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_i < ((0 : GoInt)) || _i >= _f.value._args.length) {
            return "";
        };
        return _f.value._args[_i];
    }
    public function nflag():GoInt {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return (_f.value._actual == null ? 0 : _f.value._actual.length);
    }
    public function _defaultUsage():Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._name == (("" : GoString))) {
            stdgo.fmt.Fmt.fprintf(_f.value.output(), "Usage:\n");
        } else {
            stdgo.fmt.Fmt.fprintf(_f.value.output(), "Usage of %s:\n", Go.toInterface(_f.value._name));
        };
        _f.value.printDefaults();
    }
    public function printDefaults():Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value.visitAll(function(_flag:Pointer<Flag>):Void {
            var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
            stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "  -%s", Go.toInterface(_flag.value.name));
            var __tmp__ = unquoteUsage(_flag), _name:GoString = __tmp__._0, _usage:GoString = __tmp__._1;
            if (_name.length > ((0 : GoInt))) {
                _b.writeString(" ");
                _b.writeString(_name);
            };
            if (_b.len() <= ((4 : GoInt))) {
                _b.writeString("\t");
            } else {
                _b.writeString("\n    \t");
            };
            _b.writeString(stdgo.strings.Strings.replaceAll(_usage, "\n", "\n    \t"));
            if (!_isZeroValue(_flag, _flag.value.defValue)) {
                {
                    var __tmp__ = try {
                        { value : ((_flag.value.value.__underlying__().value : Pointer<T_stringValue>)), ok : true };
                    } catch(_) {
                        { value : new Pointer<T_stringValue>().nil(), ok : false };
                    }, _ = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, " (default %q)", Go.toInterface(_flag.value.defValue));
                    } else {
                        stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, " (default %v)", Go.toInterface(_flag.value.defValue));
                    };
                };
            };
            stdgo.fmt.Fmt.fprint(_f.value.output(), _b.toString(), "\n");
        });
    }
    public function set(_name:GoString, _value:GoString):Error {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _f.value._formal.exists(_name) ? { value : _f.value._formal[_name], ok : true } : { value : _f.value._formal.defaultValue(), ok : false }, _flag:Pointer<Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf("no such flag -%v", Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f.value._actual == null || _f.value._actual.isNil()) {
            _f.value._actual = new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        _f.value._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    public function lookup(_name:GoString):Pointer<Flag> {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._formal[_name];
    }
    public function visit(_fn:Pointer<Flag> -> Void):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_flag in _sortFlags(_f.value._actual)) {
            _fn(_flag);
        };
    }
    public function visitAll(_fn:Pointer<Flag> -> Void):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_flag in _sortFlags(_f.value._formal)) {
            _fn(_flag);
        };
    }
    public function setOutput(_output:stdgo.io.Io.Writer):Void {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _f.value._output = _output;
    }
    public function errorHandling():ErrorHandling {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._errorHandling;
    }
    public function name():GoString {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _f.value._name;
    }
    public function output():stdgo.io.Io.Writer {
        var _f = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_f.value._output == null) {
            return stdgo.os.Os.stderr.value;
        };
        return _f.value._output;
    }
    public var usage : () -> Void = null;
    public var _name : GoString = (("" : GoString));
    public var _parsed : Bool = false;
    public var _actual : GoMap<GoString, Pointer<Flag>> = new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))).nil();
    public var _formal : GoMap<GoString, Pointer<Flag>> = new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))).nil();
    public var _args : Slice<GoString> = new Slice<GoString>().nil();
    public var _errorHandling : ErrorHandling = new ErrorHandling();
    public var _output : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?usage:() -> Void, ?_name:GoString, ?_parsed:Bool, ?_actual:GoMap<GoString, Pointer<Flag>>, ?_formal:GoMap<GoString, Pointer<Flag>>, ?_args:Slice<GoString>, ?_errorHandling:ErrorHandling, ?_output:stdgo.io.Io.Writer) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FlagSet(usage, _name, _parsed, _actual, _formal, _args, _errorHandling, _output);
    }
    public function __set__(__tmp__) {
        this.usage = __tmp__.usage;
        this._name = __tmp__._name;
        this._parsed = __tmp__._parsed;
        this._actual = __tmp__._actual;
        this._formal = __tmp__._formal;
        this._args = __tmp__._args;
        this._errorHandling = __tmp__._errorHandling;
        this._output = __tmp__._output;
        return this;
    }
}
@:structInit class Flag {
    public var name : GoString = (("" : GoString));
    public var usage : GoString = (("" : GoString));
    public var value : Value = ((null : Value));
    public var defValue : GoString = (("" : GoString));
    public function new(?name:GoString, ?usage:GoString, ?value:Value, ?defValue:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(name) + " " + Go.string(usage) + " " + Go.string(value) + " " + Go.string(defValue) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Flag(name, usage, value, defValue);
    }
    public function __set__(__tmp__) {
        this.name = __tmp__.name;
        this.usage = __tmp__.usage;
        this.value = __tmp__.value;
        this.defValue = __tmp__.defValue;
        return this;
    }
}
final exitOnError : ErrorHandling = new ErrorHandling((1 : GoUnTypedInt));
var commandLine : Pointer<FlagSet> = newFlagSet(stdgo.os.Os.args[((0 : GoInt))], exitOnError);
final panicOnError : ErrorHandling = new ErrorHandling((2 : GoUnTypedInt));
final continueOnError : ErrorHandling = new ErrorHandling((0 : GoUnTypedInt));
var _errParse : stdgo.Error = stdgo.errors.Errors.new_("parse error");
var usage : () -> Void = function():Void {
        stdgo.fmt.Fmt.fprintf(commandLine.value.output(), "Usage of %s:\n", Go.toInterface(stdgo.os.Os.args[((0 : GoInt))]));
        printDefaults();
    };
var _errRange : stdgo.Error = stdgo.errors.Errors.new_("value out of range");
var errHelp : stdgo.Error = stdgo.errors.Errors.new_("flag: help requested");
function _numError(_err:Error):Error {
        var __tmp__ = try {
            { value : ((_err.__underlying__().value : Pointer<stdgo.strconv.Strconv.NumError>)), ok : true };
        } catch(_) {
            { value : new Pointer<stdgo.strconv.Strconv.NumError>().nil(), ok : false };
        }, _ne = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return _err;
        };
        if (Go.toInterface(_ne.value.err) == Go.toInterface(stdgo.strconv.Strconv.errSyntax)) {
            return _errParse;
        };
        if (Go.toInterface(_ne.value.err) == Go.toInterface(stdgo.strconv.Strconv.errRange)) {
            return _errRange;
        };
        return _err;
    }
function _newBoolValue(_val:Bool, _p:Pointer<Bool>):Pointer<T_boolValue> {
        _p.value = _val;
        return new Pointer<T_boolValue>(() -> new T_boolValue(_p.value), v -> new T_boolValue((_p.value = v.__t__)));
    }
function _newIntValue(_val:GoInt, _p:Pointer<GoInt>):Pointer<T_intValue> {
        _p.value = _val;
        return new Pointer<T_intValue>(() -> new T_intValue(_p.value), v -> new T_intValue((_p.value = v.__t__)));
    }
function _newInt64Value(_val:GoInt64, _p:Pointer<GoInt64>):Pointer<T_int64Value> {
        _p.value = _val;
        return new Pointer<T_int64Value>(() -> new T_int64Value(_p.value), v -> new T_int64Value((_p.value = v.__t__)));
    }
function _newUintValue(_val:GoUInt, _p:Pointer<GoUInt>):Pointer<T_uintValue> {
        _p.value = _val;
        return new Pointer<T_uintValue>(() -> new T_uintValue(_p.value), v -> new T_uintValue((_p.value = v.__t__)));
    }
function _newUint64Value(_val:GoUInt64, _p:Pointer<GoUInt64>):Pointer<T_uint64Value> {
        _p.value = _val;
        return new Pointer<T_uint64Value>(() -> new T_uint64Value(_p.value), v -> new T_uint64Value((_p.value = v.__t__)));
    }
function _newStringValue(_val:GoString, _p:Pointer<GoString>):Pointer<T_stringValue> {
        _p.value = _val;
        return new Pointer<T_stringValue>(() -> new T_stringValue(_p.value), v -> new T_stringValue((_p.value = v.__t__)));
    }
function _newFloat64Value(_val:GoFloat64, _p:Pointer<GoFloat64>):Pointer<T_float64Value> {
        _p.value = _val;
        return new Pointer<T_float64Value>(() -> new T_float64Value(_p.value), v -> new T_float64Value((_p.value = v.__t__)));
    }
function _newDurationValue(_val:stdgo.time.Time.Duration, _p:Pointer<stdgo.time.Time.Duration>):Pointer<T_durationValue> {
        _p.value = _val;
        return new Pointer<T_durationValue>(() -> new T_durationValue(_p.value.__t__), v -> new T_durationValue((_p.value = new stdgo.time.Time.Duration(v.__t__)).__t__));
    }
/**
    // sortFlags returns the flags as a slice in lexicographical sorted order.
**/
function _sortFlags(_flags:GoMap<GoString, Pointer<Flag>>):Slice<Pointer<Flag>> {
        var _result:Slice<Pointer<Flag>> = new Slice<Pointer<Flag>>(...[for (i in 0 ... (((_flags == null ? 0 : _flags.length) : GoInt)).toBasic()) new Pointer<Flag>().nil()]);
        var _i:GoInt = ((0 : GoInt));
        for (_f in _flags) {
            _result[_i] = _f;
            _i++;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_result), function(_i:GoInt, _j:GoInt):Bool {
            return _result[_i].value.name < _result[_j].value.name;
        });
        return _result;
    }
/**
    // VisitAll visits the command-line flags in lexicographical order, calling
    // fn for each. It visits all flags, even those not set.
**/
function visitAll(_fn:Pointer<Flag> -> Void):Void {
        commandLine.value.visitAll(_fn);
    }
/**
    // Visit visits the command-line flags in lexicographical order, calling fn
    // for each. It visits only those flags that have been set.
**/
function visit(_fn:Pointer<Flag> -> Void):Void {
        commandLine.value.visit(_fn);
    }
/**
    // Lookup returns the Flag structure of the named command-line flag,
    // returning nil if none exists.
**/
function lookup(_name:GoString):Pointer<Flag> {
        return commandLine.value._formal[_name];
    }
/**
    // Set sets the value of the named command-line flag.
**/
function set(_name:GoString, _value:GoString):Error {
        return commandLine.value.set(_name, _value);
    }
/**
    // isZeroValue determines whether the string represents the zero
    // value for a flag.
**/
function _isZeroValue(_flag:Pointer<Flag>, _value:GoString):Bool {
        var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_flag.value.value));
        var _z:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
        if (_typ.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
            _z = stdgo.reflect.Reflect.new_(_typ.elem()).__copy__();
        } else {
            _z = stdgo.reflect.Reflect.zero(_typ).__copy__();
        };
        return _value == ((_z.interface_().value : Value)).toString();
    }
/**
    // UnquoteUsage extracts a back-quoted name from the usage
    // string for a flag and returns it and the un-quoted usage.
    // Given "a `name` to show" it returns ("name", "a name to show").
    // If there are no back quotes, the name is an educated guess of the
    // type of the flag's value, or the empty string if the flag is boolean.
**/
function unquoteUsage(_flag:Pointer<Flag>):{ var _0 : GoString; var _1 : GoString; } {
        var _name:GoString = (("" : GoString)), _usage:GoString = (("" : GoString));
        _usage = _flag.value.usage;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _usage.length, _i++, {
                if (_usage[_i] == (("`".code : GoRune))) {
                    {
                        var _j:GoInt = _i + ((1 : GoInt));
                        Go.cfor(_j < _usage.length, _j++, {
                            if (_usage[_j] == (("`".code : GoRune))) {
                                _name = _usage.__slice__(_i + ((1 : GoInt)), _j);
                                _usage = _usage.__slice__(0, _i) + _name + _usage.__slice__(_j + ((1 : GoInt)));
                                return { _0 : _name, _1 : _usage };
                            };
                        });
                    };
                    break;
                };
            });
        };
        _name = "value";
        if (Go.assertable(((_flag.value.value : T_boolFlag)))) {
            _name = "";
        } else if (Go.assertable(((_flag.value.value : Pointer<T_durationValue>)))) {
            _name = "duration";
        } else if (Go.assertable(((_flag.value.value : Pointer<T_float64Value>)))) {
            _name = "float";
        } else if (Go.assertable(((_flag.value.value : Pointer<T_intValue>))) || Go.assertable(((_flag.value.value : Pointer<T_int64Value>)))) {
            _name = "int";
        } else if (Go.assertable(((_flag.value.value : Pointer<T_stringValue>)))) {
            _name = "string";
        } else if (Go.assertable(((_flag.value.value : Pointer<T_uintValue>))) || Go.assertable(((_flag.value.value : Pointer<T_uint64Value>)))) {
            _name = "uint";
        };
        return { _0 : _name, _1 : _usage };
    }
/**
    // PrintDefaults prints, to standard error unless configured otherwise,
    // a usage message showing the default settings of all defined
    // command-line flags.
    // For an integer valued flag x, the default output has the form
    //	-x int
    //		usage-message-for-x (default 7)
    // The usage message will appear on a separate line for anything but
    // a bool flag with a one-byte name. For bool flags, the type is
    // omitted and if the flag name is one byte the usage message appears
    // on the same line. The parenthetical default is omitted if the
    // default is the zero value for the type. The listed type, here int,
    // can be changed by placing a back-quoted name in the flag's usage
    // string; the first such item in the message is taken to be a parameter
    // name to show in the message and the back quotes are stripped from
    // the message when displayed. For instance, given
    //	flag.String("I", "", "search `directory` for include files")
    // the output will be
    //	-I directory
    //		search directory for include files.
    //
    // To change the destination for flag messages, call CommandLine.SetOutput.
**/
function printDefaults():Void {
        commandLine.value.printDefaults();
    }
/**
    // NFlag returns the number of command-line flags that have been set.
**/
function nflag():GoInt {
        return (commandLine.value._actual == null ? 0 : commandLine.value._actual.length);
    }
/**
    // Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
    // after flags have been processed. Arg returns an empty string if the
    // requested element does not exist.
**/
function arg(_i:GoInt):GoString {
        return commandLine.value.arg(_i);
    }
/**
    // NArg is the number of arguments remaining after flags have been processed.
**/
function narg():GoInt {
        return commandLine.value._args.length;
    }
/**
    // Args returns the non-flag command-line arguments.
**/
function args():Slice<GoString> {
        return commandLine.value._args;
    }
/**
    // BoolVar defines a bool flag with specified name, default value, and usage string.
    // The argument p points to a bool variable in which to store the value of the flag.
**/
function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        commandLine.value.var_(_newBoolValue(_value, _p).value, _name, _usage);
    }
/**
    // Bool defines a bool flag with specified name, default value, and usage string.
    // The return value is the address of a bool variable that stores the value of the flag.
**/
function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        return commandLine.value.bool(_name, _value, _usage);
    }
/**
    // IntVar defines an int flag with specified name, default value, and usage string.
    // The argument p points to an int variable in which to store the value of the flag.
**/
function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        commandLine.value.var_(_newIntValue(_value, _p).value, _name, _usage);
    }
/**
    // Int defines an int flag with specified name, default value, and usage string.
    // The return value is the address of an int variable that stores the value of the flag.
**/
function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        return commandLine.value.int(_name, _value, _usage);
    }
/**
    // Int64Var defines an int64 flag with specified name, default value, and usage string.
    // The argument p points to an int64 variable in which to store the value of the flag.
**/
function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        commandLine.value.var_(_newInt64Value(_value, _p).value, _name, _usage);
    }
/**
    // Int64 defines an int64 flag with specified name, default value, and usage string.
    // The return value is the address of an int64 variable that stores the value of the flag.
**/
function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        return commandLine.value.int64(_name, _value, _usage);
    }
/**
    // UintVar defines a uint flag with specified name, default value, and usage string.
    // The argument p points to a uint variable in which to store the value of the flag.
**/
function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        commandLine.value.var_(_newUintValue(_value, _p).value, _name, _usage);
    }
/**
    // Uint defines a uint flag with specified name, default value, and usage string.
    // The return value is the address of a uint variable that stores the value of the flag.
**/
function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        return commandLine.value.uint(_name, _value, _usage);
    }
/**
    // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
    // The argument p points to a uint64 variable in which to store the value of the flag.
**/
function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        commandLine.value.var_(_newUint64Value(_value, _p).value, _name, _usage);
    }
/**
    // Uint64 defines a uint64 flag with specified name, default value, and usage string.
    // The return value is the address of a uint64 variable that stores the value of the flag.
**/
function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        return commandLine.value.uint64(_name, _value, _usage);
    }
/**
    // StringVar defines a string flag with specified name, default value, and usage string.
    // The argument p points to a string variable in which to store the value of the flag.
**/
function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        commandLine.value.var_(_newStringValue(_value, _p).value, _name, _usage);
    }
/**
    // String defines a string flag with specified name, default value, and usage string.
    // The return value is the address of a string variable that stores the value of the flag.
**/
function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        return commandLine.value.toString(_name, _value, _usage);
    }
/**
    // Float64Var defines a float64 flag with specified name, default value, and usage string.
    // The argument p points to a float64 variable in which to store the value of the flag.
**/
function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        commandLine.value.var_(_newFloat64Value(_value, _p).value, _name, _usage);
    }
/**
    // Float64 defines a float64 flag with specified name, default value, and usage string.
    // The return value is the address of a float64 variable that stores the value of the flag.
**/
function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        return commandLine.value.float64(_name, _value, _usage);
    }
/**
    // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
    // The argument p points to a time.Duration variable in which to store the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        commandLine.value.var_(_newDurationValue(_value, _p).value, _name, _usage);
    }
/**
    // Duration defines a time.Duration flag with specified name, default value, and usage string.
    // The return value is the address of a time.Duration variable that stores the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        return commandLine.value.duration(_name, _value, _usage);
    }
/**
    // Func defines a flag with the specified name and usage string.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        commandLine.value.func(_name, _usage, _fn);
    }
/**
    // Var defines a flag with the specified name and usage string. The type and
    // value of the flag are represented by the first argument, of type Value, which
    // typically holds a user-defined implementation of Value. For instance, the
    // caller could create a flag that turns a comma-separated string into a slice
    // of strings by giving the slice the methods of Value; in particular, Set would
    // decompose the comma-separated string into the slice.
**/
function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        commandLine.value.var_(_value, _name, _usage);
    }
/**
    // Parse parses the command-line flags from os.Args[1:]. Must be called
    // after all flags are defined and before flags are accessed by the program.
**/
function parse():Void {
        commandLine.value.parse(stdgo.os.Os.args.__slice__(((1 : GoInt))));
    }
/**
    // Parsed reports whether the command-line flags have been parsed.
**/
function parsed():Bool {
        return commandLine.value.parsed();
    }
function _commandLineUsage():Void {
        usage();
    }
/**
    // NewFlagSet returns a new, empty flag set with the specified name and
    // error handling property. If the name is not empty, it will be printed
    // in the default usage message and in error messages.
**/
function newFlagSet(_name:GoString, _errorHandling:ErrorHandling):Pointer<FlagSet> {
        var _f:Pointer<FlagSet> = Go.pointer((({ _name : _name, _errorHandling : _errorHandling, usage : null, _parsed : false, _actual : new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))).nil(), _formal : new GoMap<GoString, Pointer<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("flag.Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.named("flag.Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))).nil(), _args : new Slice<GoString>().nil(), _output : ((null : stdgo.io.Io.Writer)) } : FlagSet)));
        _f.value.usage = _f.value._defaultUsage;
        return _f;
    }
@:keep var _ = {
        try {
            commandLine.value.usage = _commandLineUsage;
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_boolValue_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function isBoolFlag(__tmp__):Bool return __tmp__.isBoolFlag();
}
class T_intValue_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_int64Value_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_uintValue_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_uint64Value_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_stringValue_extension_fields {
    public function set(__tmp__, _val:GoString):Error return __tmp__.set(_val);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_float64Value_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_durationValue_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function get(__tmp__):AnyInterface return __tmp__.get();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_funcValue_extension_fields {
    public function set(__tmp__, _s:GoString):Error return __tmp__.set(_s);
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class FlagSet_extension_fields {
    public function output(__tmp__):stdgo.io.Io.Writer return __tmp__.output();
    public function name(__tmp__):GoString return __tmp__.name();
    public function errorHandling(__tmp__):ErrorHandling return __tmp__.errorHandling();
    public function setOutput(__tmp__, _output:stdgo.io.Io.Writer):Void __tmp__.setOutput(_output);
    public function visitAll(__tmp__, _fn:Pointer<Flag> -> Void):Void __tmp__.visitAll(_fn);
    public function visit(__tmp__, _fn:Pointer<Flag> -> Void):Void __tmp__.visit(_fn);
    public function lookup(__tmp__, _name:GoString):Pointer<Flag> return __tmp__.lookup(_name);
    public function set(__tmp__, _name:GoString, _value:GoString):Error return __tmp__.set(_name, _value);
    public function printDefaults(__tmp__):Void __tmp__.printDefaults();
    public function _defaultUsage(__tmp__):Void __tmp__._defaultUsage();
    public function nflag(__tmp__):GoInt return __tmp__.nflag();
    public function arg(__tmp__, _i:GoInt):GoString return __tmp__.arg(_i);
    public function narg(__tmp__):GoInt return __tmp__.narg();
    public function args(__tmp__):Slice<GoString> return __tmp__.args();
    public function boolVar(__tmp__, _p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void __tmp__.boolVar(_p, _name, _value, _usage);
    public function bool(__tmp__, _name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> return __tmp__.bool(_name, _value, _usage);
    public function intVar(__tmp__, _p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void __tmp__.intVar(_p, _name, _value, _usage);
    public function int(__tmp__, _name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> return __tmp__.int(_name, _value, _usage);
    public function int64Var(__tmp__, _p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void __tmp__.int64Var(_p, _name, _value, _usage);
    public function int64(__tmp__, _name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> return __tmp__.int64(_name, _value, _usage);
    public function uintVar(__tmp__, _p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void __tmp__.uintVar(_p, _name, _value, _usage);
    public function uint(__tmp__, _name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> return __tmp__.uint(_name, _value, _usage);
    public function uint64Var(__tmp__, _p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void __tmp__.uint64Var(_p, _name, _value, _usage);
    public function uint64(__tmp__, _name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> return __tmp__.uint64(_name, _value, _usage);
    public function stringVar(__tmp__, _p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void __tmp__.stringVar(_p, _name, _value, _usage);
    public function toString(__tmp__, _name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> return __tmp__.toString(_name, _value, _usage);
    public function float64Var(__tmp__, _p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void __tmp__.float64Var(_p, _name, _value, _usage);
    public function float64(__tmp__, _name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> return __tmp__.float64(_name, _value, _usage);
    public function durationVar(__tmp__, _p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void __tmp__.durationVar(_p, _name, _value, _usage);
    public function duration(__tmp__, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> return __tmp__.duration(_name, _value, _usage);
    public function func(__tmp__, _name:GoString, _usage:GoString, _fn:GoString -> Error):Void __tmp__.func(_name, _usage, _fn);
    public function var_(__tmp__, _value:Value, _name:GoString, _usage:GoString):Void __tmp__.var_(_value, _name, _usage);
    public function _sprintf(__tmp__, _format:GoString, _a:haxe.Rest<AnyInterface>):GoString return __tmp__._sprintf(_format, _a);
    public function _failf(__tmp__, _format:GoString, _a:haxe.Rest<AnyInterface>):Error return __tmp__._failf(_format, _a);
    public function _usage(__tmp__):Void __tmp__._usage();
    public function _parseOne(__tmp__):{ var _0 : Bool; var _1 : Error; } return __tmp__._parseOne();
    public function parse(__tmp__, _arguments:Slice<GoString>):Error return __tmp__.parse(_arguments);
    public function parsed(__tmp__):Bool return __tmp__.parsed();
    public function init(__tmp__, _name:GoString, _errorHandling:ErrorHandling):Void __tmp__.init(_name, _errorHandling);
}
