package stdgo._internal.flag;
private var __go2hxdoc__package : Bool;
final continueOnError : stdgo._internal.flag.Flag.ErrorHandling = (2 : stdgo._internal.flag.Flag.ErrorHandling);
final exitOnError = (2 : stdgo._internal.flag.Flag.ErrorHandling);
final panicOnError = (2 : stdgo._internal.flag.Flag.ErrorHandling);
var errHelp : stdgo.Error = stdgo._internal.errors.Errors.new_(("flag: help requested" : stdgo.GoString));
var _errParse : stdgo.Error = stdgo._internal.errors.Errors.new_(("parse error" : stdgo.GoString));
var _errRange : stdgo.Error = stdgo._internal.errors.Errors.new_(("value out of range" : stdgo.GoString));
var commandLine : stdgo.Ref<stdgo._internal.flag.Flag.FlagSet> = newFlagSet(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__(), (1 : stdgo._internal.flag.Flag.ErrorHandling));
var usage : () -> Void = function():Void {
        stdgo._internal.fmt.Fmt.fprintf(commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]));
        printDefaults();
    };
var defaultUsage : () -> Void = usage;
@:keep class T_boolFlag_static_extension {
    static public function isBoolFlag(t:T_boolFlag):Bool return t.isBoolFlag();
}
typedef T_boolFlag = stdgo.StructType & {
    > Value,
    /**
        
        
        
    **/
    public dynamic function isBoolFlag():Bool;
};
@:keep class Value_static_extension {
    static public function set(t:Value, _0:stdgo.GoString):stdgo.Error return t.set(_0);
    static public function string(t:Value):stdgo.GoString return t.string();
}
typedef Value = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function set(_0:stdgo.GoString):stdgo.Error;
};
@:keep class Getter_static_extension {
    static public function get(t:Getter):stdgo.AnyInterface return t.get();
}
typedef Getter = stdgo.StructType & {
    > Value,
    /**
        
        
        
    **/
    public dynamic function get():stdgo.AnyInterface;
};
@:structInit @:private @:using(stdgo._internal.flag.Flag.T_textValue_static_extension) class T_textValue {
    public var _p : stdgo._internal.encoding.Encoding.TextUnmarshaler = (null : stdgo._internal.encoding.Encoding.TextUnmarshaler);
    public function new(?_p:stdgo._internal.encoding.Encoding.TextUnmarshaler) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_textValue(_p);
    }
}
@:structInit @:using(stdgo._internal.flag.Flag.FlagSet_static_extension) class FlagSet {
    public var usage : () -> Void = null;
    public var _name : stdgo.GoString = "";
    public var _parsed : Bool = false;
    public var _actual : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
    public var _formal : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _errorHandling : stdgo._internal.flag.Flag.ErrorHandling = ((0 : stdgo.GoInt) : stdgo._internal.flag.Flag.ErrorHandling);
    public var _output : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _undef : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?usage:() -> Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo._internal.flag.Flag.ErrorHandling, ?_output:stdgo._internal.io.Io.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
        if (usage != null) this.usage = usage;
        if (_name != null) this._name = _name;
        if (_parsed != null) this._parsed = _parsed;
        if (_actual != null) this._actual = _actual;
        if (_formal != null) this._formal = _formal;
        if (_args != null) this._args = _args;
        if (_errorHandling != null) this._errorHandling = _errorHandling;
        if (_output != null) this._output = _output;
        if (_undef != null) this._undef = _undef;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FlagSet(usage, _name, _parsed, _actual, _formal, _args, _errorHandling, _output, _undef);
    }
}
@:structInit class Flag {
    public var name : stdgo.GoString = "";
    public var usage : stdgo.GoString = "";
    public var value : stdgo._internal.flag.Flag.Value = (null : stdgo._internal.flag.Flag.Value);
    public var defValue : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo._internal.flag.Flag.Value, ?defValue:stdgo.GoString) {
        if (name != null) this.name = name;
        if (usage != null) this.usage = usage;
        if (value != null) this.value = value;
        if (defValue != null) this.defValue = defValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Flag(name, usage, value, defValue);
    }
}
@:named @:using(stdgo._internal.flag.Flag.T_boolValue_static_extension) typedef T_boolValue = Bool;
@:named @:using(stdgo._internal.flag.Flag.T_intValue_static_extension) typedef T_intValue = stdgo.GoInt;
@:named @:using(stdgo._internal.flag.Flag.T_int64Value_static_extension) typedef T_int64Value = stdgo.GoInt64;
@:named @:using(stdgo._internal.flag.Flag.T_uintValue_static_extension) typedef T_uintValue = stdgo.GoUInt;
@:named @:using(stdgo._internal.flag.Flag.T_uint64Value_static_extension) typedef T_uint64Value = stdgo.GoUInt64;
@:named @:using(stdgo._internal.flag.Flag.T_stringValue_static_extension) typedef T_stringValue = stdgo.GoString;
@:named @:using(stdgo._internal.flag.Flag.T_float64Value_static_extension) typedef T_float64Value = stdgo.GoFloat64;
@:named @:using(stdgo._internal.flag.Flag.T_durationValue_static_extension) typedef T_durationValue = stdgo._internal.time.Time.Duration;
@:named @:using(stdgo._internal.flag.Flag.T_funcValue_static_extension) typedef T_funcValue = stdgo.GoString -> stdgo.Error;
@:named @:using(stdgo._internal.flag.Flag.T_boolFuncValue_static_extension) typedef T_boolFuncValue = stdgo.GoString -> stdgo.Error;
@:named typedef ErrorHandling = stdgo.GoInt;
function resetForTesting(_usage:() -> Void):Void {
        commandLine = newFlagSet(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__(), (0 : stdgo._internal.flag.Flag.ErrorHandling));
        commandLine.setOutput(stdgo._internal.io.Io.discard);
        commandLine.usage = _commandLineUsage;
        usage = _usage;
    }
