package stdgo.flag;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errHelp : stdgo.Error = stdgo.errors.Errors.new_(((("flag: help requested" : GoString))));
var _errParse : stdgo.Error = stdgo.errors.Errors.new_(((("parse error" : GoString))));
var _errRange : stdgo.Error = stdgo.errors.Errors.new_(((("value out of range" : GoString))));
var commandLine : FlagSet = newFlagSet((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((1 : GoInt)));
var usage : () -> Void = function():Void {
    stdgo.fmt.Fmt.fprintf(commandLine.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString)))));
    printDefaults();
};
typedef T_boolFlag = StructType & {
    > Value,
    public function isBoolFlag():Bool;
};
typedef Value = StructType & {
    public function toString():GoString;
    public function set(_0:GoString):Error;
};
typedef Getter = StructType & {
    > Value,
    public function get():AnyInterface;
};
@:named @:using(Flag.T_boolValue_static_extension) typedef T_boolValue = Bool;
@:named @:using(Flag.T_intValue_static_extension) typedef T_intValue = GoInt;
@:named @:using(Flag.T_int64Value_static_extension) typedef T_int64Value = GoInt64;
@:named @:using(Flag.T_uintValue_static_extension) typedef T_uintValue = GoUInt;
@:named @:using(Flag.T_uint64Value_static_extension) typedef T_uint64Value = GoUInt64;
@:named @:using(Flag.T_stringValue_static_extension) typedef T_stringValue = GoString;
@:named @:using(Flag.T_float64Value_static_extension) typedef T_float64Value = GoFloat64;
@:named @:using(Flag.T_durationValue_static_extension) typedef T_durationValue = stdgo.time.Time.Duration;
@:named @:using(Flag.T_funcValue_static_extension) typedef T_funcValue = GoString -> stdgo.Error;
@:named typedef ErrorHandling = GoInt;
@:structInit @:using(Flag.FlagSet_static_extension) class FlagSet {
    public function init(_name:GoString, _errorHandling:ErrorHandling):Void {
        var _f = this;
        _f;
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    public function parsed():Bool {
        var _f = this;
        _f;
        return _f._parsed;
    }
    public function parse(_arguments:Slice<GoString>):Error {
        var _f = this;
        _f;
        _f._parsed = true;
        _f._args = _arguments;
        while (true) {
            var __tmp__ = _f._parseOne(), _seen:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_seen) {
                continue;
            };
            if (_err == null) {
                break;
            };
            if (_f._errorHandling == ((0 : GoInt))) {
                return _err;
            } else if (_f._errorHandling == ((1 : GoInt))) {
                if (_err == errHelp) {
                    stdgo.os.Os.exit(((0 : GoInt)));
                };
                stdgo.os.Os.exit(((2 : GoInt)));
            } else if (_f._errorHandling == ((2 : GoInt))) {
                throw Go.toInterface(_err);
            };
        };
        return ((null : stdgo.Error));
    }
    public function _parseOne():{ var _0 : Bool; var _1 : Error; } {
        var _f = this;
        _f;
        if ((_f._args != null ? _f._args.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _s:GoString = (_f._args != null ? _f._args[((0 : GoInt))] : (("" : GoString)));
        if (((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != ((((("-" : GoString))).code : GoRune)))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _numMinuses:GoInt = ((1 : GoInt));
        if ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune))) {
            _numMinuses++;
            if ((_s != null ? _s.length : ((0 : GoInt))) == ((2 : GoInt))) {
                _f._args = _f._args.__slice__(((1 : GoInt)));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = _s.__slice__(_numMinuses);
        if ((((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune)))) {
            return { _0 : false, _1 : _f._failf(((("bad flag syntax: %s" : GoString))), Go.toInterface(_s)) };
        };
        _f._args = _f._args.__slice__(((1 : GoInt)));
        var _hasValue:Bool = false;
        var _value:GoString = ("");
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((_name != null ? _name[_i] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune))) {
                    _value = _name.__slice__(_i + ((1 : GoInt)));
                    _hasValue = true;
                    _name = _name.__slice__(((0 : GoInt)), _i);
                    break;
                };
            });
        };
        var _m:GoMap<GoString, Flag> = _f._formal;
        var __tmp__ = (_m != null && _m.__exists__(_name) ? { value : _m[_name], ok : true } : { value : ((null : Flag)), ok : false }), _flag:Flag = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (!_alreadythere) {
            if ((_name == ((("help" : GoString)))) || (_name == ((("h" : GoString))))) {
                _f._usage();
                return { _0 : false, _1 : errHelp };
            };
            return { _0 : false, _1 : _f._failf(((("flag provided but not defined: -%s" : GoString))), Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { value : ((((_flag.value.__underlying__().value : Dynamic)) : T_boolFlag)), ok : true };
            } catch(_) {
                { value : ((null : T_boolFlag)), ok : false };
            }, _fv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _fv.isBoolFlag()) {
                if (_hasValue) {
                    {
                        var _err:stdgo.Error = _fv.set(_value);
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(((("invalid boolean value %q for -%s: %v" : GoString))), Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _fv.set(((("true" : GoString))));
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(((("invalid boolean flag %s: %v" : GoString))), Go.toInterface(_name), Go.toInterface(_err)) };
                        };
                    };
                };
            } else {
                if (!_hasValue && ((_f._args != null ? _f._args.length : ((0 : GoInt))) > ((0 : GoInt)))) {
                    _hasValue = true;
                    {
                        final __tmp__0 = (_f._args != null ? _f._args[((0 : GoInt))] : (("" : GoString)));
                        final __tmp__1 = _f._args.__slice__(((1 : GoInt)));
                        _value = __tmp__0;
                        _f._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : _f._failf(((("flag needs an argument: -%s" : GoString))), Go.toInterface(_name)) };
                };
                {
                    var _err:stdgo.Error = _flag.value.set(_value);
                    if (_err != null) {
                        return { _0 : false, _1 : _f._failf(((("invalid value %q for flag -%s: %v" : GoString))), Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f._actual == null) {
            _f._actual = new GoObjectMap<GoString, Flag>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    public function _usage():Void {
        var _f = this;
        _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    public function _failf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        var _f = this;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    public function _sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        var _f = this;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), _msg);
        return _msg;
    }
    public function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        var _f = this;
        _f;
        if (stdgo.strings.Strings.hasPrefix(_name, ((("-" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q begins with -" : GoString))), Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ((("=" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q contains =" : GoString))), Go.toInterface(_name)));
        };
        var _flag:Flag = ((new Flag(_name, _usage, _value, ((_value.toString() : GoString))) : Flag));
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Flag)), ok : false }), _:Flag = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f._name == ("")) {
                _msg = _f._sprintf(((("flag redefined: %s" : GoString))), Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(((("%s flag redefined: %s" : GoString))), Go.toInterface(_f._name), Go.toInterface(_name));
            };
            throw Go.toInterface(_msg);
        };
        if (_f._formal == null) {
            _f._formal = new GoObjectMap<GoString, Flag>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._formal != null) _f._formal[_name] = _flag;
    }
    public function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        var _f = this;
        _f;
        _f.var_(new T_funcValue_wrapper(((_fn : T_funcValue))), _name, _usage);
    }
    public function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        var _f = this;
        _f;
        var _p:Pointer<stdgo.time.Time.Duration> = Go.pointer(new stdgo.time.Time.Duration());
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    public function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
    public function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        var _f = this;
        _f;
        var _p:Pointer<GoFloat64> = Go.pointer(((0 : GoFloat64)));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
    public function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        var _f = this;
        _f;
        var _p:Pointer<GoString> = Go.pointer((("" : GoString)));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    public function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
    public function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        var _f = this;
        _f;
        var _p:Pointer<GoUInt64> = Go.pointer(((0 : GoUInt64)));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
    public function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        var _f = this;
        _f;
        var _p:Pointer<GoUInt> = Go.pointer(((0 : GoUInt)));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    public function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
    public function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        var _f = this;
        _f;
        var _p:Pointer<GoInt64> = Go.pointer(((0 : GoInt64)));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    public function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
    public function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        var _f = this;
        _f;
        var _p:Pointer<GoInt> = Go.pointer(((0 : GoInt)));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    public function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
    public function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        var _f = this;
        _f;
        var _p:Pointer<Bool> = Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    public function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
    public function args():Slice<GoString> {
        var _f = this;
        _f;
        return _f._args;
    }
    public function narg():GoInt {
        var _f = this;
        _f;
        return (_f._args != null ? _f._args.length : ((0 : GoInt)));
    }
    public function arg(_i:GoInt):GoString {
        var _f = this;
        _f;
        if ((_i < ((0 : GoInt))) || (_i >= (_f._args != null ? _f._args.length : ((0 : GoInt))))) {
            return ("");
        };
        return (_f._args != null ? _f._args[_i] : (("" : GoString)));
    }
    public function nflag():GoInt {
        var _f = this;
        _f;
        return (_f._actual != null ? _f._actual.length : ((0 : GoInt)));
    }
    public function _defaultUsage():Void {
        var _f = this;
        _f;
        if (_f._name == ("")) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage:\n" : GoString))));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    public function printDefaults():Void {
        var _f = this;
        _f;
        _f.visitAll(function(_flag:Flag):Void {
            var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
            stdgo.fmt.Fmt.fprintf(_b, ((("  -%s" : GoString))), Go.toInterface(_flag.name));
            var __tmp__ = unquoteUsage(_flag), _name:GoString = __tmp__._0, _usage:GoString = __tmp__._1;
            if ((_name != null ? _name.length : ((0 : GoInt))) > ((0 : GoInt))) {
                _b.writeString((((" " : GoString))));
                _b.writeString(_name);
            };
            if (_b.len() <= ((4 : GoInt))) {
                _b.writeString(((("\t" : GoString))));
            } else {
                _b.writeString(((("\n    \t" : GoString))));
            };
            _b.writeString(stdgo.strings.Strings.replaceAll(_usage, ((("\n" : GoString))), ((("\n    \t" : GoString)))));
            if (!_isZeroValue(_flag, _flag.defValue)) {
                {
                    var __tmp__ = try {
                        { value : Go.pointer(((((_flag.value.__underlying__().value : Dynamic)) : T_stringValue))), ok : true };
                    } catch(_) {
                        { value : ((null : Pointer<T_stringValue>)), ok : false };
                    }, _ = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        stdgo.fmt.Fmt.fprintf(_b, (((" (default %q)" : GoString))), Go.toInterface(_flag.defValue));
                    } else {
                        stdgo.fmt.Fmt.fprintf(_b, (((" (default %v)" : GoString))), Go.toInterface(_flag.defValue));
                    };
                };
            };
            stdgo.fmt.Fmt.fprint(_f.output(), ((_b.toString() : GoString)), ((("\n" : GoString))));
        });
    }
    public function set(_name:GoString, _value:GoString):Error {
        var _f = this;
        _f;
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Flag)), ok : false }), _flag:Flag = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf(((("no such flag -%v" : GoString))), Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = new GoObjectMap<GoString, Flag>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    public function lookup(_name:GoString):Flag {
        var _f = this;
        _f;
        return (_f._formal != null ? _f._formal[_name] : ((null : Flag)));
    }
    public function visit(_fn:Flag -> Void):Void {
        var _f = this;
        _f;
        for (_ => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    public function visitAll(_fn:Flag -> Void):Void {
        var _f = this;
        _f;
        for (_ => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    public function setOutput(_output:stdgo.io.Io.Writer):Void {
        var _f = this;
        _f;
        _f._output = _output;
    }
    public function errorHandling():ErrorHandling {
        var _f = this;
        _f;
        return _f._errorHandling;
    }
    public function name():GoString {
        var _f = this;
        _f;
        return _f._name;
    }
    public function output():stdgo.io.Io.Writer {
        var _f = this;
        _f;
        if (_f._output == null) {
            return stdgo.os.Os.stderr;
        };
        return _f._output;
    }
    public var usage : () -> Void = null;
    public var _name : GoString = (("" : GoString));
    public var _parsed : Bool = false;
    public var _actual : GoMap<GoString, Flag> = ((null : GoMap<GoString, Flag>));
    public var _formal : GoMap<GoString, Flag> = ((null : GoMap<GoString, Flag>));
    public var _args : Slice<GoString> = ((null : Slice<GoString>));
    public var _errorHandling : ErrorHandling = new ErrorHandling();
    public var _output : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?usage:() -> Void, ?_name:GoString, ?_parsed:Bool, ?_actual:GoMap<GoString, Flag>, ?_formal:GoMap<GoString, Flag>, ?_args:Slice<GoString>, ?_errorHandling:ErrorHandling, ?_output:stdgo.io.Io.Writer) {
        if (usage != null) this.usage = usage;
        if (_name != null) this._name = _name;
        if (_parsed != null) this._parsed = _parsed;
        if (_actual != null) this._actual = _actual;
        if (_formal != null) this._formal = _formal;
        if (_args != null) this._args = _args;
        if (_errorHandling != null) this._errorHandling = _errorHandling;
        if (_output != null) this._output = _output;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new FlagSet(usage, _name, _parsed, _actual, _formal, _args, _errorHandling, _output);
    }
}
@:structInit class Flag {
    public var name : GoString = (("" : GoString));
    public var usage : GoString = (("" : GoString));
    public var value : Value = ((null : Value));
    public var defValue : GoString = (("" : GoString));
    public function new(?name:GoString, ?usage:GoString, ?value:Value, ?defValue:GoString) {
        if (name != null) this.name = name;
        if (usage != null) this.usage = usage;
        if (value != null) this.value = value;
        if (defValue != null) this.defValue = defValue;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Flag(name, usage, value, defValue);
    }
}
function _numError(_err:Error):Error {
        var __tmp__ = try {
            { value : ((((_err.__underlying__().value : Dynamic)) : stdgo.strconv.Strconv.NumError)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.strconv.Strconv.NumError)), ok : false };
        }, _ne = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return _err;
        };
        if (_ne.err == stdgo.strconv.Strconv.errSyntax) {
            return _errParse;
        };
        if (_ne.err == stdgo.strconv.Strconv.errRange) {
            return _errRange;
        };
        return _err;
    }
function _newBoolValue(_val:Bool, _p:Pointer<Bool>):Pointer<T_boolValue> {
        _p.value = _val;
        return new Pointer<T_boolValue>(() -> ((_p.value : T_boolValue)), v -> (((_p.value = ((v : Bool))) : T_boolValue)));
    }
function _newIntValue(_val:GoInt, _p:Pointer<GoInt>):Pointer<T_intValue> {
        _p.value = _val;
        return new Pointer<T_intValue>(() -> ((_p.value : T_intValue)), v -> (((_p.value = ((v : GoInt))) : T_intValue)));
    }
function _newInt64Value(_val:GoInt64, _p:Pointer<GoInt64>):Pointer<T_int64Value> {
        _p.value = _val;
        return new Pointer<T_int64Value>(() -> ((_p.value : T_int64Value)), v -> (((_p.value = ((v : GoInt64))) : T_int64Value)));
    }
function _newUintValue(_val:GoUInt, _p:Pointer<GoUInt>):Pointer<T_uintValue> {
        _p.value = _val;
        return new Pointer<T_uintValue>(() -> ((_p.value : T_uintValue)), v -> (((_p.value = ((v : GoUInt))) : T_uintValue)));
    }
function _newUint64Value(_val:GoUInt64, _p:Pointer<GoUInt64>):Pointer<T_uint64Value> {
        _p.value = _val;
        return new Pointer<T_uint64Value>(() -> ((_p.value : T_uint64Value)), v -> (((_p.value = ((v : GoUInt64))) : T_uint64Value)));
    }
function _newStringValue(_val:GoString, _p:Pointer<GoString>):Pointer<T_stringValue> {
        _p.value = _val;
        return new Pointer<T_stringValue>(() -> ((_p.value : T_stringValue)), v -> (((_p.value = ((v : GoString))) : T_stringValue)));
    }
function _newFloat64Value(_val:GoFloat64, _p:Pointer<GoFloat64>):Pointer<T_float64Value> {
        _p.value = _val;
        return new Pointer<T_float64Value>(() -> ((_p.value : T_float64Value)), v -> (((_p.value = ((v : GoFloat64))) : T_float64Value)));
    }
function _newDurationValue(_val:stdgo.time.Time.Duration, _p:Pointer<stdgo.time.Time.Duration>):Pointer<T_durationValue> {
        _p.value = _val;
        return new Pointer<T_durationValue>(() -> ((_p.value : T_durationValue)), v -> (((_p.value = ((v : stdgo.time.Time.Duration))) : T_durationValue)));
    }
/**
    // sortFlags returns the flags as a slice in lexicographical sorted order.
**/
function _sortFlags(_flags:GoMap<GoString, Flag>):Slice<Flag> {
        var _result:Slice<Flag> = new Slice<Flag>(...[for (i in 0 ... (((_flags != null ? _flags.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Flag))]);
        var _i:GoInt = ((0 : GoInt));
        for (_ => _f in _flags) {
            if (_result != null) _result[_i] = _f;
            _i++;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_result), function(_i:GoInt, _j:GoInt):Bool {
            return (_result != null ? _result[_i] : ((null : Flag))).name < (_result != null ? _result[_j] : ((null : Flag))).name;
        });
        return _result;
    }
/**
    // VisitAll visits the command-line flags in lexicographical order, calling
    // fn for each. It visits all flags, even those not set.
**/
function visitAll(_fn:Flag -> Void):Void {
        commandLine.visitAll(_fn);
    }
/**
    // Visit visits the command-line flags in lexicographical order, calling fn
    // for each. It visits only those flags that have been set.
**/
function visit(_fn:Flag -> Void):Void {
        commandLine.visit(_fn);
    }
/**
    // Lookup returns the Flag structure of the named command-line flag,
    // returning nil if none exists.
**/
function lookup(_name:GoString):Flag {
        return (commandLine._formal != null ? commandLine._formal[_name] : ((null : Flag)));
    }
/**
    // Set sets the value of the named command-line flag.
**/
function set(_name:GoString, _value:GoString):Error {
        return commandLine.set(_name, _value);
    }
/**
    // isZeroValue determines whether the string represents the zero
    // value for a flag.
**/
function _isZeroValue(_flag:Flag, _value:GoString):Bool {
        var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_flag.value));
        var _z:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value();
        if (_typ.kind() == ((22 : GoUInt))) {
            _z = (stdgo.reflect.Reflect.new_(_typ.elem()) == null ? null : stdgo.reflect.Reflect.new_(_typ.elem()).__copy__());
        } else {
            _z = (stdgo.reflect.Reflect.zero(_typ) == null ? null : stdgo.reflect.Reflect.zero(_typ).__copy__());
        };
        return _value == ((((_z.interface_().value : Value)).toString() : GoString));
    }
