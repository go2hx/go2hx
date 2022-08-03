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
var errHelp : stdgo.Error = stdgo.errors.Errors.new_(((((("flag: help requested" : GoString))) : GoString)));
var _errParse : stdgo.Error = stdgo.errors.Errors.new_(((((("parse error" : GoString))) : GoString)));
var _errRange : stdgo.Error = stdgo.errors.Errors.new_(((((("value out of range" : GoString))) : GoString)));
var commandLine : Ref<FlagSet> = newFlagSet((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((1 : ErrorHandling)));
var usage : () -> Void = function():Void {
        stdgo.fmt.Fmt.fprintf(commandLine.output(), ((((("Usage of %s:\n" : GoString))) : GoString)), Go.toInterface((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString)))));
        printDefaults();
    };
var defaultUsage : () -> Void = usage;
typedef T_boolFlag = StructType & {
    > Value,
    public function isBoolFlag():Bool;
};
typedef Value = StructType & {
    public function string():GoString;
    public function set(_0:GoString):Error;
};
typedef Getter = StructType & {
    > Value,
    public function get():AnyInterface;
};
@:structInit @:using(stdgo.flag.Flag.FlagSet_static_extension) class FlagSet {
    public var usage : () -> Void = null;
    public var _name : GoString = "";
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
    public var name : GoString = "";
    public var usage : GoString = "";
    public var value : Value = ((null : Value));
    public var defValue : GoString = "";
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
/**
    // ResetForTesting clears all flag state and sets the usage function as directed.
    // After calling ResetForTesting, parse errors in flag handling will not
    // exit the program.
**/
function resetForTesting(_usage:() -> Void):Void {
        commandLine = newFlagSet((stdgo.os.Os.args != null ? stdgo.os.Os.args[((0 : GoInt))] : (("" : GoString))), ((0 : ErrorHandling)));
        commandLine.usage = _commandLineUsage;
        usage = _usage;
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
        var _result = new Slice<Ref<Flag>>(...[for (i in 0 ... (((_flags != null ? _flags.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Flag))]);
        var _i:GoInt = ((0 : GoInt));
        for (_0 => _f in _flags) {
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
        if (_typ.kind() == ((22 : stdgo.reflect.Reflect.Kind))) {
            _z = (stdgo.reflect.Reflect.new_(_typ.elem()) == null ? null : stdgo.reflect.Reflect.new_(_typ.elem()).__copy__());
        } else {
            _z = (stdgo.reflect.Reflect.zero(_typ) == null ? null : stdgo.reflect.Reflect.zero(_typ).__copy__());
        };
        return _value == ((((_z.interface_().value : Value)).string() : GoString));
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
                if ((_usage != null ? _usage[_i] : ((0 : GoUInt8))) == (("`".code : GoUInt8))) {
                    {
                        var _j:GoInt = _i + ((1 : GoInt));
                        Go.cfor(_j < (_usage != null ? _usage.length : ((0 : GoInt))), _j++, {
                            if ((_usage != null ? _usage[_j] : ((0 : GoUInt8))) == (("`".code : GoUInt8))) {
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
        _name = ((((("value" : GoString))) : GoString));
        if (Go.assertable(((_flag.value : T_boolFlag)))) {
            _name = ((((("" : GoString))) : GoString));
        } else if (Go.assertable(((_flag.value : Pointer<T_durationValue>)))) {
            _name = ((((("duration" : GoString))) : GoString));
        } else if (Go.assertable(((_flag.value : Pointer<T_float64Value>)))) {
            _name = ((((("float" : GoString))) : GoString));
        } else if (Go.assertable(((_flag.value : Pointer<T_intValue>))) || Go.assertable(((_flag.value : Pointer<T_int64Value>)))) {
            _name = ((((("int" : GoString))) : GoString));
        } else if (Go.assertable(((_flag.value : Pointer<T_stringValue>)))) {
            _name = ((((("string" : GoString))) : GoString));
        } else if (Go.assertable(((_flag.value : Pointer<T_uintValue>))) || Go.assertable(((_flag.value : Pointer<T_uint64Value>)))) {
            _name = ((((("uint" : GoString))) : GoString));
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
        commandLine.var_({
            final __self__ = new T_boolValue_wrapper(_newBoolValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newBoolValue(_value, _p).value.get(_newBoolValue(_value, _p)) #else null #end;
            __self__.isBoolFlag = #if !macro function():Bool return _newBoolValue(_value, _p).value.isBoolFlag(_newBoolValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newBoolValue(_value, _p).value.set(_newBoolValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newBoolValue(_value, _p).value.string(_newBoolValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_intValue_wrapper(_newIntValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newIntValue(_value, _p).value.get(_newIntValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newIntValue(_value, _p).value.set(_newIntValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newIntValue(_value, _p).value.string(_newIntValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_int64Value_wrapper(_newInt64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newInt64Value(_value, _p).value.get(_newInt64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newInt64Value(_value, _p).value.set(_newInt64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newInt64Value(_value, _p).value.string(_newInt64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_uintValue_wrapper(_newUintValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newUintValue(_value, _p).value.get(_newUintValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newUintValue(_value, _p).value.set(_newUintValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newUintValue(_value, _p).value.string(_newUintValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_uint64Value_wrapper(_newUint64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newUint64Value(_value, _p).value.get(_newUint64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newUint64Value(_value, _p).value.set(_newUint64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newUint64Value(_value, _p).value.string(_newUint64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_stringValue_wrapper(_newStringValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newStringValue(_value, _p).value.get(_newStringValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_val:GoString):stdgo.Error return _newStringValue(_value, _p).value.set(_newStringValue(_value, _p), _val) #else null #end;
            __self__.string = #if !macro function():GoString return _newStringValue(_value, _p).value.string(_newStringValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
/**
    // String defines a string flag with specified name, default value, and usage string.
    // The return value is the address of a string variable that stores the value of the flag.
**/
function string(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        return commandLine.string(_name, _value, _usage);
    }
/**
    // Float64Var defines a float64 flag with specified name, default value, and usage string.
    // The argument p points to a float64 variable in which to store the value of the flag.
**/
function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        commandLine.var_({
            final __self__ = new T_float64Value_wrapper(_newFloat64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newFloat64Value(_value, _p).value.get(_newFloat64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newFloat64Value(_value, _p).value.set(_newFloat64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newFloat64Value(_value, _p).value.string(_newFloat64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.var_({
            final __self__ = new T_durationValue_wrapper(_newDurationValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newDurationValue(_value, _p).value.get(_newDurationValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newDurationValue(_value, _p).value.set(_newDurationValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newDurationValue(_value, _p).value.string(_newDurationValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
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
        commandLine.parse(((stdgo.os.Os.args.__slice__(((1 : GoInt))) : Slice<GoString>)));
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
        var _f = (({ _name : _name, _errorHandling : _errorHandling } : FlagSet));
        _f.usage = _f._defaultUsage;
        return _f;
    }
@:keep var _ = {
        try {
            commandLine.usage = _commandLineUsage;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class FlagSet_static_extension {
    /**
        // Init sets the name and error handling property for a flag set.
        // By default, the zero FlagSet uses an empty name and the
        // ContinueOnError error handling policy.
    **/
    @:keep
    static public function init( _f:FlagSet, _name:GoString, _errorHandling:ErrorHandling):Void {
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    /**
        // Parsed reports whether f.Parse has been called.
    **/
    @:keep
    static public function parsed( _f:FlagSet):Bool {
        return _f._parsed;
    }
    /**
        // Parse parses flag definitions from the argument list, which should not
        // include the command name. Must be called after all flags in the FlagSet
        // are defined and before flags are accessed by the program.
        // The return value will be ErrHelp if -help or -h were set but not defined.
    **/
    @:keep
    static public function parse( _f:FlagSet, _arguments:Slice<GoString>):Error {
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
            if (_f._errorHandling == ((0 : ErrorHandling))) {
                return _err;
            } else if (_f._errorHandling == ((1 : ErrorHandling))) {
                if (_err == errHelp) {
                    Sys.exit(((0 : GoInt)));
                };
                Sys.exit(((2 : GoInt)));
            } else if (_f._errorHandling == ((2 : ErrorHandling))) {
                throw Go.toInterface(_err);
            };
        };
        return ((null : stdgo.Error));
    }
    /**
        // parseOne parses one flag. It reports whether a flag was seen.
    **/
    @:keep
    static public function _parseOne( _f:FlagSet):{ var _0 : Bool; var _1 : Error; } {
        if ((_f._args != null ? _f._args.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _s:GoString = (_f._args != null ? _f._args[((0 : GoInt))] : (("" : GoString)));
        if (((_s != null ? _s.length : ((0 : GoInt))) < ((2 : GoInt))) || ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) != (("-".code : GoUInt8)))) {
            return { _0 : false, _1 : ((null : stdgo.Error)) };
        };
        var _numMinuses:GoInt = ((1 : GoInt));
        if ((_s != null ? _s[((1 : GoInt))] : ((0 : GoUInt8))) == (("-".code : GoUInt8))) {
            _numMinuses++;
            if ((_s != null ? _s.length : ((0 : GoInt))) == ((2 : GoInt))) {
                _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
                return { _0 : false, _1 : ((null : stdgo.Error)) };
            };
        };
        var _name:GoString = ((_s.__slice__(_numMinuses) : GoString));
        if ((((_name != null ? _name.length : ((0 : GoInt))) == ((0 : GoInt))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == (("-".code : GoUInt8)))) || ((_name != null ? _name[((0 : GoInt))] : ((0 : GoUInt8))) == (("=".code : GoUInt8)))) {
            return { _0 : false, _1 : _f._failf(((((("bad flag syntax: %s" : GoString))) : GoString)), Go.toInterface(_s)) };
        };
        _f._args = ((_f._args.__slice__(((1 : GoInt))) : Slice<GoString>));
        var _hasValue:Bool = false;
        var _value:GoString = ((((("" : GoString))) : GoString));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < (_name != null ? _name.length : ((0 : GoInt))), _i++, {
                if ((_name != null ? _name[_i] : ((0 : GoUInt8))) == (("=".code : GoUInt8))) {
                    _value = ((_name.__slice__(_i + ((1 : GoInt))) : GoString));
                    _hasValue = true;
                    _name = ((_name.__slice__(((0 : GoInt)), _i) : GoString));
                    break;
                };
            });
        };
        var _m = _f._formal;
        var __tmp__ = (_m != null && _m.__exists__(_name) ? { value : _m[_name], ok : true } : { value : ((null : Flag)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (!_alreadythere) {
            if ((_name == ((((("help" : GoString))) : GoString))) || (_name == ((((("h" : GoString))) : GoString)))) {
                _f._usage();
                return { _0 : false, _1 : errHelp };
            };
            return { _0 : false, _1 : _f._failf(((((("flag provided but not defined: -%s" : GoString))) : GoString)), Go.toInterface(_name)) };
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
                            return { _0 : false, _1 : _f._failf(((((("invalid boolean value %q for -%s: %v" : GoString))) : GoString)), Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                        };
                    };
                } else {
                    {
                        var _err:stdgo.Error = _fv.set(((((("true" : GoString))) : GoString)));
                        if (_err != null) {
                            return { _0 : false, _1 : _f._failf(((((("invalid boolean flag %s: %v" : GoString))) : GoString)), Go.toInterface(_name), Go.toInterface(_err)) };
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
                    return { _0 : false, _1 : _f._failf(((((("flag needs an argument: -%s" : GoString))) : GoString)), Go.toInterface(_name)) };
                };
                {
                    var _err:stdgo.Error = _flag.value.set(_value);
                    if (_err != null) {
                        return { _0 : false, _1 : _f._failf(((((("invalid value %q for flag -%s: %v" : GoString))) : GoString)), Go.toInterface(_value), Go.toInterface(_name), Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f._actual == null) {
            _f._actual = ((new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))) : GoMap<GoString, Ref<Flag>>));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return { _0 : true, _1 : ((null : stdgo.Error)) };
    }
    /**
        // usage calls the Usage method for the flag set if one is specified,
        // or the appropriate default usage function otherwise.
    **/
    @:keep
    static public function _usage( _f:FlagSet):Void {
        if (_f.usage == null) {
            _f._defaultUsage();
        } else {
            _f.usage();
        };
    }
    /**
        // failf prints to standard error a formatted error and usage message and
        // returns the error.
    **/
    @:keep
    static public function _failf( _f:FlagSet, _format:GoString, _a:haxe.Rest<AnyInterface>):Error {
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    /**
        // sprintf formats the message, prints it to output, and returns it.
    **/
    @:keep
    static public function _sprintf( _f:FlagSet, _format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
        var _a = new Slice<AnyInterface>(..._a);
        var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), _msg);
        return _msg;
    }
    /**
        // Var defines a flag with the specified name and usage string. The type and
        // value of the flag are represented by the first argument, of type Value, which
        // typically holds a user-defined implementation of Value. For instance, the
        // caller could create a flag that turns a comma-separated string into a slice
        // of strings by giving the slice the methods of Value; in particular, Set would
        // decompose the comma-separated string into the slice.
    **/
    @:keep
    static public function var_( _f:FlagSet, _value:Value, _name:GoString, _usage:GoString):Void {
        if (stdgo.strings.Strings.hasPrefix(_name, ((((("-" : GoString))) : GoString)))) {
            throw Go.toInterface(_f._sprintf(((((("flag %q begins with -" : GoString))) : GoString)), Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ((((("=" : GoString))) : GoString)))) {
            throw Go.toInterface(_f._sprintf(((((("flag %q contains =" : GoString))) : GoString)), Go.toInterface(_name)));
        };
        var _flag = ((new Flag(_name, _usage, _value, ((_value.string() : GoString))) : Flag));
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Flag)), ok : false }), _0:Ref<Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:GoString = (("" : GoString));
            if (_f._name == ((((("" : GoString))) : GoString))) {
                _msg = _f._sprintf(((((("flag redefined: %s" : GoString))) : GoString)), Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(((((("%s flag redefined: %s" : GoString))) : GoString)), Go.toInterface(_f._name), Go.toInterface(_name));
            };
            throw Go.toInterface(_msg);
        };
        if (_f._formal == null) {
            _f._formal = ((new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))) : GoMap<GoString, Ref<Flag>>));
        };
        if (_f._formal != null) _f._formal[_name] = _flag;
    }
    /**
        // Func defines a flag with the specified name and usage string.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    static public function func( _f:FlagSet, _name:GoString, _usage:GoString, _fn:GoString -> Error):Void {
        _f.var_({
            final __self__ = new T_funcValue_wrapper(((_fn : T_funcValue)));
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return ((_fn : T_funcValue)).set(_s) #else null #end;
            __self__.string = #if !macro function():GoString return ((_fn : T_funcValue)).string() #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Duration defines a time.Duration flag with specified name, default value, and usage string.
        // The return value is the address of a time.Duration variable that stores the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    static public function duration( _f:FlagSet, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
        var _p = Go.pointer(new stdgo.time.Time.Duration());
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        // The argument p points to a time.Duration variable in which to store the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    static public function durationVar( _f:FlagSet, _p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_durationValue_wrapper(_newDurationValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newDurationValue(_value, _p).value.get(_newDurationValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newDurationValue(_value, _p).value.set(_newDurationValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newDurationValue(_value, _p).value.string(_newDurationValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Float64 defines a float64 flag with specified name, default value, and usage string.
        // The return value is the address of a float64 variable that stores the value of the flag.
    **/
    @:keep
    static public function float64( _f:FlagSet, _name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
        var _p = Go.pointer(((0 : GoFloat64)));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Float64Var defines a float64 flag with specified name, default value, and usage string.
        // The argument p points to a float64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function float64Var( _f:FlagSet, _p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_float64Value_wrapper(_newFloat64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newFloat64Value(_value, _p).value.get(_newFloat64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newFloat64Value(_value, _p).value.set(_newFloat64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newFloat64Value(_value, _p).value.string(_newFloat64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // String defines a string flag with specified name, default value, and usage string.
        // The return value is the address of a string variable that stores the value of the flag.
    **/
    @:keep
    static public function string( _f:FlagSet, _name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
        var _p = Go.pointer((("" : GoString)));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // StringVar defines a string flag with specified name, default value, and usage string.
        // The argument p points to a string variable in which to store the value of the flag.
    **/
    @:keep
    static public function stringVar( _f:FlagSet, _p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_stringValue_wrapper(_newStringValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newStringValue(_value, _p).value.get(_newStringValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_val:GoString):stdgo.Error return _newStringValue(_value, _p).value.set(_newStringValue(_value, _p), _val) #else null #end;
            __self__.string = #if !macro function():GoString return _newStringValue(_value, _p).value.string(_newStringValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Uint64 defines a uint64 flag with specified name, default value, and usage string.
        // The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    @:keep
    static public function uint64( _f:FlagSet, _name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
        var _p = Go.pointer(((0 : GoUInt64)));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        // The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function uint64Var( _f:FlagSet, _p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_uint64Value_wrapper(_newUint64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newUint64Value(_value, _p).value.get(_newUint64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newUint64Value(_value, _p).value.set(_newUint64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newUint64Value(_value, _p).value.string(_newUint64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Uint defines a uint flag with specified name, default value, and usage string.
        // The return value is the address of a uint variable that stores the value of the flag.
    **/
    @:keep
    static public function uint( _f:FlagSet, _name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
        var _p = Go.pointer(((0 : GoUInt)));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // UintVar defines a uint flag with specified name, default value, and usage string.
        // The argument p points to a uint variable in which to store the value of the flag.
    **/
    @:keep
    static public function uintVar( _f:FlagSet, _p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_uintValue_wrapper(_newUintValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newUintValue(_value, _p).value.get(_newUintValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newUintValue(_value, _p).value.set(_newUintValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newUintValue(_value, _p).value.string(_newUintValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Int64 defines an int64 flag with specified name, default value, and usage string.
        // The return value is the address of an int64 variable that stores the value of the flag.
    **/
    @:keep
    static public function int64( _f:FlagSet, _name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
        var _p = Go.pointer(((0 : GoInt64)));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Int64Var defines an int64 flag with specified name, default value, and usage string.
        // The argument p points to an int64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function int64Var( _f:FlagSet, _p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_int64Value_wrapper(_newInt64Value(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newInt64Value(_value, _p).value.get(_newInt64Value(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newInt64Value(_value, _p).value.set(_newInt64Value(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newInt64Value(_value, _p).value.string(_newInt64Value(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Int defines an int flag with specified name, default value, and usage string.
        // The return value is the address of an int variable that stores the value of the flag.
    **/
    @:keep
    static public function int( _f:FlagSet, _name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
        var _p = Go.pointer(((0 : GoInt)));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // IntVar defines an int flag with specified name, default value, and usage string.
        // The argument p points to an int variable in which to store the value of the flag.
    **/
    @:keep
    static public function intVar( _f:FlagSet, _p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_intValue_wrapper(_newIntValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newIntValue(_value, _p).value.get(_newIntValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newIntValue(_value, _p).value.set(_newIntValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newIntValue(_value, _p).value.string(_newIntValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Bool defines a bool flag with specified name, default value, and usage string.
        // The return value is the address of a bool variable that stores the value of the flag.
    **/
    @:keep
    static public function bool( _f:FlagSet, _name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
        var _p = Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // BoolVar defines a bool flag with specified name, default value, and usage string.
        // The argument p points to a bool variable in which to store the value of the flag.
    **/
    @:keep
    static public function boolVar( _f:FlagSet, _p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
        _f.var_({
            final __self__ = new T_boolValue_wrapper(_newBoolValue(_value, _p));
            __self__.get = #if !macro function():AnyInterface return _newBoolValue(_value, _p).value.get(_newBoolValue(_value, _p)) #else null #end;
            __self__.isBoolFlag = #if !macro function():Bool return _newBoolValue(_value, _p).value.isBoolFlag(_newBoolValue(_value, _p)) #else null #end;
            __self__.set = #if !macro function(_s:GoString):stdgo.Error return _newBoolValue(_value, _p).value.set(_newBoolValue(_value, _p), _s) #else null #end;
            __self__.string = #if !macro function():GoString return _newBoolValue(_value, _p).value.string(_newBoolValue(_value, _p)) #else null #end;
            __self__;
        }, _name, _usage);
    }
    /**
        // Args returns the non-flag arguments.
    **/
    @:keep
    static public function args( _f:FlagSet):Slice<GoString> {
        return _f._args;
    }
    /**
        // NArg is the number of arguments remaining after flags have been processed.
    **/
    @:keep
    static public function narg( _f:FlagSet):GoInt {
        return (_f._args != null ? _f._args.length : ((0 : GoInt)));
    }
    /**
        // Arg returns the i'th argument. Arg(0) is the first remaining argument
        // after flags have been processed. Arg returns an empty string if the
        // requested element does not exist.
    **/
    @:keep
    static public function arg( _f:FlagSet, _i:GoInt):GoString {
        if ((_i < ((0 : GoInt))) || (_i >= (_f._args != null ? _f._args.length : ((0 : GoInt))))) {
            return ((((("" : GoString))) : GoString));
        };
        return (_f._args != null ? _f._args[_i] : (("" : GoString)));
    }
    /**
        // NFlag returns the number of flags that have been set.
    **/
    @:keep
    static public function nflag( _f:FlagSet):GoInt {
        return (_f._actual != null ? _f._actual.length : ((0 : GoInt)));
    }
    /**
        // defaultUsage is the default function to print a usage message.
    **/
    @:keep
    static public function _defaultUsage( _f:FlagSet):Void {
        if (_f._name == ((((("" : GoString))) : GoString))) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((((("Usage:\n" : GoString))) : GoString)));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ((((("Usage of %s:\n" : GoString))) : GoString)), Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    /**
        // PrintDefaults prints, to standard error unless configured otherwise, the
        // default values of all defined command-line flags in the set. See the
        // documentation for the global function PrintDefaults for more information.
    **/
    @:keep
    static public function printDefaults( _f:FlagSet):Void {
        _f.visitAll(function(_flag:Flag):Void {
            var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
            stdgo.fmt.Fmt.fprintf({
                final __self__ = new stdgo.strings.Strings.Builder_wrapper(_b);
                __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _b.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(_s) #else null #end;
                __self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):Void _b._grow(_n) #else null #end;
                __self__;
            }, ((((("  -%s" : GoString))) : GoString)), Go.toInterface(_flag.name));
            var __tmp__ = unquoteUsage(_flag), _name:GoString = __tmp__._0, _usage:GoString = __tmp__._1;
            if ((_name != null ? _name.length : ((0 : GoInt))) > ((0 : GoInt))) {
                _b.writeString((((((" " : GoString))) : GoString)));
                _b.writeString(_name);
            };
            if (_b.len() <= ((4 : GoInt))) {
                _b.writeString(((((("\t" : GoString))) : GoString)));
            } else {
                _b.writeString(((((("\n    \t" : GoString))) : GoString)));
            };
            _b.writeString(stdgo.strings.Strings.replaceAll(_usage, ((((("\n" : GoString))) : GoString)), ((((("\n    \t" : GoString))) : GoString))));
            if (!_isZeroValue(_flag, _flag.defValue)) {
                {
                    var __tmp__ = try {
                        { value : ((((_flag.value.__underlying__().value : Dynamic)) : Pointer<T_stringValue>)), ok : true };
                    } catch(_) {
                        { value : ((null : Pointer<T_stringValue>)), ok : false };
                    }, _0 = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        stdgo.fmt.Fmt.fprintf({
                            final __self__ = new stdgo.strings.Strings.Builder_wrapper(_b);
                            __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                            __self__.grow = #if !macro function(_n:GoInt):Void _b.grow(_n) #else null #end;
                            __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                            __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                            __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(_s) #else null #end;
                            __self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
                            __self__._grow = #if !macro function(_n:GoInt):Void _b._grow(_n) #else null #end;
                            __self__;
                        }, (((((" (default %q)" : GoString))) : GoString)), Go.toInterface(_flag.defValue));
                    } else {
                        stdgo.fmt.Fmt.fprintf({
                            final __self__ = new stdgo.strings.Strings.Builder_wrapper(_b);
                            __self__.cap_ = #if !macro function():GoInt return _b.cap_() #else null #end;
                            __self__.grow = #if !macro function(_n:GoInt):Void _b.grow(_n) #else null #end;
                            __self__.len = #if !macro function():GoInt return _b.len() #else null #end;
                            __self__.reset = #if !macro function():Void _b.reset() #else null #end;
                            __self__.string = #if !macro function():GoString return _b.string() #else null #end;
                            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.write(_p) #else null #end;
                            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _b.writeByte(_c) #else null #end;
                            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeRune(_r) #else null #end;
                            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _b.writeString(_s) #else null #end;
                            __self__._copyCheck = #if !macro function():Void _b._copyCheck() #else null #end;
                            __self__._grow = #if !macro function(_n:GoInt):Void _b._grow(_n) #else null #end;
                            __self__;
                        }, (((((" (default %v)" : GoString))) : GoString)), Go.toInterface(_flag.defValue));
                    };
                };
            };
            stdgo.fmt.Fmt.fprint(_f.output(), ((_b.string() : GoString)), ((((("\n" : GoString))) : GoString)));
        });
    }
    /**
        // Set sets the value of the named flag.
    **/
    @:keep
    static public function set( _f:FlagSet, _name:GoString, _value:GoString):Error {
        var __tmp__ = (_f._formal != null && _f._formal.__exists__(_name) ? { value : _f._formal[_name], ok : true } : { value : ((null : Flag)), ok : false }), _flag:Ref<Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            return stdgo.fmt.Fmt.errorf(((((("no such flag -%v" : GoString))) : GoString)), Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = ((new GoObjectMap<GoString, Ref<Flag>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("Flag", [], stdgo.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "usage", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "value", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.named("Value", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }, { name : "defValue", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))) : GoMap<GoString, Ref<Flag>>));
        };
        if (_f._actual != null) _f._actual[_name] = _flag;
        return ((null : stdgo.Error));
    }
    /**
        // Lookup returns the Flag structure of the named flag, returning nil if none exists.
    **/
    @:keep
    static public function lookup( _f:FlagSet, _name:GoString):Flag {
        return (_f._formal != null ? _f._formal[_name] : ((null : Flag)));
    }
    /**
        // Visit visits the flags in lexicographical order, calling fn for each.
        // It visits only those flags that have been set.
    **/
    @:keep
    static public function visit( _f:FlagSet, _fn:Flag -> Void):Void {
        for (_0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    /**
        // VisitAll visits the flags in lexicographical order, calling fn for each.
        // It visits all flags, even those not set.
    **/
    @:keep
    static public function visitAll( _f:FlagSet, _fn:Flag -> Void):Void {
        for (_0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    /**
        // SetOutput sets the destination for usage and error messages.
        // If output is nil, os.Stderr is used.
    **/
    @:keep
    static public function setOutput( _f:FlagSet, _output:stdgo.io.Io.Writer):Void {
        _f._output = _output;
    }
    /**
        // ErrorHandling returns the error handling behavior of the flag set.
    **/
    @:keep
    static public function errorHandling( _f:FlagSet):ErrorHandling {
        return _f._errorHandling;
    }
    /**
        // Name returns the name of the flag set.
    **/
    @:keep
    static public function name( _f:FlagSet):GoString {
        return _f._name;
    }
    /**
        // Output returns the destination for usage and error messages. os.Stderr is returned if
        // output was not set or was set to nil.
    **/
    @:keep
    static public function output( _f:FlagSet):stdgo.io.Io.Writer {
        if (_f._output == null) {
            return {
                final __self__ = new stdgo.os.Os.File_wrapper(stdgo.os.Os.stderr);
                __self__.chdir = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.chdir() #else null #end;
                __self__.chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stderr.chmod(_mode) #else null #end;
                __self__.chown = #if !macro function(_uid:GoInt, _gid:GoInt):stdgo.Error return stdgo.os.Os.stderr.chown(_uid, _gid) #else null #end;
                __self__.close = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.close() #else null #end;
                __self__.fd = #if !macro function():GoUIntptr return stdgo.os.Os.stderr.fd() #else null #end;
                __self__.name = #if !macro function():GoString return stdgo.os.Os.stderr.name() #else null #end;
                __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.read(_b) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.readAt(_b, _off) #else null #end;
                __self__.readDir = #if !macro function(_n:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.DirEntry>; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.readDir(_n) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.readFrom(_r) #else null #end;
                __self__.readdir = #if !macro function(_n:GoInt):{ var _0 : Slice<stdgo.io.fs.Fs.FileInfo>; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.readdir(_n) #else null #end;
                __self__.readdirnames = #if !macro function(_n:GoInt):{ var _0 : Slice<GoString>; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.readdirnames(_n) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.seek(_offset, _whence) #else null #end;
                __self__.setDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setDeadline(_t) #else null #end;
                __self__.setReadDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setReadDeadline(_t) #else null #end;
                __self__.setWriteDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr.setWriteDeadline(_t) #else null #end;
                __self__.stat = #if !macro function():{ var _0 : stdgo.io.fs.Fs.FileInfo; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.stat() #else null #end;
                __self__.sync = #if !macro function():stdgo.Error return stdgo.os.Os.stderr.sync() #else null #end;
                __self__.syscallConn = #if !macro function():{ var _0 : stdgo.syscall.Syscall.RawConn; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.syscallConn() #else null #end;
                __self__.truncate = #if !macro function(_size:GoInt64):stdgo.Error return stdgo.os.Os.stderr.truncate(_size) #else null #end;
                __self__.write = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.write(_b) #else null #end;
                __self__.writeAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.writeAt(_b, _off) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr.writeString(_s) #else null #end;
                __self__._checkValid = #if !macro function(_op:GoString):stdgo.Error return stdgo.os.Os.stderr._checkValid(_op) #else null #end;
                __self__._chmod = #if !macro function(_mode:stdgo.io.fs.Fs.FileMode):stdgo.Error return stdgo.os.Os.stderr._chmod(_mode) #else null #end;
                __self__._close = #if !macro function():stdgo.Error return stdgo.os.Os.stderr._close() #else null #end;
                __self__._pread = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr._pread(_b, _off) #else null #end;
                __self__._pwrite = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr._pwrite(_b, _off) #else null #end;
                __self__._read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr._read(_b) #else null #end;
                __self__._readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Bool; var _2 : stdgo.Error; } return stdgo.os.Os.stderr._readFrom(_r) #else null #end;
                __self__._readdir = #if !macro function(_n:GoInt, _mode:stdgo.os.Os.T_readdirMode):{ var _0 : Slice<GoString>; var _1 : Slice<stdgo.io.fs.Fs.DirEntry>; var _2 : Slice<stdgo.io.fs.Fs.FileInfo>; var _3 : stdgo.Error; } return stdgo.os.Os.stderr._readdir(_n, _mode) #else null #end;
                __self__._seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return stdgo.os.Os.stderr._seek(_offset, _whence) #else null #end;
                __self__._setDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setDeadline(_t) #else null #end;
                __self__._setReadDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setReadDeadline(_t) #else null #end;
                __self__._setWriteDeadline = #if !macro function(_t:stdgo.time.Time.Time):stdgo.Error return stdgo.os.Os.stderr._setWriteDeadline(_t) #else null #end;
                __self__._wrapErr = #if !macro function(_op:GoString, _err:stdgo.Error):stdgo.Error return stdgo.os.Os.stderr._wrapErr(_op, _err) #else null #end;
                __self__._write = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return stdgo.os.Os.stderr._write(_b) #else null #end;
                __self__;
            };
        };
        return _f._output;
    }
}
class FlagSet_wrapper {
    /**
        // Init sets the name and error handling property for a flag set.
        // By default, the zero FlagSet uses an empty name and the
        // ContinueOnError error handling policy.
    **/
    @:keep
    public var init : (GoString, ErrorHandling) -> Void = null;
    /**
        // Parsed reports whether f.Parse has been called.
    **/
    @:keep
    public var parsed : () -> Bool = null;
    /**
        // Parse parses flag definitions from the argument list, which should not
        // include the command name. Must be called after all flags in the FlagSet
        // are defined and before flags are accessed by the program.
        // The return value will be ErrHelp if -help or -h were set but not defined.
    **/
    @:keep
    public var parse : Slice<GoString> -> Error = null;
    /**
        // parseOne parses one flag. It reports whether a flag was seen.
    **/
    @:keep
    public var _parseOne : () -> { var _0 : Bool; var _1 : Error; } = null;
    /**
        // usage calls the Usage method for the flag set if one is specified,
        // or the appropriate default usage function otherwise.
    **/
    @:keep
    public var _usage : () -> Void = null;
    /**
        // failf prints to standard error a formatted error and usage message and
        // returns the error.
    **/
    @:keep
    public var _failf : (GoString, haxe.Rest<AnyInterface>) -> Error = null;
    /**
        // sprintf formats the message, prints it to output, and returns it.
    **/
    @:keep
    public var _sprintf : (GoString, haxe.Rest<AnyInterface>) -> GoString = null;
    /**
        // Var defines a flag with the specified name and usage string. The type and
        // value of the flag are represented by the first argument, of type Value, which
        // typically holds a user-defined implementation of Value. For instance, the
        // caller could create a flag that turns a comma-separated string into a slice
        // of strings by giving the slice the methods of Value; in particular, Set would
        // decompose the comma-separated string into the slice.
    **/
    @:keep
    public var var_ : (Value, GoString, GoString) -> Void = null;
    /**
        // Func defines a flag with the specified name and usage string.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    public var func : (GoString, GoString, GoString -> Error) -> Void = null;
    /**
        // Duration defines a time.Duration flag with specified name, default value, and usage string.
        // The return value is the address of a time.Duration variable that stores the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    public var duration : (GoString, stdgo.time.Time.Duration, GoString) -> Pointer<stdgo.time.Time.Duration> = null;
    /**
        // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        // The argument p points to a time.Duration variable in which to store the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    public var durationVar : (Pointer<stdgo.time.Time.Duration>, GoString, stdgo.time.Time.Duration, GoString) -> Void = null;
    /**
        // Float64 defines a float64 flag with specified name, default value, and usage string.
        // The return value is the address of a float64 variable that stores the value of the flag.
    **/
    @:keep
    public var float64 : (GoString, GoFloat64, GoString) -> Pointer<GoFloat64> = null;
    /**
        // Float64Var defines a float64 flag with specified name, default value, and usage string.
        // The argument p points to a float64 variable in which to store the value of the flag.
    **/
    @:keep
    public var float64Var : (Pointer<GoFloat64>, GoString, GoFloat64, GoString) -> Void = null;
    /**
        // String defines a string flag with specified name, default value, and usage string.
        // The return value is the address of a string variable that stores the value of the flag.
    **/
    @:keep
    public var string : (GoString, GoString, GoString) -> Pointer<GoString> = null;
    /**
        // StringVar defines a string flag with specified name, default value, and usage string.
        // The argument p points to a string variable in which to store the value of the flag.
    **/
    @:keep
    public var stringVar : (Pointer<GoString>, GoString, GoString, GoString) -> Void = null;
    /**
        // Uint64 defines a uint64 flag with specified name, default value, and usage string.
        // The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    @:keep
    public var uint64 : (GoString, GoUInt64, GoString) -> Pointer<GoUInt64> = null;
    /**
        // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        // The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    @:keep
    public var uint64Var : (Pointer<GoUInt64>, GoString, GoUInt64, GoString) -> Void = null;
    /**
        // Uint defines a uint flag with specified name, default value, and usage string.
        // The return value is the address of a uint variable that stores the value of the flag.
    **/
    @:keep
    public var uint : (GoString, GoUInt, GoString) -> Pointer<GoUInt> = null;
    /**
        // UintVar defines a uint flag with specified name, default value, and usage string.
        // The argument p points to a uint variable in which to store the value of the flag.
    **/
    @:keep
    public var uintVar : (Pointer<GoUInt>, GoString, GoUInt, GoString) -> Void = null;
    /**
        // Int64 defines an int64 flag with specified name, default value, and usage string.
        // The return value is the address of an int64 variable that stores the value of the flag.
    **/
    @:keep
    public var int64 : (GoString, GoInt64, GoString) -> Pointer<GoInt64> = null;
    /**
        // Int64Var defines an int64 flag with specified name, default value, and usage string.
        // The argument p points to an int64 variable in which to store the value of the flag.
    **/
    @:keep
    public var int64Var : (Pointer<GoInt64>, GoString, GoInt64, GoString) -> Void = null;
    /**
        // Int defines an int flag with specified name, default value, and usage string.
        // The return value is the address of an int variable that stores the value of the flag.
    **/
    @:keep
    public var int : (GoString, GoInt, GoString) -> Pointer<GoInt> = null;
    /**
        // IntVar defines an int flag with specified name, default value, and usage string.
        // The argument p points to an int variable in which to store the value of the flag.
    **/
    @:keep
    public var intVar : (Pointer<GoInt>, GoString, GoInt, GoString) -> Void = null;
    /**
        // Bool defines a bool flag with specified name, default value, and usage string.
        // The return value is the address of a bool variable that stores the value of the flag.
    **/
    @:keep
    public var bool : (GoString, Bool, GoString) -> Pointer<Bool> = null;
    /**
        // BoolVar defines a bool flag with specified name, default value, and usage string.
        // The argument p points to a bool variable in which to store the value of the flag.
    **/
    @:keep
    public var boolVar : (Pointer<Bool>, GoString, Bool, GoString) -> Void = null;
    /**
        // Args returns the non-flag arguments.
    **/
    @:keep
    public var args : () -> Slice<GoString> = null;
    /**
        // NArg is the number of arguments remaining after flags have been processed.
    **/
    @:keep
    public var narg : () -> GoInt = null;
    /**
        // Arg returns the i'th argument. Arg(0) is the first remaining argument
        // after flags have been processed. Arg returns an empty string if the
        // requested element does not exist.
    **/
    @:keep
    public var arg : GoInt -> GoString = null;
    /**
        // NFlag returns the number of flags that have been set.
    **/
    @:keep
    public var nflag : () -> GoInt = null;
    /**
        // defaultUsage is the default function to print a usage message.
    **/
    @:keep
    public var _defaultUsage : () -> Void = null;
    /**
        // PrintDefaults prints, to standard error unless configured otherwise, the
        // default values of all defined command-line flags in the set. See the
        // documentation for the global function PrintDefaults for more information.
    **/
    @:keep
    public var printDefaults : () -> Void = null;
    /**
        // Set sets the value of the named flag.
    **/
    @:keep
    public var set : (GoString, GoString) -> Error = null;
    /**
        // Lookup returns the Flag structure of the named flag, returning nil if none exists.
    **/
    @:keep
    public var lookup : GoString -> Flag = null;
    /**
        // Visit visits the flags in lexicographical order, calling fn for each.
        // It visits only those flags that have been set.
    **/
    @:keep
    public var visit : (Flag -> Void) -> Void = null;
    /**
        // VisitAll visits the flags in lexicographical order, calling fn for each.
        // It visits all flags, even those not set.
    **/
    @:keep
    public var visitAll : (Flag -> Void) -> Void = null;
    /**
        // SetOutput sets the destination for usage and error messages.
        // If output is nil, os.Stderr is used.
    **/
    @:keep
    public var setOutput : stdgo.io.Io.Writer -> Void = null;
    /**
        // ErrorHandling returns the error handling behavior of the flag set.
    **/
    @:keep
    public var errorHandling : () -> ErrorHandling = null;
    /**
        // Name returns the name of the flag set.
    **/
    @:keep
    public var name : () -> GoString = null;
    /**
        // Output returns the destination for usage and error messages. os.Stderr is returned if
        // output was not set or was set to nil.
    **/
    @:keep
    public var output : () -> stdgo.io.Io.Writer = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : FlagSet;
}
@:keep class T_boolValue_static_extension {
    @:keep
    @:pointer
    static public function isBoolFlag(____:T_boolValue,  _b:Pointer<T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    static public function string(____:T_boolValue,  _b:Pointer<T_boolValue>):GoString {
        return stdgo.strconv.Strconv.formatBool(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    static public function get(____:T_boolValue,  _b:Pointer<T_boolValue>):AnyInterface {
        return Go.toInterface(((_b.value : Bool)));
    }
    @:keep
    @:pointer
    static public function set(____:T_boolValue,  _b:Pointer<T_boolValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _b.value = ((_v : T_boolValue));
        return _err;
    }
}
class T_boolValue_wrapper {
    @:keep
    @:pointer
    public var isBoolFlag : () -> Bool = null;
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_boolValue>;
}
@:keep class T_intValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_intValue,  _i:Pointer<T_intValue>):GoString {
        return stdgo.strconv.Strconv.itoa(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    static public function get(____:T_intValue,  _i:Pointer<T_intValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt)));
    }
    @:keep
    @:pointer
    static public function set(____:T_intValue,  _i:Pointer<T_intValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_intValue));
        return _err;
    }
}
class T_intValue_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_intValue>;
}
@:keep class T_int64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_int64Value,  _i:Pointer<T_int64Value>):GoString {
        return stdgo.strconv.Strconv.formatInt(((_i.value : GoInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    static public function get(____:T_int64Value,  _i:Pointer<T_int64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoInt64)));
    }
    @:keep
    @:pointer
    static public function set(____:T_int64Value,  _i:Pointer<T_int64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_int64Value));
        return _err;
    }
}
class T_int64Value_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_int64Value>;
}
@:keep class T_uintValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uintValue,  _i:Pointer<T_uintValue>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    static public function get(____:T_uintValue,  _i:Pointer<T_uintValue>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt)));
    }
    @:keep
    @:pointer
    static public function set(____:T_uintValue,  _i:Pointer<T_uintValue>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((32 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uintValue));
        return _err;
    }
}
class T_uintValue_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_uintValue>;
}
@:keep class T_uint64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uint64Value,  _i:Pointer<T_uint64Value>):GoString {
        return stdgo.strconv.Strconv.formatUint(((_i.value : GoUInt64)), ((10 : GoInt)));
    }
    @:keep
    @:pointer
    static public function get(____:T_uint64Value,  _i:Pointer<T_uint64Value>):AnyInterface {
        return Go.toInterface(((_i.value : GoUInt64)));
    }
    @:keep
    @:pointer
    static public function set(____:T_uint64Value,  _i:Pointer<T_uint64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, ((0 : GoInt)), ((64 : GoInt))), _v:GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _i.value = ((_v : T_uint64Value));
        return _err;
    }
}
class T_uint64Value_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_uint64Value>;
}
@:keep class T_stringValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_stringValue,  _s:Pointer<T_stringValue>):GoString {
        return ((_s.value : GoString));
    }
    @:keep
    @:pointer
    static public function get(____:T_stringValue,  _s:Pointer<T_stringValue>):AnyInterface {
        return Go.toInterface(((_s.value : GoString)));
    }
    @:keep
    @:pointer
    static public function set(____:T_stringValue,  _s:Pointer<T_stringValue>, _val:GoString):Error {
        _s.value = ((_val : T_stringValue));
        return ((null : stdgo.Error));
    }
}
class T_stringValue_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_stringValue>;
}
@:keep class T_float64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_float64Value,  _f:Pointer<T_float64Value>):GoString {
        return stdgo.strconv.Strconv.formatFloat(((_f.value : GoFloat64)), (("g".code : GoUInt8)), ((-1 : GoInt)), ((64 : GoInt)));
    }
    @:keep
    @:pointer
    static public function get(____:T_float64Value,  _f:Pointer<T_float64Value>):AnyInterface {
        return Go.toInterface(((_f.value : GoFloat64)));
    }
    @:keep
    @:pointer
    static public function set(____:T_float64Value,  _f:Pointer<T_float64Value>, _s:GoString):Error {
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, ((64 : GoInt))), _v:GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _numError(_err);
        };
        _f.value = ((_v : T_float64Value));
        return _err;
    }
}
class T_float64Value_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_float64Value>;
}
@:keep class T_durationValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_durationValue,  _d:Pointer<T_durationValue>):GoString {
        return ((new Pointer<stdgo.time.Time.Duration>(() -> ((_d.value : stdgo.time.Time.Duration)), v -> (((_d.value = ((v : T_durationValue))) : stdgo.time.Time.Duration))).value.string() : GoString));
    }
    @:keep
    @:pointer
    static public function get(____:T_durationValue,  _d:Pointer<T_durationValue>):AnyInterface {
        return Go.toInterface({
            final __self__ = new stdgo.time.Time.Duration_wrapper(((_d.value : stdgo.time.Time.Duration)));
            __self__.hours = #if !macro function():GoFloat64 return ((_d.value : stdgo.time.Time.Duration)).hours() #else null #end;
            __self__.microseconds = #if !macro function():GoInt64 return ((_d.value : stdgo.time.Time.Duration)).microseconds() #else null #end;
            __self__.milliseconds = #if !macro function():GoInt64 return ((_d.value : stdgo.time.Time.Duration)).milliseconds() #else null #end;
            __self__.minutes = #if !macro function():GoFloat64 return ((_d.value : stdgo.time.Time.Duration)).minutes() #else null #end;
            __self__.nanoseconds = #if !macro function():GoInt64 return ((_d.value : stdgo.time.Time.Duration)).nanoseconds() #else null #end;
            __self__.round = #if !macro function(_m:stdgo.time.Time.Duration):stdgo.time.Time.Duration return ((_d.value : stdgo.time.Time.Duration)).round(_m) #else null #end;
            __self__.seconds = #if !macro function():GoFloat64 return ((_d.value : stdgo.time.Time.Duration)).seconds() #else null #end;
            __self__.string = #if !macro function():GoString return ((_d.value : stdgo.time.Time.Duration)).string() #else null #end;
            __self__.truncate = #if !macro function(_m:stdgo.time.Time.Duration):stdgo.time.Time.Duration return ((_d.value : stdgo.time.Time.Duration)).truncate(_m) #else null #end;
            __self__;
        });
    }
    @:keep
    @:pointer
    static public function set(____:T_durationValue,  _d:Pointer<T_durationValue>, _s:GoString):Error {
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = _errParse;
        };
        _d.value = ((_v : T_durationValue));
        return _err;
    }
}
class T_durationValue_wrapper {
    @:keep
    @:pointer
    public var string : () -> GoString = null;
    @:keep
    @:pointer
    public var get : () -> AnyInterface = null;
    @:keep
    @:pointer
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_durationValue>;
}
@:keep class T_funcValue_static_extension {
    @:keep
    static public function string( _f:T_funcValue):GoString {
        return ((((("" : GoString))) : GoString));
    }
    @:keep
    static public function set( _f:T_funcValue, _s:GoString):Error {
        return _f(_s);
    }
}
class T_funcValue_wrapper {
    @:keep
    public var string : () -> GoString = null;
    @:keep
    public var set : GoString -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_funcValue;
}