function _numError(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.strconv.Strconv.NumError>), _1 : false };
        }, _ne = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return _err;
        };
        if (stdgo.Go.toInterface(_ne.err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv.errSyntax))) {
            return _errParse;
        };
        if (stdgo.Go.toInterface(_ne.err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv.errRange))) {
            return _errRange;
        };
        return _err;
    }
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<T_boolValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_boolValue>(() -> (_p.value : stdgo._internal.flag.Flag.T_boolValue), v -> (_p.value = (v : Bool) : stdgo._internal.flag.Flag.T_boolValue));
    }
function _newIntValue(_val:stdgo.GoInt, _p:stdgo.Pointer<stdgo.GoInt>):stdgo.Pointer<T_intValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_intValue>(() -> (_p.value : stdgo._internal.flag.Flag.T_intValue), v -> (_p.value = (v : stdgo.GoInt) : stdgo._internal.flag.Flag.T_intValue));
    }
function _newInt64Value(_val:stdgo.GoInt64, _p:stdgo.Pointer<stdgo.GoInt64>):stdgo.Pointer<T_int64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_int64Value>(() -> (_p.value : stdgo._internal.flag.Flag.T_int64Value), v -> (_p.value = (v : stdgo.GoInt64) : stdgo._internal.flag.Flag.T_int64Value));
    }
function _newUintValue(_val:stdgo.GoUInt, _p:stdgo.Pointer<stdgo.GoUInt>):stdgo.Pointer<T_uintValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_uintValue>(() -> (_p.value : stdgo._internal.flag.Flag.T_uintValue), v -> (_p.value = (v : stdgo.GoUInt) : stdgo._internal.flag.Flag.T_uintValue));
    }
function _newUint64Value(_val:stdgo.GoUInt64, _p:stdgo.Pointer<stdgo.GoUInt64>):stdgo.Pointer<T_uint64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_uint64Value>(() -> (_p.value : stdgo._internal.flag.Flag.T_uint64Value), v -> (_p.value = (v : stdgo.GoUInt64) : stdgo._internal.flag.Flag.T_uint64Value));
    }
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<T_stringValue> {
        _p.value = _val?.__copy__();
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue>(() -> (_p.value : stdgo._internal.flag.Flag.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : stdgo._internal.flag.Flag.T_stringValue));
    }
function _newFloat64Value(_val:stdgo.GoFloat64, _p:stdgo.Pointer<stdgo.GoFloat64>):stdgo.Pointer<T_float64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_float64Value>(() -> (_p.value : stdgo._internal.flag.Flag.T_float64Value), v -> (_p.value = (v : stdgo.GoFloat64) : stdgo._internal.flag.Flag.T_float64Value));
    }
function _newDurationValue(_val:stdgo._internal.time.Time.Duration, _p:stdgo.Pointer<stdgo._internal.time.Time.Duration>):stdgo.Pointer<T_durationValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo._internal.flag.Flag.T_durationValue>(() -> (_p.value : stdgo._internal.flag.Flag.T_durationValue), v -> (_p.value = (v : stdgo._internal.time.Time.Duration) : stdgo._internal.flag.Flag.T_durationValue));
    }