/**
    // UnquoteUsage extracts a back-quoted name from the usage
    // string for a flag and returns it and the un-quoted usage.
    // Given "a `name` to show" it returns ("name", "a name to show").
    // If there are no back quotes, the name is an educated guess of the
    // type of the flag's value, or the empty string if the flag is boolean.
**/
function unquoteUsage(_flag:Flag):{ var _0 : GoString; var _1 : GoString; } {
        var _name:GoString = (("" : GoString)), _usage:GoString = (("" : GoString));
        _usage = _flag.usage;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_usage != null ? _usage.length : ((0 : GoInt))), _i++, {
                if ((_usage != null ? _usage[_i] : ((0 : GoUInt8))) == ((((("`" : GoString))).code : GoRune))) {
                    {
                        var _j:GoInt = _i + ((1 : GoInt));
                        Go.cfor(_j < (_usage != null ? _usage.length : ((0 : GoInt))), _j++, {
                            if ((_usage != null ? _usage[_j] : ((0 : GoUInt8))) == ((((("`" : GoString))).code : GoRune))) {
                                _name = _usage.__slice__(_i + ((1 : GoInt)), _j);
                                _usage = (_usage.__slice__(0, _i) + _name) + _usage.__slice__(_j + ((1 : GoInt)));
                                return { _0 : _name, _1 : _usage };
                            };
                        });
                    };
                    break;
                };
            });
        };
        _name = ((("value" : GoString)));
        if (Go.assertable(((_flag.value : T_boolFlag)))) {
            _name = ("");
        } else if (Go.assertable(((_flag.value : Pointer<T_durationValue>)))) {
            _name = ((("duration" : GoString)));
        } else if (Go.assertable(((_flag.value : Pointer<T_float64Value>)))) {
            _name = ((("float" : GoString)));
        } else if (Go.assertable(((_flag.value : Pointer<T_intValue>))) || Go.assertable(((_flag.value : Pointer<T_int64Value>)))) {
            _name = ((("int" : GoString)));
        } else if (Go.assertable(((_flag.value : Pointer<T_stringValue>)))) {
            _name = ((("string" : GoString)));
        } else if (Go.assertable(((_flag.value : Pointer<T_uintValue>))) || Go.assertable(((_flag.value : Pointer<T_uint64Value>)))) {
            _name = ((("uint" : GoString)));
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
        commandLine.printDefaults();
    }
