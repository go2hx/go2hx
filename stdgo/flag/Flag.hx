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
var commandLine : Ref<FlagSet> = newFlagSet((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((1 : GoInt)));
var usage : () -> Void = function():Void {
    stdgo.fmt.Fmt.fprintf(commandLine.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString)))));
    printDefaults();
};
var defaultUsage : () -> Void = usage;
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
@:structInit @:using(stdgo.flag.Flag.FlagSet_static_extension) class FlagSet {
    @:keep
    public function init(_name:GoString, _errorHandling:ErrorHandling):Void {
        var _f = this;
        _f;
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    @:keep
    public function parsed():Bool {
        var _f = this;
        _f;
        return _f._parsed;
    }
    @:keep
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
    @:keep
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
                _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = ((_s.__slice__(_numMinuses) : GoString));
        if ((((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune)))) {
            return { _0 : false, _1 : _f._failf(((("bad flag syntax: %s" : GoString))), Go.toInterface(_s)) };
        };
        _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
        var _hasValue:Bool = false;
        var _value:GoString = ((("" : GoString)));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((_name != null ? _name[_i] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune))) {
                    _value = ((_name.__slice__(_i + ((1 : GoInt))) : GoString));
                    _hasValue = true;
                    _name = ((_name.__slice__(((0 : GoInt)), _i) : GoString));
                    break;
                };
            });
        };
        var _m:GoMap<GoString, Ref<Flag>> = _f._formal;
        var __tmp__ = (_m != null && _m.__exists__(_name) ? { value : _m[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
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
                        final __tmp__1 = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
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
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _usage():Void {
        var _f = this;
        _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    @:keep
    public function _failf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        var _f = this;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    @:keep
    public function _sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        var _f = this;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), _msg);
        return _msg;
    }
    @:keep
    public function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        var _f = this;
        _f;
        if (stdgo.strings.Strings.hasPrefix(_name, ((("-" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q begins with -" : GoString))), Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ((("=" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q contains =" : GoString))), Go.toInterface(_name)));
        };
        var _flag:Ref<Flag> = ((new Flag(_name, _usage, _value, ((_value.toString() : GoString))) : Flag));
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _0:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f._name == ((("" : GoString)))) {
                _msg = _f._sprintf(((("flag redefined: %s" : GoString))), Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(((("%s flag redefined: %s" : GoString))), Go.toInterface(_f._name), Go.toInterface(_name));
            };
            throw Go.toInterface(_msg);
        };
        if (_f._formal == null) {
            _f._formal = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._formal != null) _f._formal[_name] = _flag;
    }
    @:keep
    public function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        var _f = this;
        _f;
        _f.var_(new T_funcValue_wrapper(((_fn : T_funcValue))), _name, _usage);
    }
    @:keep
    public function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        var _f = this;
        _f;
        var _p:Pointer<stdgo.time.Time.Duration> = Go.pointer(new stdgo.time.Time.Duration());
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        var _f = this;
        _f;
        var _p:Pointer<GoFloat64> = Go.pointer(((0 : GoFloat64)));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        var _f = this;
        _f;
        var _p:Pointer<GoString> = Go.pointer((("" : GoString)));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        var _f = this;
        _f;
        var _p:Pointer<GoUInt64> = Go.pointer(((0 : GoUInt64)));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        var _f = this;
        _f;
        var _p:Pointer<GoUInt> = Go.pointer(((0 : GoUInt)));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        var _f = this;
        _f;
        var _p:Pointer<GoInt64> = Go.pointer(((0 : GoInt64)));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        var _f = this;
        _f;
        var _p:Pointer<GoInt> = Go.pointer(((0 : GoInt)));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        var _f = this;
        _f;
        var _p:Pointer<Bool> = Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        var _f = this;
        _f;
        _f.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function args():Slice<GoString> {
        var _f = this;
        _f;
        return _f._args;
    }
    @:keep
    public function narg():GoInt {
        var _f = this;
        _f;
        return (_f._args != null ? _f._args.length : ((0 : GoInt)));
    }
    @:keep
    public function arg(_i:GoInt):GoString {
        var _f = this;
        _f;
        if ((_i < ((0 : GoInt))) || (_i >= (_f._args != null ? _f._args.length : ((0 : GoInt))))) {
            return ((("" : GoString)));
        };
        return (_f._args != null ? _f._args[_i] : (("" : GoString)));
    }
    @:keep
    public function nflag():GoInt {
        var _f = this;
        _f;
        return (_f._actual != null ? _f._actual.length : ((0 : GoInt)));
    }
    @:keep
    public function _defaultUsage():Void {
        var _f = this;
        _f;
        if (_f._name == ((("" : GoString)))) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage:\n" : GoString))));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    @:keep
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
                    }, _0 = __tmp__.value, _ok = __tmp__.ok;
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
    @:keep
    public function set(_name:GoString, _value:GoString):Error {
        var _f = this;
        _f;
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf(((("no such flag -%v" : GoString))), Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    @:keep
    public function lookup(_name:GoString):Flag {
        var _f = this;
        _f;
        return (_f._formal != null ? _f._formal[_name] : ((null : Ref<Flag>)));
    }
    @:keep
    public function visit(_fn:Flag -> Void):Void {
        var _f = this;
        _f;
        for (_0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    public function visitAll(_fn:Flag -> Void):Void {
        var _f = this;
        _f;
        for (_0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    public function setOutput(_output:stdgo.io.Io.Writer):Void {
        var _f = this;
        _f;
        _f._output = _output;
    }
    @:keep
    public function errorHandling():ErrorHandling {
        var _f = this;
        _f;
        return _f._errorHandling;
    }
    @:keep
    public function name():GoString {
        var _f = this;
        _f;
        return _f._name;
    }
    @:keep
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
    public var _actual : GoMap<GoString, Ref<Flag>> = ((null : GoMap<GoString, Ref<Flag>>));
    public var _formal : GoMap<GoString, Ref<Flag>> = ((null : GoMap<GoString, Ref<Flag>>));
    public var _args : Slice<GoString> = ((null : Slice<GoString>));
    public var _errorHandling : ErrorHandling = new ErrorHandling();
    public var _output : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?usage:() -> Void, ?_name:GoString, ?_parsed:Bool, ?_actual:GoMap<GoString, Ref<Flag>>, ?_formal:GoMap<GoString, Ref<Flag>>, ?_args:Slice<GoString>, ?_errorHandling:ErrorHandling, ?_output:stdgo.io.Io.Writer) {
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
@:named @:using(stdgo.flag.Flag.T_boolValue_static_extension) typedef T_boolValue = Bool;
@:named @:using(stdgo.flag.Flag.T_intValue_static_extension) typedef T_intValue = GoInt;
@:named @:using(stdgo.flag.Flag.T_int64Value_static_extension) typedef T_int64Value = GoInt64;
@:named @:using(stdgo.flag.Flag.T_uintValue_static_extension) typedef T_uintValue = GoUInt;
@:named @:using(stdgo.flag.Flag.T_uint64Value_static_extension) typedef T_uint64Value = GoUInt64;
@:named @:using(stdgo.flag.Flag.T_stringValue_static_extension) typedef T_stringValue = GoString;
@:named @:using(stdgo.flag.Flag.T_float64Value_static_extension) typedef T_float64Value = GoFloat64;
@:named @:using(stdgo.flag.Flag.T_durationValue_static_extension) typedef T_durationValue = stdgo.time.Time.Duration;
@:named @:using(stdgo.flag.Flag.T_funcValue_static_extension) typedef T_funcValue = GoString -> stdgo.Error;
@:named typedef ErrorHandling = GoInt;
function resetForTesting(_usage:() -> Void):Void {
        commandLine = newFlagSet((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((0 : GoInt)));
        commandLine.usage = _commandLineUsage;
        usage = _usage;
    }
function _numError(_err:Error):Error {
        var __tmp__ = try {
            { value : ((((_err.__underlying__().value : Dynamic)) : stdgo.strconv.Strconv.NumError)), ok : true };
        } catch(_) {
            { value : ((null : Ref<stdgo.strconv.Strconv.NumError>)), ok : false };
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
function _sortFlags(_flags:GoMap<GoString, Flag>):Slice<Flag> {
        var _result:Slice<Ref<Flag>> = new Slice<Ref<Flag>>(...[for (i in 0 ... (((_flags != null ? _flags.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Ref<Flag>))]);
        var _i:GoInt = ((0 : GoInt));
        for (_0 => _f in _flags) {
            if (_result != null) _result[_i] = _f;
            _i++;
        };
        stdgo.sort.Sort.slice(Go.toInterface(_result), function(_i:GoInt, _j:GoInt):Bool {
            return (_result != null ? _result[_i] : ((null : Ref<Flag>))).name < (_result != null ? _result[_j] : ((null : Ref<Flag>))).name;
        });
        return _result;
    }
function visitAll(_fn:Flag -> Void):Void {
        commandLine.visitAll(_fn);
    }
function visit(_fn:Flag -> Void):Void {
        commandLine.visit(_fn);
    }
function lookup(_name:GoString):Flag {
        return (commandLine._formal != null ? commandLine._formal[_name] : ((null : Ref<Flag>)));
    }
function set(_name:GoString, _value:GoString):Error {
        return commandLine.set(_name, _value);
    }
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
                                _name = ((_usage.__slice__(_i + ((1 : GoInt)), _j) : GoString));
                                _usage = (((_usage.__slice__(0, _i) : GoString)) + _name) + ((_usage.__slice__(_j + ((1 : GoInt))) : GoString));
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
            _name = ((("" : GoString)));
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
function printDefaults():Void {
        commandLine.printDefaults();
    }
function nflag():GoInt {
        return (commandLine._actual != null ? commandLine._actual.length : ((0 : GoInt)));
    }
function arg(_i:GoInt):GoString {
        return commandLine.arg(_i);
    }
function narg():GoInt {
        return (commandLine._args != null ? commandLine._args.length : ((0 : GoInt)));
    }
function args():Slice<GoString> {
        return commandLine._args;
    }
function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        commandLine.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        return commandLine.bool(_name, _value, _usage);
    }
function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        commandLine.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        return commandLine.int(_name, _value, _usage);
    }
function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        commandLine.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        return commandLine.int64(_name, _value, _usage);
    }
function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        commandLine.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        return commandLine.uint(_name, _value, _usage);
    }
function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        commandLine.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        return commandLine.uint64(_name, _value, _usage);
    }
function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        commandLine.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        return commandLine.toString(_name, _value, _usage);
    }
function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        commandLine.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        return commandLine.float64(_name, _value, _usage);
    }
function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        commandLine.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        return commandLine.duration(_name, _value, _usage);
    }
function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        commandLine.func(_name, _usage, _fn);
    }
function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        commandLine.var_(_value, _name, _usage);
    }
function parse():Void {
        commandLine.parse(((stdgo.os.Os.args.__slice__(((1 : GoInt))) : Slice<GoString>)));
    }
function parsed():Bool {
        return commandLine.parsed();
    }
function _commandLineUsage():Void {
        usage();
    }
function newFlagSet(_name:GoString, _errorHandling:ErrorHandling):FlagSet {
        var _f:Ref<FlagSet> = (({ _name : _name, _errorHandling : _errorHandling, usage : null, _parsed : false, _actual : ((null : GoMap<GoString, Ref<Flag>>)), _formal : ((null : GoMap<GoString, Ref<Flag>>)), _args : ((null : Slice<GoString>)), _output : ((null : stdgo.io.Io.Writer)) } : FlagSet));
        _f.usage = _f._defaultUsage;
        return _f;
    }
@:keep var _ = {
        try {
            commandLine.usage = _commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_boolFlag_wrapper {
    public var __t__ : T_boolFlag;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Value_wrapper {
    public var __t__ : Value;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class Getter_wrapper {
    public var __t__ : Getter;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class FlagSet_wrapper {
    @:keep
    public function init(_name:GoString, _errorHandling:ErrorHandling):Void {
        var _f = __t__;
        _f;
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    @:keep
    public function parsed():Bool {
        var _f = __t__;
        _f;
        return _f._parsed;
    }
    @:keep
    public function parse(_arguments:Slice<GoString>):Error {
        var _f = __t__;
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
    @:keep
    public function _parseOne():{ var _0 : Bool; var _1 : Error; } {
        var _f = __t__;
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
                _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = ((_s.__slice__(_numMinuses) : GoString));
        if ((((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune)))) {
            return { _0 : false, _1 : _f._failf(((("bad flag syntax: %s" : GoString))), Go.toInterface(_s)) };
        };
        _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
        var _hasValue:Bool = false;
        var _value:GoString = ((("" : GoString)));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((_name != null ? _name[_i] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune))) {
                    _value = ((_name.__slice__(_i + ((1 : GoInt))) : GoString));
                    _hasValue = true;
                    _name = ((_name.__slice__(((0 : GoInt)), _i) : GoString));
                    break;
                };
            });
        };
        var _m:GoMap<GoString, Ref<Flag>> = _f._formal;
        var __tmp__ = (_m != null && _m.__exists__(_name) ? { value : _m[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
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
                        final __tmp__1 = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
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
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public function _usage():Void {
        var _f = __t__;
        _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    @:keep
    public function _failf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        var _f = __t__;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    @:keep
    public function _sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        var _f = __t__;
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), _msg);
        return _msg;
    }
    @:keep
    public function var_(_value:Value, _name:GoString, _usage:GoString):Void {
        var _f = __t__;
        _f;
        if (stdgo.strings.Strings.hasPrefix(_name, ((("-" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q begins with -" : GoString))), Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ((("=" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q contains =" : GoString))), Go.toInterface(_name)));
        };
        var _flag:Ref<Flag> = ((new Flag(_name, _usage, _value, ((_value.toString() : GoString))) : Flag));
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _0:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f._name == ((("" : GoString)))) {
                _msg = _f._sprintf(((("flag redefined: %s" : GoString))), Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(((("%s flag redefined: %s" : GoString))), Go.toInterface(_f._name), Go.toInterface(_name));
            };
            throw Go.toInterface(_msg);
        };
        if (_f._formal == null) {
            _f._formal = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._formal != null) _f._formal[_name] = _flag;
    }
    @:keep
    public function func(_name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_funcValue_wrapper(((_fn : T_funcValue))), _name, _usage);
    }
    @:keep
    public function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        var _f = __t__;
        _f;
        var _p:Pointer<stdgo.time.Time.Duration> = Go.pointer(new stdgo.time.Time.Duration());
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoFloat64> = Go.pointer(((0 : GoFloat64)));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function toString(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoString> = Go.pointer((("" : GoString)));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoUInt64> = Go.pointer(((0 : GoUInt64)));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoUInt> = Go.pointer(((0 : GoUInt)));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoInt64> = Go.pointer(((0 : GoInt64)));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public function int(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        var _f = __t__;
        _f;
        var _p:Pointer<GoInt> = Go.pointer(((0 : GoInt)));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function bool(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        var _f = __t__;
        _f;
        var _p:Pointer<Bool> = Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        var _f = __t__;
        _f;
        _f.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
    @:keep
    public function args():Slice<GoString> {
        var _f = __t__;
        _f;
        return _f._args;
    }
    @:keep
    public function narg():GoInt {
        var _f = __t__;
        _f;
        return (_f._args != null ? _f._args.length : ((0 : GoInt)));
    }
    @:keep
    public function arg(_i:GoInt):GoString {
        var _f = __t__;
        _f;
        if ((_i < ((0 : GoInt))) || (_i >= (_f._args != null ? _f._args.length : ((0 : GoInt))))) {
            return ((("" : GoString)));
        };
        return (_f._args != null ? _f._args[_i] : (("" : GoString)));
    }
    @:keep
    public function nflag():GoInt {
        var _f = __t__;
        _f;
        return (_f._actual != null ? _f._actual.length : ((0 : GoInt)));
    }
    @:keep
    public function _defaultUsage():Void {
        var _f = __t__;
        _f;
        if (_f._name == ((("" : GoString)))) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage:\n" : GoString))));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    @:keep
    public function printDefaults():Void {
        var _f = __t__;
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
                    }, _0 = __tmp__.value, _ok = __tmp__.ok;
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
    @:keep
    public function set(_name:GoString, _value:GoString):Error {
        var _f = __t__;
        _f;
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf(((("no such flag -%v" : GoString))), Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    @:keep
    public function lookup(_name:GoString):Flag {
        var _f = __t__;
        _f;
        return (_f._formal != null ? _f._formal[_name] : ((null : Ref<Flag>)));
    }
    @:keep
    public function visit(_fn:Flag -> Void):Void {
        var _f = __t__;
        _f;
        for (_0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    public function visitAll(_fn:Flag -> Void):Void {
        var _f = __t__;
        _f;
        for (_0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    public function setOutput(_output:stdgo.io.Io.Writer):Void {
        var _f = __t__;
        _f;
        _f._output = _output;
    }
    @:keep
    public function errorHandling():ErrorHandling {
        var _f = __t__;
        _f;
        return _f._errorHandling;
    }
    @:keep
    public function name():GoString {
        var _f = __t__;
        _f;
        return _f._name;
    }
    @:keep
    public function output():stdgo.io.Io.Writer {
        var _f = __t__;
        _f;
        if (_f._output == null) {
            return stdgo.os.Os.stderr;
        };
        return _f._output;
    }
    public var __t__ : FlagSet;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class FlagSet_static_extension {
    @:keep
    public static function init( _f:Ref<FlagSet>, _name:GoString, _errorHandling:ErrorHandling):Void {
        _f;
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    @:keep
    public static function parsed( _f:Ref<FlagSet>):Bool {
        _f;
        return _f._parsed;
    }
    @:keep
    public static function parse( _f:Ref<FlagSet>, _arguments:Slice<GoString>):Error {
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
    @:keep
    public static function _parseOne( _f:Ref<FlagSet>):{ var _0 : Bool; var _1 : Error; } {
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
                _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = ((_s.__slice__(_numMinuses) : GoString));
        if ((((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("-" : GoString))).code : GoRune)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune)))) {
            return { _0 : false, _1 : _f._failf(((("bad flag syntax: %s" : GoString))), Go.toInterface(_s)) };
        };
        _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
        var _hasValue:Bool = false;
        var _value:GoString = ((("" : GoString)));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((_name != null ? _name[_i] : ((0 : GoUInt8))) == ((((("=" : GoString))).code : GoRune))) {
                    _value = ((_name.__slice__(_i + ((1 : GoInt))) : GoString));
                    _hasValue = true;
                    _name = ((_name.__slice__(((0 : GoInt)), _i) : GoString));
                    break;
                };
            });
        };
        var _m:GoMap<GoString, Ref<Flag>> = _f._formal;
        var __tmp__ = (_m != null && _m.__exists__(_name) ? { value : _m[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
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
                        final __tmp__1 = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
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
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _usage( _f:Ref<FlagSet>):Void {
        _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    @:keep
    public static function _failf( _f:Ref<FlagSet>, _format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    @:keep
    public static function _sprintf( _f:Ref<FlagSet>, _format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        _f;
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), _msg);
        return _msg;
    }
    @:keep
    public static function var_( _f:Ref<FlagSet>, _value:Value, _name:GoString, _usage:GoString):Void {
        _f;
        if (stdgo.strings.Strings.hasPrefix(_name, ((("-" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q begins with -" : GoString))), Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ((("=" : GoString))))) {
            throw Go.toInterface(_f._sprintf(((("flag %q contains =" : GoString))), Go.toInterface(_name)));
        };
        var _flag:Ref<Flag> = ((new Flag(_name, _usage, _value, ((_value.toString() : GoString))) : Flag));
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _0:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f._name == ((("" : GoString)))) {
                _msg = _f._sprintf(((("flag redefined: %s" : GoString))), Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(((("%s flag redefined: %s" : GoString))), Go.toInterface(_f._name), Go.toInterface(_name));
            };
            throw Go.toInterface(_msg);
        };
        if (_f._formal == null) {
            _f._formal = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._formal != null) _f._formal[_name] = _flag;
    }
    @:keep
    public static function func( _f:Ref<FlagSet>, _name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        _f;
        _f.var_(new T_funcValue_wrapper(((_fn : T_funcValue))), _name, _usage);
    }
    @:keep
    public static function duration( _f:Ref<FlagSet>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        _f;
        var _p:Pointer<stdgo.time.Time.Duration> = Go.pointer(new stdgo.time.Time.Duration());
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function durationVar( _f:Ref<FlagSet>, _p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        _f;
        _f.var_(new T_durationValue_wrapper(_newDurationValue(_value, _p)), _name, _usage);
    }
    @:keep
    public static function float64( _f:Ref<FlagSet>, _name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        _f;
        var _p:Pointer<GoFloat64> = Go.pointer(((0 : GoFloat64)));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function float64Var( _f:Ref<FlagSet>, _p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        _f;
        _f.var_(new T_float64Value_wrapper(_newFloat64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public static function toString( _f:Ref<FlagSet>, _name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        _f;
        var _p:Pointer<GoString> = Go.pointer((("" : GoString)));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function stringVar( _f:Ref<FlagSet>, _p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        _f;
        _f.var_(new T_stringValue_wrapper(_newStringValue(_value, _p)), _name, _usage);
    }
    @:keep
    public static function uint64( _f:Ref<FlagSet>, _name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        _f;
        var _p:Pointer<GoUInt64> = Go.pointer(((0 : GoUInt64)));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function uint64Var( _f:Ref<FlagSet>, _p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        _f;
        _f.var_(new T_uint64Value_wrapper(_newUint64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public static function uint( _f:Ref<FlagSet>, _name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        _f;
        var _p:Pointer<GoUInt> = Go.pointer(((0 : GoUInt)));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function uintVar( _f:Ref<FlagSet>, _p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        _f;
        _f.var_(new T_uintValue_wrapper(_newUintValue(_value, _p)), _name, _usage);
    }
    @:keep
    public static function int64( _f:Ref<FlagSet>, _name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        _f;
        var _p:Pointer<GoInt64> = Go.pointer(((0 : GoInt64)));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function int64Var( _f:Ref<FlagSet>, _p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        _f;
        _f.var_(new T_int64Value_wrapper(_newInt64Value(_value, _p)), _name, _usage);
    }
    @:keep
    public static function int( _f:Ref<FlagSet>, _name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        _f;
        var _p:Pointer<GoInt> = Go.pointer(((0 : GoInt)));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function intVar( _f:Ref<FlagSet>, _p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        _f;
        _f.var_(new T_intValue_wrapper(_newIntValue(_value, _p)), _name, _usage);
    }
    @:keep
    public static function bool( _f:Ref<FlagSet>, _name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        _f;
        var _p:Pointer<Bool> = Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    @:keep
    public static function boolVar( _f:Ref<FlagSet>, _p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        _f;
        _f.var_(new T_boolValue_wrapper(_newBoolValue(_value, _p)), _name, _usage);
    }
    @:keep
    public static function args( _f:Ref<FlagSet>):Slice<GoString> {
        _f;
        return _f._args;
    }
    @:keep
    public static function narg( _f:Ref<FlagSet>):GoInt {
        _f;
        return (_f._args != null ? _f._args.length : ((0 : GoInt)));
    }
    @:keep
    public static function arg( _f:Ref<FlagSet>, _i:GoInt):GoString {
        _f;
        if ((_i < ((0 : GoInt))) || (_i >= (_f._args != null ? _f._args.length : ((0 : GoInt))))) {
            return ((("" : GoString)));
        };
        return (_f._args != null ? _f._args[_i] : (("" : GoString)));
    }
    @:keep
    public static function nflag( _f:Ref<FlagSet>):GoInt {
        _f;
        return (_f._actual != null ? _f._actual.length : ((0 : GoInt)));
    }
    @:keep
    public static function _defaultUsage( _f:Ref<FlagSet>):Void {
        _f;
        if (_f._name == ((("" : GoString)))) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage:\n" : GoString))));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((("Usage of %s:\n" : GoString))), Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    @:keep
    public static function printDefaults( _f:Ref<FlagSet>):Void {
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
                    }, _0 = __tmp__.value, _ok = __tmp__.ok;
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
    @:keep
    public static function set( _f:Ref<FlagSet>, _name:GoString, _value:GoString):Error {
        _f;
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Ref<Flag>)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf(((("no such flag -%v" : GoString))), Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    @:keep
    public static function lookup( _f:Ref<FlagSet>, _name:GoString):Flag {
        _f;
        return (_f._formal != null ? _f._formal[_name] : ((null : Ref<Flag>)));
    }
    @:keep
    public static function visit( _f:Ref<FlagSet>, _fn:Flag -> Void):Void {
        _f;
        for (_0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    public static function visitAll( _f:Ref<FlagSet>, _fn:Flag -> Void):Void {
        _f;
        for (_0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    public static function setOutput( _f:Ref<FlagSet>, _output:stdgo.io.Io.Writer):Void {
        _f;
        _f._output = _output;
    }
    @:keep
    public static function errorHandling( _f:Ref<FlagSet>):ErrorHandling {
        _f;
        return _f._errorHandling;
    }
    @:keep
    public static function name( _f:Ref<FlagSet>):GoString {
        _f;
        return _f._name;
    }
    @:keep
    public static function output( _f:Ref<FlagSet>):stdgo.io.Io.Writer {
        _f;
        if (_f._output == null) {
            return stdgo.os.Os.stderr;
        };
        return _f._output;
    }
}
class Flag_wrapper {
    public var __t__ : Flag;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T_boolValue_wrapper {
    @:keep
    @:pointer
    public function isBoolFlag():Bool {
        var _b = Go.pointer(__t__);
        return true;
    }
    @:keep
    @:pointer
    public function toString():GoString {
        var _b = Go.pointer(__t__);
        return stdgo.strconv.Strconv.formatBool(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _b = Go.pointer(__t__);
        return Go.toInterface(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _b = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = ((_v : T_boolValue));
        return _err;
    }
    public var __t__ : T_boolValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_boolValue_static_extension {
    @:keep
    @:pointer
    public static function isBoolFlag( _b:Pointer<T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    public static function toString( _b:Pointer<T_boolValue>):GoString {
        return stdgo.strconv.Strconv.formatBool(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    public static function get( _b:Pointer<T_boolValue>):AnyInterface {
        return Go.toInterface(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    public static function set( _b:Pointer<T_boolValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = ((_v : T_boolValue));
        return _err;
    }
}
class T_intValue_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _i = Go.pointer(__t__);
        return stdgo.strconv.Strconv.itoa(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _i = Go.pointer(__t__);
        return Go.toInterface(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _i = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_intValue));
        return _err;
    }
    public var __t__ : T_intValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_intValue_static_extension {
    @:keep
    @:pointer
    public static function toString( _i:Pointer<T_intValue>):GoString {
        return stdgo.strconv.Strconv.itoa(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    public static function get( _i:Pointer<T_intValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    public static function set( _i:Pointer<T_intValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_intValue));
        return _err;
    }
}
class T_int64Value_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _i = Go.pointer(__t__);
        return stdgo.strconv.Strconv.formatInt(((_i.value : GoInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _i = Go.pointer(__t__);
        return Go.toInterface(((_i.value : GoInt64)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _i = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_int64Value));
        return _err;
    }
    public var __t__ : T_int64Value;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_int64Value_static_extension {
    @:keep
    @:pointer
    public static function toString( _i:Pointer<T_int64Value>):GoString {
        return stdgo.strconv.Strconv.formatInt(((_i.value : GoInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public static function get( _i:Pointer<T_int64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt64)));
    }
    @:keep
    @:pointer
    public static function set( _i:Pointer<T_int64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_int64Value));
        return _err;
    }
}
class T_uintValue_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _i = Go.pointer(__t__);
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _i = Go.pointer(__t__);
        return Go.toInterface(((_i.value : GoUInt)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _i = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uintValue));
        return _err;
    }
    public var __t__ : T_uintValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_uintValue_static_extension {
    @:keep
    @:pointer
    public static function toString( _i:Pointer<T_uintValue>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public static function get( _i:Pointer<T_uintValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt)));
    }
    @:keep
    @:pointer
    public static function set( _i:Pointer<T_uintValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uintValue));
        return _err;
    }
}
class T_uint64Value_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _i = Go.pointer(__t__);
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _i = Go.pointer(__t__);
        return Go.toInterface(((_i.value : GoUInt64)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _i = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uint64Value));
        return _err;
    }
    public var __t__ : T_uint64Value;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_uint64Value_static_extension {
    @:keep
    @:pointer
    public static function toString( _i:Pointer<T_uint64Value>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    public static function get( _i:Pointer<T_uint64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt64)));
    }
    @:keep
    @:pointer
    public static function set( _i:Pointer<T_uint64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uint64Value));
        return _err;
    }
}
class T_stringValue_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _s = Go.pointer(__t__);
        return ((_s.value : GoString));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _s = Go.pointer(__t__);
        return Go.toInterface(((_s.value : GoString)));
    }
    @:keep
    @:pointer
    public function set(_val:GoString):Error {
        var _s = Go.pointer(__t__);
        _s.value = ((_val : T_stringValue));
        return ((null : stdgo.Error));
    }
    public var __t__ : T_stringValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_stringValue_static_extension {
    @:keep
    @:pointer
    public static function toString( _s:Pointer<T_stringValue>):GoString {
        return ((_s.value : GoString));
    }
    @:keep
    @:pointer
    public static function get( _s:Pointer<T_stringValue>):AnyInterface {
        return Go.toInterface(((_s.value : GoString)));
    }
    @:keep
    @:pointer
    public static function set( _s:Pointer<T_stringValue>, _val:GoString):Error {
        _s.value = ((_val : T_stringValue));
        return ((null : stdgo.Error));
    }
}
class T_float64Value_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _f = Go.pointer(__t__);
        return stdgo.strconv.Strconv.formatFloat(((_f.value : GoFloat64)), ((((("g" : GoString))).code : GoRune)), ((-1 : GoInt)), ((64 : GoInt)));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _f = Go.pointer(__t__);
        return Go.toInterface(((_f.value : GoFloat64)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _f = Go.pointer(__t__);
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, ((64 : GoInt))), _v:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = ((_v : T_float64Value));
        return _err;
    }
    public var __t__ : T_float64Value;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_float64Value_static_extension {
    @:keep
    @:pointer
    public static function toString( _f:Pointer<T_float64Value>):GoString {
        return stdgo.strconv.Strconv.formatFloat(((_f.value : GoFloat64)), ((((("g" : GoString))).code : GoRune)), ((-1 : GoInt)), ((64 : GoInt)));
    }
    @:keep
    @:pointer
    public static function get( _f:Pointer<T_float64Value>):AnyInterface {
        return Go.toInterface(((_f.value : GoFloat64)));
    }
    @:keep
    @:pointer
    public static function set( _f:Pointer<T_float64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, ((64 : GoInt))), _v:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = ((_v : T_float64Value));
        return _err;
    }
}
class T_durationValue_wrapper {
    @:keep
    @:pointer
    public function toString():GoString {
        var _d = Go.pointer(__t__);
        return ((new Pointer<stdgo.time.Time.Duration>(() -> ((_d.value : stdgo.time.Time.Duration)), v -> (((_d.value = ((v : T_durationValue))) : stdgo.time.Time.Duration))).value.toString() : GoString));
    }
    @:keep
    @:pointer
    public function get():AnyInterface {
        var _d = Go.pointer(__t__);
        return Go.toInterface(((_d.value : stdgo.time.Time.Duration)));
    }
    @:keep
    @:pointer
    public function set(_s:GoString):Error {
        var _d = Go.pointer(__t__);
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = ((_v : T_durationValue));
        return _err;
    }
    public var __t__ : T_durationValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_durationValue_static_extension {
    @:keep
    @:pointer
    public static function toString( _d:Pointer<T_durationValue>):GoString {
        return ((new Pointer<stdgo.time.Time.Duration>(() -> ((_d.value : stdgo.time.Time.Duration)), v -> (((_d.value = ((v : T_durationValue))) : stdgo.time.Time.Duration))).value.toString() : GoString));
    }
    @:keep
    @:pointer
    public static function get( _d:Pointer<T_durationValue>):AnyInterface {
        return Go.toInterface(((_d.value : stdgo.time.Time.Duration)));
    }
    @:keep
    @:pointer
    public static function set( _d:Pointer<T_durationValue>, _s:GoString):Error {
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = ((_v : T_durationValue));
        return _err;
    }
}
class T_funcValue_wrapper {
    @:keep
    public function toString():GoString {
        var _f = __t__;
        _f;
        return ((("" : GoString)));
    }
    @:keep
    public function set(_s:GoString):Error {
        var _f = __t__;
        _f;
        return _f(_s);
    }
    public var __t__ : T_funcValue;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
@:keep class T_funcValue_static_extension {
    @:keep
    public static function toString( _f:T_funcValue):GoString {
        _f;
        return ((("" : GoString)));
    }
    @:keep
    public static function set( _f:T_funcValue, _s:GoString):Error {
        _f;
        return _f(_s);
    }
}
class ErrorHandling_wrapper {
    public var __t__ : ErrorHandling;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