function _newTextValue(_val:stdgo._internal.encoding.Encoding.TextMarshaler, _p:stdgo._internal.encoding.Encoding.TextUnmarshaler):T_textValue {
        var _ptrVal:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_p))?.__copy__();
        if (_ptrVal.kind() != ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
            throw stdgo.Go.toInterface(("variable value type must be a pointer" : stdgo.GoString));
        };
        var _defVal:stdgo._internal.reflect.Reflect.Value = stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(_val))?.__copy__();
        if (_defVal.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
            _defVal = _defVal.elem()?.__copy__();
        };
        if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("default type does not match variable type: %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_defVal.type()), stdgo.Go.toInterface(_ptrVal.type().elem())));
        };
        _ptrVal.elem().set(_defVal?.__copy__());
        return (new stdgo._internal.flag.Flag.T_textValue(_p) : stdgo._internal.flag.Flag.T_textValue);
    }
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<Flag>>):stdgo.Slice<stdgo.Ref<Flag>> {
        var _result = (new stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>((_flags.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        for (__0 => _f in _flags) {
            _result[(_i : stdgo.GoInt)] = _f;
            _i++;
        };
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_result), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_result[(_i : stdgo.GoInt)].name < _result[(_j : stdgo.GoInt)].name : Bool);
        });
        return _result;
    }
function visitAll(_fn:stdgo.Ref<Flag> -> Void):Void {
        commandLine.visitAll(_fn);
    }
function visit(_fn:stdgo.Ref<Flag> -> Void):Void {
        commandLine.visit(_fn);
    }
function lookup(_name:stdgo.GoString):stdgo.Ref<Flag> {
        return (commandLine._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>));
    }
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        return commandLine._set(_name?.__copy__(), _value?.__copy__());
    }
function _isZeroValue(_flag:stdgo.Ref<Flag>, _value:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _ok:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        try {
            var _typ:stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(_flag.value));
            var _z:stdgo._internal.reflect.Reflect.Value = ({} : stdgo._internal.reflect.Reflect.Value);
            if (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                _z = stdgo._internal.reflect.Reflect.new_(_typ.elem())?.__copy__();
            } else {
                _z = stdgo._internal.reflect.Reflect.zero(_typ)?.__copy__();
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e:stdgo.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            if (_typ.kind() == ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
                                _typ = _typ.elem();
                            };
                            _err = stdgo._internal.fmt.Fmt.errorf(("panic calling String method on zero %v for flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_flag.name), _e);
                        };
                    };
                };
                a();
            });
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _value == (((stdgo.Go.typeAssert((_z.interface_() : Value)) : Value).string() : stdgo.GoString)), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _ok, _1 : _err };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _ok, _1 : _err };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function unquoteUsage(_flag:stdgo.Ref<Flag>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _usage:stdgo.GoString = ("" : stdgo.GoString);
        _usage = _flag.usage?.__copy__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_usage.length) : Bool), _i++, {
                if (_usage[(_i : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                    {
                        var _j:stdgo.GoInt = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (_usage.length) : Bool), _j++, {
                            if (_usage[(_j : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                                _name = (_usage.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.GoString)?.__copy__();
                                _usage = (((_usage.__slice__(0, _i) : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + (_usage.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                return { _0 : _name?.__copy__(), _1 : _usage?.__copy__() };
                            };
                        });
                    };
                    break;
                };
            });
        };
        _name = ("value" : stdgo.GoString);
        {
            final __type__ = _flag.value;
            if (stdgo.Go.typeEquals((__type__ : T_boolFlag))) {
                var _fv:stdgo._internal.flag.Flag.T_boolFlag = __type__ == null ? (null : stdgo._internal.flag.Flag.T_boolFlag) : cast __type__;
                if (_fv.isBoolFlag()) {
                    _name = stdgo.Go.str()?.__copy__();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_durationValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag.T_durationValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_durationValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_durationValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_durationValue>) : __type__.__underlying__().value;
                _name = ("duration" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_float64Value>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag.T_float64Value> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_float64Value>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_float64Value>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_float64Value>) : __type__.__underlying__().value;
                _name = ("float" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_intValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_int64Value>))) {
                var _fv:stdgo._internal.flag.Flag.Value = __type__ == null ? (null : stdgo._internal.flag.Flag.Value) : cast __type__;
                _name = ("int" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_stringValue>))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue>) : __type__.__underlying__().value;
                _name = ("string" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_uintValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_uint64Value>))) {
                var _fv:stdgo._internal.flag.Flag.Value = __type__ == null ? (null : stdgo._internal.flag.Flag.Value) : cast __type__;
                _name = ("uint" : stdgo.GoString);
            };
        };
        return { _0 : _name, _1 : _usage };
    }