/**
    // NFlag returns the number of command-line flags that have been set.
**/
function nflag():GoInt {
        return (commandLine._actual != null ? commandLine._actual.length : ((0 : GoInt)));
    }
/**
    // Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
    // after flags have been processed. Arg returns an empty string if the
    // requested element does not exist.
**/
function arg(_i:GoInt):GoString {
        return commandLine.arg(_i);
    }
/**
    // NArg is the number of arguments remaining after flags have been processed.
**/
function narg():GoInt {
        return (commandLine._args != null ? commandLine._args.length : ((0 : GoInt)));
    }
/**
    // Args returns the non-flag command-line arguments.
**/
function args():Slice<GoString> {
        return commandLine._args;
    }
/**
    // BoolVar defines a bool flag with specified name, default value, and usage string.
    // The argument p points to a bool variable in which to store the value of the flag.
**/
function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        commandLine.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
/**
    // Bool defines a bool flag with specified name, default value, and usage string.
    // The return value is the address of a bool variable that stores the value of the flag.
**/
function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        return commandLine.bool(_name, _value, _usage);
    }
/**
    // IntVar defines an int flag with specified name, default value, and usage string.
    // The argument p points to an int variable in which to store the value of the flag.
**/
function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        commandLine.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
/**
    // Int defines an int flag with specified name, default value, and usage string.
    // The return value is the address of an int variable that stores the value of the flag.
**/
function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        return commandLine.int(_name, _value, _usage);
    }
/**
    // Int64Var defines an int64 flag with specified name, default value, and usage string.
    // The argument p points to an int64 variable in which to store the value of the flag.
**/
function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        commandLine.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
/**
    // Int64 defines an int64 flag with specified name, default value, and usage string.
    // The return value is the address of an int64 variable that stores the value of the flag.
**/
function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        return commandLine.int64(_name, _value, _usage);
    }
/**
    // UintVar defines a uint flag with specified name, default value, and usage string.
    // The argument p points to a uint variable in which to store the value of the flag.
**/
function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        commandLine.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
/**
    // Uint defines a uint flag with specified name, default value, and usage string.
    // The return value is the address of a uint variable that stores the value of the flag.
**/
function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        return commandLine.uint(_name, _value, _usage);
    }
/**
    // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
    // The argument p points to a uint64 variable in which to store the value of the flag.
**/
function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        commandLine.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
/**
    // Uint64 defines a uint64 flag with specified name, default value, and usage string.
    // The return value is the address of a uint64 variable that stores the value of the flag.
**/
function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        return commandLine.uint64(_name, _value, _usage);
    }
/**
    // StringVar defines a string flag with specified name, default value, and usage string.
    // The argument p points to a string variable in which to store the value of the flag.
**/
function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        commandLine.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
/**
    // String defines a string flag with specified name, default value, and usage string.
    // The return value is the address of a string variable that stores the value of the flag.
**/
function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        return commandLine.toString(_name, _value, _usage);
    }