function printDefaults():Void {
        commandLine.printDefaults();
    }
function nflag():stdgo.GoInt {
        return (commandLine._actual.length);
    }
function arg(_i:stdgo.GoInt):stdgo.GoString {
        return commandLine.arg(_i)?.__copy__();
    }
function narg():stdgo.GoInt {
        return (commandLine._args.length);
    }
function args():stdgo.Slice<stdgo.GoString> {
        return commandLine._args;
    }
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        return commandLine.bool_(_name?.__copy__(), _value, _usage?.__copy__());
    }
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        return commandLine.int_(_name?.__copy__(), _value, _usage?.__copy__());
    }
function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newInt64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        return commandLine.int64(_name?.__copy__(), _value, _usage?.__copy__());
    }
function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newUintValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        return commandLine.uint(_name?.__copy__(), _value, _usage?.__copy__());
    }
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        return commandLine.uint64(_name?.__copy__(), _value, _usage?.__copy__());
    }
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newStringValue(_value?.__copy__(), _p)), _name?.__copy__(), _usage?.__copy__());
    }
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        return commandLine.string(_name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
    }
function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newFloat64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        return commandLine.float64(_name?.__copy__(), _value, _usage?.__copy__());
    }
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time.Duration> {
        return commandLine.duration(_name?.__copy__(), _value, _usage?.__copy__());
    }
function textVar(_p:stdgo._internal.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        commandLine.func(_name?.__copy__(), _usage?.__copy__(), _fn);
    }
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        commandLine.boolFunc(_name?.__copy__(), _usage?.__copy__(), _fn);
    }
function var_(_value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        commandLine.var_(_value, _name?.__copy__(), _usage?.__copy__());
    }
function parse():Void {
        commandLine.parse((stdgo._internal.os.Os.args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
    }
function parsed():Bool {
        return commandLine.parsed();
    }
function _commandLineUsage():Void {
        usage();
    }
function newFlagSet(_name:stdgo.GoString, _errorHandling:ErrorHandling):stdgo.Ref<FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _errorHandling : _errorHandling } : stdgo._internal.flag.Flag.FlagSet)) : stdgo.Ref<stdgo._internal.flag.Flag.FlagSet>);
        _f.usage = _f._defaultUsage;
        return _f;
    }