/**
    // Float64Var defines a float64 flag with specified name, default value, and usage string.
    // The argument p points to a float64 variable in which to store the value of the flag.
**/
function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        commandLine.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
/**
    // Float64 defines a float64 flag with specified name, default value, and usage string.
    // The return value is the address of a float64 variable that stores the value of the flag.
**/
function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        return commandLine.float64(_name, _value, _usage);
    }
/**
    // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
    // The argument p points to a time.Duration variable in which to store the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        commandLine.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
/**
    // Duration defines a time.Duration flag with specified name, default value, and usage string.
    // The return value is the address of a time.Duration variable that stores the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        return commandLine.duration(_name, _value, _usage);
    }
/**
    // Func defines a flag with the specified name and usage string.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        commandLine.func(_name, _usage, _fn);
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
        commandLine.var_(_value, _name, _usage);
    }
/**
    // Parse parses the command-line flags from os.Args[1:]. Must be called
    // after all flags are defined and before flags are accessed by the program.
**/
function parse():Void {
        commandLine.parse(stdgo.os.Os.args.__slice__(((1 : GoInt))));
    }
/**
    // Parsed reports whether the command-line flags have been parsed.
**/
function parsed():Bool {
        return commandLine.parsed();
    }
function _commandLineUsage():Void {
        usage();
    }
/**
    // NewFlagSet returns a new, empty flag set with the specified name and
    // error handling property. If the name is not empty, it will be printed
    // in the default usage message and in error messages.
**/
function newFlagSet(_name:GoString, _errorHandling:ErrorHandling):FlagSet {
        var _f:FlagSet = (({ _name : _name, _errorHandling : _errorHandling, usage : null, _parsed : false, _actual : ((null : GoMap<GoString, Flag>)), _formal : ((null : GoMap<GoString, Flag>)), _args : ((null : Slice<GoString>)), _output : ((null : stdgo.io.Io.Writer)) } : FlagSet));
        _f.usage = _f._defaultUsage;
        return _f;
    }
@:keep var _ = {
        try {
            commandLine.usage = _commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:build(stdgo.internal.Macro.wrapper(T_boolValue)) class T_boolValue_static_extension {
    @:pointer
    public static function isBoolFlag(_:T_boolValue, _b:Pointer<T_boolValue>):Bool {
        return true;
    }
    @:pointer
    public static function toString(_:T_boolValue, _b:Pointer<T_boolValue>):GoString {
        return stdgo.strconv.Strconv.formatBool(((_b.value : Bool)));
    }
    @:pointer
    public static function get(_:T_boolValue, _b:Pointer<T_boolValue>):AnyInterface {
        return Go.toInterface(((_b.value : Bool)));
    }
    @:pointer
    public static function set(_:T_boolValue, _b:Pointer<T_boolValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = ((_v : T_boolValue));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_intValue)) class T_intValue_static_extension {
    @:pointer
    public static function toString(_:T_intValue, _i:Pointer<T_intValue>):GoString {
        return stdgo.strconv.Strconv.itoa(((_i.value : GoInt)));
    }
    @:pointer
    public static function get(_:T_intValue, _i:Pointer<T_intValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt)));
    }
    @:pointer
    public static function set(_:T_intValue, _i:Pointer<T_intValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_intValue));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_int64Value)) class T_int64Value_static_extension {
    @:pointer
    public static function toString(_:T_int64Value, _i:Pointer<T_int64Value>):GoString {
        return stdgo.strconv.Strconv.formatInt(((_i.value : GoInt64)), ((10 : GoInt)));
    }
    @:pointer
    public static function get(_:T_int64Value, _i:Pointer<T_int64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt64)));
    }
    @:pointer
    public static function set(_:T_int64Value, _i:Pointer<T_int64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_int64Value));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_uintValue)) class T_uintValue_static_extension {
    @:pointer
    public static function toString(_:T_uintValue, _i:Pointer<T_uintValue>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:pointer
    public static function get(_:T_uintValue, _i:Pointer<T_uintValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt)));
    }
    @:pointer
    public static function set(_:T_uintValue, _i:Pointer<T_uintValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uintValue));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_uint64Value)) class T_uint64Value_static_extension {
    @:pointer
    public static function toString(_:T_uint64Value, _i:Pointer<T_uint64Value>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:pointer
    public static function get(_:T_uint64Value, _i:Pointer<T_uint64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt64)));
    }
    @:pointer
    public static function set(_:T_uint64Value, _i:Pointer<T_uint64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uint64Value));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_stringValue)) class T_stringValue_static_extension {
    @:pointer
    public static function toString(_:T_stringValue, _s:Pointer<T_stringValue>):GoString {
        return ((_s.value : GoString));
    }
    @:pointer
    public static function get(_:T_stringValue, _s:Pointer<T_stringValue>):AnyInterface {
        return Go.toInterface(((_s.value : GoString)));
    }
    @:pointer
    public static function set(_:T_stringValue, _s:Pointer<T_stringValue>, _val:GoString):Error {
        _s.value = ((_val : T_stringValue));
        return ((null : stdgo.Error));
    }
}
@:build(stdgo.internal.Macro.wrapper(T_float64Value)) class T_float64Value_static_extension {
    @:pointer
    public static function toString(_:T_float64Value, _f:Pointer<T_float64Value>):GoString {
        return stdgo.strconv.Strconv.formatFloat(((_f.value : GoFloat64)), ((((("g" : GoString))).code : GoRune)), ((-1 : GoInt)), ((64 : GoInt)));
    }
    @:pointer
    public static function get(_:T_float64Value, _f:Pointer<T_float64Value>):AnyInterface {
        return Go.toInterface(((_f.value : GoFloat64)));
    }
    @:pointer
    public static function set(_:T_float64Value, _f:Pointer<T_float64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, ((64 : GoInt))), _v:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = ((_v : T_float64Value));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_durationValue)) class T_durationValue_static_extension {
    @:pointer
    public static function toString(_:T_durationValue, _d:Pointer<T_durationValue>):GoString {
        return ((new Pointer<stdgo.time.Time.Duration>(() -> ((_d.value : stdgo.time.Time.Duration)), v -> (((_d.value = ((v : T_durationValue))) : stdgo.time.Time.Duration))).value.toString() : GoString));
    }
    @:pointer
    public static function get(_:T_durationValue, _d:Pointer<T_durationValue>):AnyInterface {
        return Go.toInterface(((_d.value : stdgo.time.Time.Duration)));
    }
    @:pointer
    public static function set(_:T_durationValue, _d:Pointer<T_durationValue>, _s:GoString):Error {
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = ((_v : T_durationValue));
        return _err;
    }
}
@:build(stdgo.internal.Macro.wrapper(T_funcValue)) class T_funcValue_static_extension {
    public static function toString(_f:T_funcValue):GoString {
        _f;
        return ("");
    }
    public static function set(_f:T_funcValue, _s:GoString):Error {
        _f;
        return _f(_s);
    }
}
@:build(stdgo.internal.Macro.wrapper(FlagSet)) class FlagSet_static_extension {

}