@:keep var _ = {
        try {
            commandLine.usage = _commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_textValue_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function get():stdgo.AnyInterface return __self__.value.get();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_textValue_asInterface) class T_textValue_static_extension {
    @:keep
    static public function string( _v:T_textValue):stdgo.GoString {
        @:recv var _v:T_textValue = _v?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_v._p) : stdgo._internal.encoding.Encoding.TextMarshaler)) : stdgo._internal.encoding.Encoding.TextMarshaler), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.encoding.Encoding.TextMarshaler), _1 : false };
            }, _m = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return (_b : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function get( _v:T_textValue):stdgo.AnyInterface {
        @:recv var _v:T_textValue = _v?.__copy__();
        return stdgo.Go.toInterface(_v._p);
    }
    @:keep
    static public function set( _v:T_textValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _v:T_textValue = _v?.__copy__();
        return _v._p.unmarshalText((_s : stdgo.Slice<stdgo.GoByte>));
    }
}
class FlagSet_asInterface {
    @:keep
    public dynamic function init(_name:stdgo.GoString, _errorHandling:ErrorHandling):Void __self__.value.init(_name, _errorHandling);
    @:keep
    public dynamic function parsed():Bool return __self__.value.parsed();
    @:keep
    public dynamic function parse(_arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error return __self__.value.parse(_arguments);
    @:keep
    public dynamic function _parseOne():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._parseOne();
    @:keep
    public dynamic function _usage():Void __self__.value._usage();
    @:keep
    public dynamic function _failf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return __self__.value._failf(_format, ..._a);
    @:keep
    public dynamic function _sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return __self__.value._sprintf(_format, ..._a);
    @:keep
    public dynamic function var_(_value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void __self__.value.var_(_value, _name, _usage);
    @:keep
    public dynamic function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void __self__.value.boolFunc(_name, _usage, _fn);
    @:keep
    public dynamic function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void __self__.value.func(_name, _usage, _fn);
    @:keep
    public dynamic function textVar(_p:stdgo._internal.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void __self__.value.textVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time.Duration> return __self__.value.duration(_name, _value, _usage);
    @:keep
    public dynamic function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):Void __self__.value.durationVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> return __self__.value.float64(_name, _value, _usage);
    @:keep
    public dynamic function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void __self__.value.float64Var(_p, _name, _value, _usage);
    @:keep
    public dynamic function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> return __self__.value.string(_name, _value, _usage);
    @:keep
    public dynamic function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void __self__.value.stringVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> return __self__.value.uint64(_name, _value, _usage);
    @:keep
    public dynamic function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void __self__.value.uint64Var(_p, _name, _value, _usage);
    @:keep
    public dynamic function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> return __self__.value.uint(_name, _value, _usage);
    @:keep
    public dynamic function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void __self__.value.uintVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> return __self__.value.int64(_name, _value, _usage);
    @:keep
    public dynamic function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void __self__.value.int64Var(_p, _name, _value, _usage);
    @:keep
    public dynamic function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> return __self__.value.int_(_name, _value, _usage);
    @:keep
    public dynamic function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void __self__.value.intVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> return __self__.value.bool_(_name, _value, _usage);
    @:keep
    public dynamic function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void __self__.value.boolVar(_p, _name, _value, _usage);
    @:keep
    public dynamic function args():stdgo.Slice<stdgo.GoString> return __self__.value.args();
    @:keep
    public dynamic function narg():stdgo.GoInt return __self__.value.narg();
    @:keep
    public dynamic function arg(_i:stdgo.GoInt):stdgo.GoString return __self__.value.arg(_i);
    @:keep
    public dynamic function nflag():stdgo.GoInt return __self__.value.nflag();
    @:keep
    public dynamic function _defaultUsage():Void __self__.value._defaultUsage();
    @:keep
    public dynamic function printDefaults():Void __self__.value.printDefaults();
    @:keep
    public dynamic function _set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return __self__.value._set(_name, _value);
    @:keep
    public dynamic function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return __self__.value.set(_name, _value);
    @:keep
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<Flag> return __self__.value.lookup(_name);
    @:keep
    public dynamic function visit(_fn:stdgo.Ref<Flag> -> Void):Void __self__.value.visit(_fn);
    @:keep
    public dynamic function visitAll(_fn:stdgo.Ref<Flag> -> Void):Void __self__.value.visitAll(_fn);
    @:keep
    public dynamic function setOutput(_output:stdgo._internal.io.Io.Writer):Void __self__.value.setOutput(_output);
    @:keep
    public dynamic function errorHandling():ErrorHandling return __self__.value.errorHandling();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    @:keep
    public dynamic function output():stdgo._internal.io.Io.Writer return __self__.value.output();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FlagSet>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
    @:keep
    static public function init( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _errorHandling:ErrorHandling):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f._name = _name?.__copy__();
        _f._errorHandling = _errorHandling;
    }
    @:keep
    static public function parsed( _f:stdgo.Ref<FlagSet>):Bool {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return _f._parsed;
    }
    @:keep
    static public function parse( _f:stdgo.Ref<FlagSet>, _arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
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
            {
                final __value__ = _f._errorHandling;
                if (__value__ == ((0 : stdgo._internal.flag.Flag.ErrorHandling))) {
                    return _err;
                } else if (__value__ == ((1 : stdgo._internal.flag.Flag.ErrorHandling))) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(errHelp))) {
                        Sys.exit((0 : stdgo.GoInt));
                    };
                    Sys.exit((2 : stdgo.GoInt));
                } else if (__value__ == ((2 : stdgo._internal.flag.Flag.ErrorHandling))) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _parseOne( _f:stdgo.Ref<FlagSet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if ((_f._args.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _s:stdgo.GoString = _f._args[(0 : stdgo.GoInt)]?.__copy__();
        if ((((_s.length) < (2 : stdgo.GoInt) : Bool) || (_s[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _numMinuses:stdgo.GoInt = (1 : stdgo.GoInt);
        if (_s[(1 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _numMinuses++;
            if ((_s.length) == ((2 : stdgo.GoInt))) {
                _f._args = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        var _name:stdgo.GoString = (_s.__slice__(_numMinuses) : stdgo.GoString)?.__copy__();
        if ((((_name.length) == ((0 : stdgo.GoInt)) || _name[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (61 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : false, _1 : _f._failf(("bad flag syntax: %s" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        };
        _f._args = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _hasValue:Bool = false;
        var _value:stdgo.GoString = stdgo.Go.str()?.__copy__();
        {
            var _i:stdgo.GoInt = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_name.length) : Bool), _i++, {
                if (_name[(_i : stdgo.GoInt)] == ((61 : stdgo.GoUInt8))) {
                    _value = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _hasValue = true;
                    _name = (_name.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
                    break;
                };
            });
        };
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            if (((_name == ("help" : stdgo.GoString)) || (_name == ("h" : stdgo.GoString)) : Bool)) {
                _f._usage();
                return { _0 : false, _1 : errHelp };
            };
            return { _0 : false, _1 : _f._failf(("flag provided but not defined: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : T_boolFlag)) : T_boolFlag), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.flag.Flag.T_boolFlag), _1 : false };
            }, _fv = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _fv.isBoolFlag() : Bool)) {
                if (_hasValue) {
                    {
                        var _err:stdgo.Error = _fv.set(_value?.__copy__());
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(("invalid boolean value %q for -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _fv.set(("true" : stdgo.GoString));
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(("invalid boolean flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                        };
                    };
                };
            } else {
                if ((!_hasValue && ((_f._args.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _hasValue = true;
                    {
                        final __tmp__0 = _f._args[(0 : stdgo.GoInt)]?.__copy__();
                        final __tmp__1 = (_f._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _value = __tmp__0;
                        _f._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : _f._failf(("flag needs an argument: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                };
                {
                    var _err:stdgo.Error = _flag.value.set(_value?.__copy__());
                    if (_err != null) {
                        return { _0 : false, _1 : _f._failf(("invalid value %q for flag -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _usage( _f:stdgo.Ref<FlagSet>):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    @:keep
    static public function _failf( _f:stdgo.Ref<FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _msg:stdgo.GoString = _f._sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__();
        _f._usage();
        return stdgo._internal.errors.Errors.new_(_msg?.__copy__());
    }
    @:keep
    static public function _sprintf( _f:stdgo.Ref<FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _msg:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__();
        stdgo._internal.fmt.Fmt.fprintln(_f.output(), stdgo.Go.toInterface(_msg));
        return _msg?.__copy__();
    }
    @:keep
    static public function var_( _f:stdgo.Ref<FlagSet>, _value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if (stdgo._internal.strings.Strings.hasPrefix(_name?.__copy__(), ("-" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q begins with -" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        } else if (stdgo._internal.strings.Strings.contains(_name?.__copy__(), ("=" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q contains =" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        };
        var _flag = (stdgo.Go.setRef((new stdgo._internal.flag.Flag.Flag(_name?.__copy__(), _usage?.__copy__(), _value, (_value.string() : stdgo.GoString)?.__copy__()) : stdgo._internal.flag.Flag.Flag)) : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>), _1 : false }), __0:stdgo.Ref<stdgo._internal.flag.Flag.Flag> = __tmp__._0, _alreadythere:Bool = __tmp__._1;
        if (_alreadythere) {
            var _msg:stdgo.GoString = ("" : stdgo.GoString);
            if (_f._name == (stdgo.Go.str())) {
                _msg = _f._sprintf(("flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_name))?.__copy__();
            } else {
                _msg = _f._sprintf(("%s flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_name))?.__copy__();
            };
            throw stdgo.Go.toInterface(_msg);
        };
        {
            var _pos:stdgo.GoString = (_f._undef[_name] ?? ("" : stdgo.GoString))?.__copy__();
            if (_pos != (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("flag %s set at %s before being defined" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pos)));
            };
        };
        if (_f._formal == null) {
            _f._formal = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        };
        _f._formal[_name] = _flag;
    }
    @:keep
    static public function boolFunc( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface((_fn : T_boolFuncValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function func( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface((_fn : T_funcValue)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function textVar( _f:stdgo.Ref<FlagSet>, _p:stdgo._internal.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newTextValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function duration( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time.Duration> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer(((0 : stdgo.GoInt64) : stdgo._internal.time.Time.Duration));
        _f.durationVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function durationVar( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time.Duration, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function float64( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        _f.float64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function float64Var( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newFloat64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function string( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer(("" : stdgo.GoString));
        _f.stringVar(_p, _name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function stringVar( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newStringValue(_value?.__copy__(), _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function uint64( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt64));
        _f.uint64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function uint64Var( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function uint( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt));
        _f.uintVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function uintVar( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newUintValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function int64( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt64));
        _f.int64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function int64Var( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newInt64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function int_( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt));
        _f.intVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function intVar( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function bool_( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _p = stdgo.Go.pointer(false);
        _f.boolVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        return _p;
    }
    @:keep
    static public function boolVar( _f:stdgo.Ref<FlagSet>, _p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f.var_(stdgo.Go.asInterface(_newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    static public function args( _f:stdgo.Ref<FlagSet>):stdgo.Slice<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return _f._args;
    }
    @:keep
    static public function narg( _f:stdgo.Ref<FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return (_f._args.length);
    }
    @:keep
    static public function arg( _f:stdgo.Ref<FlagSet>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= (_f._args.length) : Bool) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return _f._args[(_i : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    static public function nflag( _f:stdgo.Ref<FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return (_f._actual.length);
    }
    @:keep
    static public function _defaultUsage( _f:stdgo.Ref<FlagSet>):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if (_f._name == (stdgo.Go.str())) {
            stdgo._internal.fmt.Fmt.fprintf(_f.output(), ("Usage:\n" : stdgo.GoString));
        } else {
            stdgo._internal.fmt.Fmt.fprintf(_f.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    @:keep
    static public function printDefaults( _f:stdgo.Ref<FlagSet>):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var _isZeroValueErrs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        _f.visitAll(function(_flag:stdgo.Ref<Flag>):Void {
            var _b:stdgo._internal.strings.Strings.Builder = ({} : stdgo._internal.strings.Strings.Builder);
            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), ("  -%s" : stdgo.GoString), stdgo.Go.toInterface(_flag.name));
            var __tmp__ = unquoteUsage(_flag), _name:stdgo.GoString = __tmp__._0, _usage:stdgo.GoString = __tmp__._1;
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                _b.writeString((" " : stdgo.GoString));
                _b.writeString(_name?.__copy__());
            };
            if ((_b.len() <= (4 : stdgo.GoInt) : Bool)) {
                _b.writeString(("\t" : stdgo.GoString));
            } else {
                _b.writeString(("\n    \t" : stdgo.GoString));
            };
            _b.writeString(stdgo._internal.strings.Strings.replaceAll(_usage?.__copy__(), ("\n" : stdgo.GoString), ("\n    \t" : stdgo.GoString))?.__copy__());
            {
                var __tmp__ = _isZeroValue(_flag, _flag.defValue?.__copy__()), _isZero:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _isZeroValueErrs = (_isZeroValueErrs.__append__(_err));
                } else if (!_isZero) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : stdgo.Pointer<T_stringValue>)) : stdgo.Pointer<T_stringValue>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Pointer<stdgo._internal.flag.Flag.T_stringValue>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), (" (default %q)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        } else {
                            stdgo._internal.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings.Builder>)), (" (default %v)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        };
                    };
                };
            };
            stdgo._internal.fmt.Fmt.fprint(_f.output(), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
        });
        {
            var _errs = _isZeroValueErrs;
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.fmt.Fmt.fprintln(_f.output());
                for (__0 => _err in _errs) {
                    stdgo._internal.fmt.Fmt.fprintln(_f.output(), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
    @:keep
    static public function _set( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name?.__copy__()) ? { _0 : _f._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __tmp__ = stdgo._internal.runtime.Runtime.caller((2 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _file = ("?" : stdgo.GoString);
                _line = (0 : stdgo.GoInt);
            };
            if (_f._undef == null) {
                _f._undef = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            };
            _f._undef[_name] = stdgo._internal.fmt.Fmt.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line))?.__copy__();
            return stdgo._internal.fmt.Fmt.errorf(("no such flag -%v" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value?.__copy__());
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return (null : stdgo.Error);
    }
    @:keep
    static public function set( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return _f._set(_name?.__copy__(), _value?.__copy__());
    }
    @:keep
    static public function lookup( _f:stdgo.Ref<FlagSet>, _name:stdgo.GoString):stdgo.Ref<Flag> {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return (_f._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag.Flag>));
    }
    @:keep
    static public function visit( _f:stdgo.Ref<FlagSet>, _fn:stdgo.Ref<Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        for (__0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    @:keep
    static public function visitAll( _f:stdgo.Ref<FlagSet>, _fn:stdgo.Ref<Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        for (__0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    @:keep
    static public function setOutput( _f:stdgo.Ref<FlagSet>, _output:stdgo._internal.io.Io.Writer):Void {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        _f._output = _output;
    }
    @:keep
    static public function errorHandling( _f:stdgo.Ref<FlagSet>):ErrorHandling {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return _f._errorHandling;
    }
    @:keep
    static public function name( _f:stdgo.Ref<FlagSet>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        return _f._name?.__copy__();
    }
    @:keep
    static public function output( _f:stdgo.Ref<FlagSet>):stdgo._internal.io.Io.Writer {
        @:recv var _f:stdgo.Ref<FlagSet> = _f;
        if (_f._output == null) {
            return stdgo.Go.asInterface(stdgo._internal.os.Os.stderr);
        };
        return _f._output;
    }
}
class T_boolValue_asInterface {
    @:keep
    @:pointer
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag(__self__);
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    static public function isBoolFlag(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    static public function string(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatBool((_b.value : Bool))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_b.value : Bool));
    }
    @:keep
    @:pointer
    static public function set(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseBool(_s?.__copy__()), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = (_v : T_boolValue);
        return _err;
    }
}
class T_intValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_intValue_asInterface) class T_intValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_intValue,  _i:stdgo.Pointer<T_intValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.itoa((_i.value : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_intValue,  _i:stdgo.Pointer<T_intValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoInt));
    }
    @:keep
    @:pointer
    static public function set(____:T_intValue,  _i:stdgo.Pointer<T_intValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = (_v : T_intValue);
        return _err;
    }
}
class T_int64Value_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_int64Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_int64Value_asInterface) class T_int64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatInt((_i.value : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoInt64));
    }
    @:keep
    @:pointer
    static public function set(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = (_v : T_int64Value);
        return _err;
    }
}
class T_uintValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_uintValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_uintValue_asInterface) class T_uintValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatUint((_i.value : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoUInt));
    }
    @:keep
    @:pointer
    static public function set(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _v:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = (_v : T_uintValue);
        return _err;
    }
}
class T_uint64Value_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_uint64Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_uint64Value_asInterface) class T_uint64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatUint((_i.value : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.GoUInt64));
    }
    @:keep
    @:pointer
    static public function set(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseUint(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = (_v : T_uint64Value);
        return _err;
    }
}
class T_stringValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_val:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_stringValue,  _s:stdgo.Pointer<T_stringValue>):stdgo.GoString {
        return (_s.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_stringValue,  _s:stdgo.Pointer<T_stringValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_s.value : stdgo.GoString));
    }
    @:keep
    @:pointer
    static public function set(____:T_stringValue,  _s:stdgo.Pointer<T_stringValue>, _val:stdgo.GoString):stdgo.Error {
        _s.value = (_val : T_stringValue);
        return (null : stdgo.Error);
    }
}
class T_float64Value_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_float64Value>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_float64Value_asInterface) class T_float64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>):stdgo.GoString {
        return stdgo._internal.strconv.Strconv.formatFloat((_f.value : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>):stdgo.AnyInterface {
        return stdgo.Go.toInterface((_f.value : stdgo.GoFloat64));
    }
    @:keep
    @:pointer
    static public function set(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = (_v : T_float64Value);
        return _err;
    }
}
class T_durationValue_asInterface {
    @:keep
    @:pointer
    public dynamic function string():stdgo.GoString return __self__.value.string(__self__);
    @:keep
    @:pointer
    public dynamic function get():stdgo.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_durationValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>):stdgo.GoString {
        return (new stdgo.Pointer<stdgo._internal.time.Time.Duration>(() -> (_d.value : stdgo._internal.time.Time.Duration), v -> (_d.value = (v : stdgo._internal.flag.Flag.T_durationValue) : stdgo._internal.time.Time.Duration)).value.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    static public function get(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_d.value : stdgo._internal.time.Time.Duration)));
    }
    @:keep
    @:pointer
    static public function set(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.time.Time.parseDuration(_s?.__copy__()), _v:stdgo._internal.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = (_v : T_durationValue);
        return _err;
    }
}
class T_funcValue_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_funcValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_funcValue_asInterface) class T_funcValue_static_extension {
    @:keep
    static public function string( _f:T_funcValue):stdgo.GoString {
        @:recv var _f:T_funcValue = _f;
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function set( _f:T_funcValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:T_funcValue = _f;
        return _f(_s?.__copy__());
    }
}
class T_boolFuncValue_asInterface {
    @:keep
    public dynamic function isBoolFlag():Bool return __self__.value.isBoolFlag();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolFuncValue>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.flag.Flag.T_boolFuncValue_asInterface) class T_boolFuncValue_static_extension {
    @:keep
    static public function isBoolFlag( _f:T_boolFuncValue):Bool {
        @:recv var _f:T_boolFuncValue = _f;
        return true;
    }
    @:keep
    static public function string( _f:T_boolFuncValue):stdgo.GoString {
        @:recv var _f:T_boolFuncValue = _f;
        return stdgo.Go.str()?.__copy__();
    }
    @:keep
    static public function set( _f:T_boolFuncValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:T_boolFuncValue = _f;
        return _f(_s?.__copy__());
    }
}
