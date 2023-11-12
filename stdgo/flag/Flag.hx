package stdgo.flag;
/**
    /|*
    Package flag implements command-line flag parsing.
    
    # Usage
    
    Define flags using flag.String(), Bool(), Int(), etc.
    
    This declares an integer flag, -n, stored in the pointer nFlag, with type *int:
    
    	import "flag"
    	var nFlag = flag.Int("n", 1234, "help message for flag n")
    
    If you like, you can bind the flag to a variable using the Var() functions.
    
    	var flagvar int
    	func init() {
    		flag.IntVar(&flagvar, "flagname", 1234, "help message for flagname")
    	}
    
    Or you can create custom flags that satisfy the Value interface (with
    pointer receivers) and couple them to flag parsing by
    
    	flag.Var(&flagVal, "name", "help message for flagname")
    
    For such flags, the default value is just the initial value of the variable.
    
    After all flags are defined, call
    
    	flag.Parse()
    
    to parse the command line into the defined flags.
    
    Flags may then be used directly. If you're using the flags themselves,
    they are all pointers; if you bind to variables, they're values.
    
    	fmt.Println("ip has value ", *ip)
    	fmt.Println("flagvar has value ", flagvar)
    
    After parsing, the arguments following the flags are available as the
    slice flag.Args() or individually as flag.Arg(i).
    The arguments are indexed from 0 through flag.NArg()-1.
    
    # Command line flag syntax
    
    The following forms are permitted:
    
    	-flag
    	--flag   // double dashes are also permitted
    	-flag=x
    	-flag x  // non-boolean flags only
    
    One or two dashes may be used; they are equivalent.
    The last form is not permitted for boolean flags because the
    meaning of the command
    
    	cmd -x *
    
    where * is a Unix shell wildcard, will change if there is a file
    called 0, false, etc. You must use the -flag=false form to turn
    off a boolean flag.
    
    Flag parsing stops just before the first non-flag argument
    ("-" is a non-flag argument) or after the terminator "--".
    
    Integer flags accept 1234, 0664, 0x1234 and may be negative.
    Boolean flags may be:
    
    	1, 0, t, f, T, F, true, false, TRUE, FALSE, True, False
    
    Duration flags accept any input valid for time.ParseDuration.
    
    The default set of command-line flags is controlled by
    top-level functions.  The FlagSet type allows one to define
    independent sets of flags, such as to implement subcommands
    in a command-line interface. The methods of FlagSet are
    analogous to the top-level functions for the command-line
    flag set.
    *|/
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrHelp is the error returned if the -help or -h flag is invoked
    // but no such flag is defined.
    
    
**/
var errHelp : stdgo.Error = stdgo.errors.Errors.new_(("flag: help requested" : stdgo.GoString));
/**
    // errParse is returned by Set if a flag's value fails to parse, such as with an invalid integer for Int.
    // It then gets wrapped through failf to provide more information.
    
    
**/
var _errParse : stdgo.Error = stdgo.errors.Errors.new_(("parse error" : stdgo.GoString));
/**
    // errRange is returned by Set if a flag's value is out of range.
    // It then gets wrapped through failf to provide more information.
    
    
**/
var _errRange : stdgo.Error = stdgo.errors.Errors.new_(("value out of range" : stdgo.GoString));
/**
    // CommandLine is the default set of command-line flags, parsed from os.Args.
    // The top-level functions such as BoolVar, Arg, and so on are wrappers for the
    // methods of CommandLine.
    
    
**/
var commandLine : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.FlagSet> = newFlagSet(stdgo.os.Os.args[(0 : stdgo.StdGoTypes.GoInt)], (1 : stdgo.flag.Flag.ErrorHandling));
/**
    // Usage prints a usage message documenting all defined command-line flags
    // to CommandLine's output, which by default is os.Stderr.
    // It is called when an error occurs while parsing flags.
    // The function is a variable that may be changed to point to a custom function.
    // By default it prints a simple header and calls PrintDefaults; for details about the
    // format of the output and how to control it, see the documentation for PrintDefaults.
    // Custom usage functions may choose to exit the program; by default exiting
    // happens anyway as the command line's error handling strategy is set to
    // ExitOnError.
    
    
**/
var usage : () -> Void = function():Void {
        stdgo.fmt.Fmt.fprintf(commandLine.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.os.Os.args[(0 : stdgo.StdGoTypes.GoInt)]));
        printDefaults();
    };
/**
    
    
    
**/
var defaultUsage : () -> Void = usage;
/**
    // These constants cause FlagSet.Parse to behave as described if the parse fails.
    
    // Return a descriptive error.
**/
final continueOnError : stdgo.flag.Flag.ErrorHandling = (2 : stdgo.flag.Flag.ErrorHandling);
/**
    // These constants cause FlagSet.Parse to behave as described if the parse fails.
    
    // Call os.Exit(2) or for -h/-help Exit(0).
**/
final exitOnError = (2 : stdgo.flag.Flag.ErrorHandling);
/**
    // These constants cause FlagSet.Parse to behave as described if the parse fails.
    
    // Call panic with a descriptive error.
**/
final panicOnError = (2 : stdgo.flag.Flag.ErrorHandling);
/**
    // optional interface to indicate boolean flags that can be
    // supplied without "=value" text
    
    
**/
typedef T_boolFlag = stdgo.StdGoTypes.StructType & {
    > Value,
    /**
        
        
        
    **/
    public dynamic function isBoolFlag():Bool;
};
/**
    // Value is the interface to the dynamic value stored in a flag.
    // (The default value is represented as a string.)
    //
    // If a Value has an IsBoolFlag() bool method returning true,
    // the command-line parser makes -name equivalent to -name=true
    // rather than using the next command-line argument.
    //
    // Set is called once, in command line order, for each flag present.
    // The flag package may call the String method with a zero-valued receiver,
    // such as a nil pointer.
    
    
**/
typedef Value = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function set(_0:stdgo.GoString):stdgo.Error;
};
/**
    // Getter is an interface that allows the contents of a Value to be retrieved.
    // It wraps the Value interface, rather than being part of it, because it
    // appeared after Go 1 and its compatibility rules. All Value types provided
    // by this package satisfy the Getter interface, except the type used by Func.
    
    
**/
typedef Getter = stdgo.StdGoTypes.StructType & {
    > Value,
    /**
        
        
        
    **/
    public dynamic function get():stdgo.StdGoTypes.AnyInterface;
};
/**
    // -- encoding.TextUnmarshaler Value
    
    
**/
@:structInit @:private @:using(stdgo.flag.Flag.T_textValue_static_extension) class T_textValue {
    public var _p : stdgo.encoding.Encoding.TextUnmarshaler = (null : stdgo.encoding.Encoding.TextUnmarshaler);
    public function new(?_p:stdgo.encoding.Encoding.TextUnmarshaler) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_textValue(_p);
    }
}
/**
    // A FlagSet represents a set of defined flags. The zero value of a FlagSet
    // has no name and has ContinueOnError error handling.
    //
    // Flag names must be unique within a FlagSet. An attempt to define a flag whose
    // name is already in use will cause a panic.
    
    
**/
@:structInit @:using(stdgo.flag.Flag.FlagSet_static_extension) class FlagSet {
    /**
        // Usage is the function called when an error occurs while parsing flags.
        // The field is a function (not a method) that may be changed to point to
        // a custom error handler. What happens after Usage is called depends
        // on the ErrorHandling setting; for the command line, this defaults
        // to ExitOnError, which exits the program after calling Usage.
    **/
    public var usage : () -> Void = null;
    public var _name : stdgo.GoString = "";
    public var _parsed : Bool = false;
    public var _actual : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
    public var _formal : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _errorHandling : stdgo.flag.Flag.ErrorHandling = ((0 : stdgo.StdGoTypes.GoInt) : stdgo.flag.Flag.ErrorHandling);
    public var _output : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _undef : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public function new(?usage:() -> Void, ?_name:stdgo.GoString, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>, ?_args:stdgo.Slice<stdgo.GoString>, ?_errorHandling:stdgo.flag.Flag.ErrorHandling, ?_output:stdgo.io.Io.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) {
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
/**
    // A Flag represents the state of a flag.
    
    
**/
@:structInit class Flag {
    public var name : stdgo.GoString = "";
    public var usage : stdgo.GoString = "";
    public var value : stdgo.flag.Flag.Value = (null : stdgo.flag.Flag.Value);
    public var defValue : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?usage:stdgo.GoString, ?value:stdgo.flag.Flag.Value, ?defValue:stdgo.GoString) {
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
/**
    // -- bool Value
**/
@:named @:using(stdgo.flag.Flag.T_boolValue_static_extension) typedef T_boolValue = Bool;
/**
    // -- int Value
**/
@:named @:using(stdgo.flag.Flag.T_intValue_static_extension) typedef T_intValue = stdgo.StdGoTypes.GoInt;
/**
    // -- int64 Value
**/
@:named @:using(stdgo.flag.Flag.T_int64Value_static_extension) typedef T_int64Value = stdgo.StdGoTypes.GoInt64;
/**
    // -- uint Value
**/
@:named @:using(stdgo.flag.Flag.T_uintValue_static_extension) typedef T_uintValue = stdgo.StdGoTypes.GoUInt;
/**
    // -- uint64 Value
**/
@:named @:using(stdgo.flag.Flag.T_uint64Value_static_extension) typedef T_uint64Value = stdgo.StdGoTypes.GoUInt64;
/**
    // -- string Value
**/
@:named @:using(stdgo.flag.Flag.T_stringValue_static_extension) typedef T_stringValue = stdgo.GoString;
/**
    // -- float64 Value
**/
@:named @:using(stdgo.flag.Flag.T_float64Value_static_extension) typedef T_float64Value = stdgo.StdGoTypes.GoFloat64;
/**
    // -- time.Duration Value
**/
@:named @:using(stdgo.flag.Flag.T_durationValue_static_extension) typedef T_durationValue = stdgo.time.Time.Duration;
/**
    // -- func Value
**/
@:named @:using(stdgo.flag.Flag.T_funcValue_static_extension) typedef T_funcValue = stdgo.GoString -> stdgo.Error;
/**
    // -- boolFunc Value
**/
@:named @:using(stdgo.flag.Flag.T_boolFuncValue_static_extension) typedef T_boolFuncValue = stdgo.GoString -> stdgo.Error;
/**
    // ErrorHandling defines how FlagSet.Parse behaves if the parse fails.
**/
@:named typedef ErrorHandling = stdgo.StdGoTypes.GoInt;
/**
    // ResetForTesting clears all flag state and sets the usage function as directed.
    // After calling ResetForTesting, parse errors in flag handling will not
    // exit the program.
**/
function resetForTesting(_usage:() -> Void):Void {
        commandLine = newFlagSet(stdgo.os.Os.args[(0 : stdgo.StdGoTypes.GoInt)], (0 : stdgo.flag.Flag.ErrorHandling));
        commandLine.setOutput(stdgo.io.Io.discard);
        commandLine.usage = _commandLineUsage;
        usage = _usage;
    }
function _numError(_err:stdgo.Error):stdgo.Error {
        var __tmp__ = try {
            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>)) : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), ok : true };
        } catch(_) {
            { value : (null : stdgo.StdGoTypes.Ref<stdgo.strconv.Strconv.NumError>), ok : false };
        }, _ne = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            return _err;
        };
        if (stdgo.Go.toInterface(_ne.err) == (stdgo.Go.toInterface(stdgo.strconv.Strconv.errSyntax))) {
            return _errParse;
        };
        if (stdgo.Go.toInterface(_ne.err) == (stdgo.Go.toInterface(stdgo.strconv.Strconv.errRange))) {
            return _errRange;
        };
        return _err;
    }
function _newBoolValue(_val:Bool, _p:stdgo.Pointer<Bool>):stdgo.Pointer<T_boolValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_boolValue>(() -> (_p.value : stdgo.flag.Flag.T_boolValue), v -> (_p.value = (v : Bool) : stdgo.flag.Flag.T_boolValue));
    }
function _newIntValue(_val:stdgo.StdGoTypes.GoInt, _p:stdgo.Pointer<stdgo.StdGoTypes.GoInt>):stdgo.Pointer<T_intValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_intValue>(() -> (_p.value : stdgo.flag.Flag.T_intValue), v -> (_p.value = (v : stdgo.StdGoTypes.GoInt) : stdgo.flag.Flag.T_intValue));
    }
function _newInt64Value(_val:stdgo.StdGoTypes.GoInt64, _p:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>):stdgo.Pointer<T_int64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_int64Value>(() -> (_p.value : stdgo.flag.Flag.T_int64Value), v -> (_p.value = (v : stdgo.StdGoTypes.GoInt64) : stdgo.flag.Flag.T_int64Value));
    }
function _newUintValue(_val:stdgo.StdGoTypes.GoUInt, _p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt>):stdgo.Pointer<T_uintValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_uintValue>(() -> (_p.value : stdgo.flag.Flag.T_uintValue), v -> (_p.value = (v : stdgo.StdGoTypes.GoUInt) : stdgo.flag.Flag.T_uintValue));
    }
function _newUint64Value(_val:stdgo.StdGoTypes.GoUInt64, _p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>):stdgo.Pointer<T_uint64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_uint64Value>(() -> (_p.value : stdgo.flag.Flag.T_uint64Value), v -> (_p.value = (v : stdgo.StdGoTypes.GoUInt64) : stdgo.flag.Flag.T_uint64Value));
    }
function _newStringValue(_val:stdgo.GoString, _p:stdgo.Pointer<stdgo.GoString>):stdgo.Pointer<T_stringValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_stringValue>(() -> (_p.value : stdgo.flag.Flag.T_stringValue), v -> (_p.value = (v : stdgo.GoString) : stdgo.flag.Flag.T_stringValue));
    }
function _newFloat64Value(_val:stdgo.StdGoTypes.GoFloat64, _p:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>):stdgo.Pointer<T_float64Value> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_float64Value>(() -> (_p.value : stdgo.flag.Flag.T_float64Value), v -> (_p.value = (v : stdgo.StdGoTypes.GoFloat64) : stdgo.flag.Flag.T_float64Value));
    }
function _newDurationValue(_val:stdgo.time.Time.Duration, _p:stdgo.Pointer<stdgo.time.Time.Duration>):stdgo.Pointer<T_durationValue> {
        _p.value = _val;
        return new stdgo.Pointer<stdgo.flag.Flag.T_durationValue>(() -> (_p.value : stdgo.flag.Flag.T_durationValue), v -> (_p.value = (v : stdgo.time.Time.Duration) : stdgo.flag.Flag.T_durationValue));
    }
function _newTextValue(_val:stdgo.encoding.Encoding.TextMarshaler, _p:stdgo.encoding.Encoding.TextUnmarshaler):T_textValue {
        var _ptrVal:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_p))?.__copy__();
        if (_ptrVal.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            throw stdgo.Go.toInterface(("variable value type must be a pointer" : stdgo.GoString));
        };
        var _defVal:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(_val))?.__copy__();
        if (_defVal.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
            _defVal = _defVal.elem()?.__copy__();
        };
        if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
            throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("default type does not match variable type: %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_defVal.type()), stdgo.Go.toInterface(_ptrVal.type().elem())));
        };
        _ptrVal.elem().set(_defVal?.__copy__());
        return (new T_textValue(_p) : T_textValue);
    }
/**
    // sortFlags returns the flags as a slice in lexicographical sorted order.
**/
function _sortFlags(_flags:GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<Flag>>):stdgo.Slice<stdgo.StdGoTypes.Ref<Flag>> {
        var _result = new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>((_flags.length : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (__0 => _f in _flags) {
            _result[(_i : stdgo.StdGoTypes.GoInt)] = _f;
            _i++;
        };
        stdgo.sort.Sort.slice(stdgo.Go.toInterface(_result), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
            return _result[(_i : stdgo.StdGoTypes.GoInt)].name < _result[(_j : stdgo.StdGoTypes.GoInt)].name;
        });
        return _result;
    }
/**
    // VisitAll visits the command-line flags in lexicographical order, calling
    // fn for each. It visits all flags, even those not set.
**/
function visitAll(_fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void {
        commandLine.visitAll(_fn);
    }
/**
    // Visit visits the command-line flags in lexicographical order, calling fn
    // for each. It visits only those flags that have been set.
**/
function visit(_fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void {
        commandLine.visit(_fn);
    }
/**
    // Lookup returns the Flag structure of the named command-line flag,
    // returning nil if none exists.
**/
function lookup(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<Flag> {
        return (commandLine._formal[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>));
    }
/**
    // Set sets the value of the named command-line flag.
**/
function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        return commandLine._set(_name, _value);
    }
/**
    // isZeroValue determines whether the string represents the zero
    // value for a flag.
**/
function _isZeroValue(_flag:stdgo.StdGoTypes.Ref<Flag>, _value:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _ok:Bool = false, _err:stdgo.Error = (null : stdgo.Error);
        var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_flag.value));
        try {
            var _z:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
            if (_typ.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                _z = stdgo.reflect.Reflect.new_(_typ.elem())?.__copy__();
            } else {
                _z = stdgo.reflect.Reflect.zero(_typ)?.__copy__();
            };
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _e:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_e != null) {
                            if (_typ.kind() == ((22u32 : stdgo.reflect.Reflect.Kind))) {
                                _typ = _typ.elem();
                            };
                            _err = stdgo.fmt.Fmt.errorf(("panic calling String method on zero %v for flag %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_typ), stdgo.Go.toInterface(_flag.name), _e);
                        };
                    };
                };
                a();
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _value == (((stdgo.Go.typeAssert((_z.interface_() : Value)) : Value).string() : stdgo.GoString)), _1 : (null : stdgo.Error) };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _ok, _1 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return { _0 : _ok, _1 : _err };
        };
    }
/**
    // UnquoteUsage extracts a back-quoted name from the usage
    // string for a flag and returns it and the un-quoted usage.
    // Given "a `name` to show" it returns ("name", "a name to show").
    // If there are no back quotes, the name is an educated guess of the
    // type of the flag's value, or the empty string if the flag is boolean.
**/
function unquoteUsage(_flag:stdgo.StdGoTypes.Ref<Flag>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _usage:stdgo.GoString = ("" : stdgo.GoString);
        _usage = _flag.usage;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_usage.length), _i++, {
                if (_usage[(_i : stdgo.StdGoTypes.GoInt)] == ((96 : stdgo.StdGoTypes.GoUInt8))) {
                    {
                        var _j:stdgo.StdGoTypes.GoInt = _i + (1 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_j < (_usage.length), _j++, {
                            if (_usage[(_j : stdgo.StdGoTypes.GoInt)] == ((96 : stdgo.StdGoTypes.GoUInt8))) {
                                _name = (_usage.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt), _j) : stdgo.GoString);
                                _usage = ((_usage.__slice__(0, _i) : stdgo.GoString) + _name) + (_usage.__slice__(_j + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                                return { _0 : _name, _1 : _usage };
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
                var _fv:stdgo.flag.Flag.T_boolFlag = __type__ == null ? (null : stdgo.flag.Flag.T_boolFlag) : cast __type__;
                if (_fv.isBoolFlag()) {
                    _name = stdgo.Go.str();
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_durationValue>))) {
                var _fv:stdgo.Pointer<stdgo.flag.Flag.T_durationValue> = __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_durationValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_durationValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_durationValue>) : __type__.__underlying__().value;
                _name = ("duration" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_float64Value>))) {
                var _fv:stdgo.Pointer<stdgo.flag.Flag.T_float64Value> = __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_float64Value>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_float64Value>) : __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_float64Value>) : __type__.__underlying__().value;
                _name = ("float" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_intValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_int64Value>))) {
                var _fv:stdgo.flag.Flag.Value = __type__ == null ? (null : stdgo.flag.Flag.Value) : cast __type__;
                _name = ("int" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_stringValue>))) {
                var _fv:stdgo.Pointer<stdgo.flag.Flag.T_stringValue> = __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_stringValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_stringValue>) : __type__ == null ? (null : stdgo.Pointer<stdgo.flag.Flag.T_stringValue>) : __type__.__underlying__().value;
                _name = ("string" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_uintValue>)) || stdgo.Go.typeEquals((__type__ : stdgo.Pointer<T_uint64Value>))) {
                var _fv:stdgo.flag.Flag.Value = __type__ == null ? (null : stdgo.flag.Flag.Value) : cast __type__;
                _name = ("uint" : stdgo.GoString);
            };
        };
        return { _0 : _name, _1 : _usage };
    }
/**
    // PrintDefaults prints, to standard error unless configured otherwise,
    // a usage message showing the default settings of all defined
    // command-line flags.
    // For an integer valued flag x, the default output has the form
    //
    //	-x int
    //		usage-message-for-x (default 7)
    //
    // The usage message will appear on a separate line for anything but
    // a bool flag with a one-byte name. For bool flags, the type is
    // omitted and if the flag name is one byte the usage message appears
    // on the same line. The parenthetical default is omitted if the
    // default is the zero value for the type. The listed type, here int,
    // can be changed by placing a back-quoted name in the flag's usage
    // string; the first such item in the message is taken to be a parameter
    // name to show in the message and the back quotes are stripped from
    // the message when displayed. For instance, given
    //
    //	flag.String("I", "", "search `directory` for include files")
    //
    // the output will be
    //
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
function nflag():stdgo.StdGoTypes.GoInt {
        return (commandLine._actual.length);
    }
/**
    // Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
    // after flags have been processed. Arg returns an empty string if the
    // requested element does not exist.
**/
function arg(_i:stdgo.StdGoTypes.GoInt):stdgo.GoString {
        return commandLine.arg(_i);
    }
/**
    // NArg is the number of arguments remaining after flags have been processed.
**/
function narg():stdgo.StdGoTypes.GoInt {
        return (commandLine._args.length);
    }
/**
    // Args returns the non-flag command-line arguments.
**/
function args():stdgo.Slice<stdgo.GoString> {
        return commandLine._args;
    }
/**
    // BoolVar defines a bool flag with specified name, default value, and usage string.
    // The argument p points to a bool variable in which to store the value of the flag.
**/
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newBoolValue(_value, _p)), _name, _usage);
    }
/**
    // Bool defines a bool flag with specified name, default value, and usage string.
    // The return value is the address of a bool variable that stores the value of the flag.
**/
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        return commandLine.bool_(_name, _value, _usage);
    }
/**
    // IntVar defines an int flag with specified name, default value, and usage string.
    // The argument p points to an int variable in which to store the value of the flag.
**/
function intVar(_p:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newIntValue(_value, _p)), _name, _usage);
    }
/**
    // Int defines an int flag with specified name, default value, and usage string.
    // The return value is the address of an int variable that stores the value of the flag.
**/
function int_(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt> {
        return commandLine.int_(_name, _value, _usage);
    }
/**
    // Int64Var defines an int64 flag with specified name, default value, and usage string.
    // The argument p points to an int64 variable in which to store the value of the flag.
**/
function int64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newInt64Value(_value, _p)), _name, _usage);
    }
/**
    // Int64 defines an int64 flag with specified name, default value, and usage string.
    // The return value is the address of an int64 variable that stores the value of the flag.
**/
function int64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt64> {
        return commandLine.int64(_name, _value, _usage);
    }
/**
    // UintVar defines a uint flag with specified name, default value, and usage string.
    // The argument p points to a uint variable in which to store the value of the flag.
**/
function uintVar(_p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newUintValue(_value, _p)), _name, _usage);
    }
/**
    // Uint defines a uint flag with specified name, default value, and usage string.
    // The return value is the address of a uint variable that stores the value of the flag.
**/
function uint(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt> {
        return commandLine.uint(_name, _value, _usage);
    }
/**
    // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
    // The argument p points to a uint64 variable in which to store the value of the flag.
**/
function uint64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newUint64Value(_value, _p)), _name, _usage);
    }
/**
    // Uint64 defines a uint64 flag with specified name, default value, and usage string.
    // The return value is the address of a uint64 variable that stores the value of the flag.
**/
function uint64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> {
        return commandLine.uint64(_name, _value, _usage);
    }
/**
    // StringVar defines a string flag with specified name, default value, and usage string.
    // The argument p points to a string variable in which to store the value of the flag.
**/
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newStringValue(_value, _p)), _name, _usage);
    }
/**
    // String defines a string flag with specified name, default value, and usage string.
    // The return value is the address of a string variable that stores the value of the flag.
**/
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        return commandLine.string(_name, _value, _usage);
    }
/**
    // Float64Var defines a float64 flag with specified name, default value, and usage string.
    // The argument p points to a float64 variable in which to store the value of the flag.
**/
function float64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newFloat64Value(_value, _p)), _name, _usage);
    }
/**
    // Float64 defines a float64 flag with specified name, default value, and usage string.
    // The return value is the address of a float64 variable that stores the value of the flag.
**/
function float64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> {
        return commandLine.float64(_name, _value, _usage);
    }
/**
    // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
    // The argument p points to a time.Duration variable in which to store the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function durationVar(_p:stdgo.Pointer<stdgo.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newDurationValue(_value, _p)), _name, _usage);
    }
/**
    // Duration defines a time.Duration flag with specified name, default value, and usage string.
    // The return value is the address of a time.Duration variable that stores the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
function duration(_name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo.time.Time.Duration> {
        return commandLine.duration(_name, _value, _usage);
    }
/**
    // TextVar defines a flag with a specified name, default value, and usage string.
    // The argument p must be a pointer to a variable that will hold the value
    // of the flag, and p must implement encoding.TextUnmarshaler.
    // If the flag is used, the flag value will be passed to p's UnmarshalText method.
    // The type of the default value must be the same as the type of p.
**/
function textVar(_p:stdgo.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void {
        commandLine.var_(stdgo.Go.asInterface(_newTextValue(_value, _p)), _name, _usage);
    }
/**
    // Func defines a flag with the specified name and usage string.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        commandLine.func(_name, _usage, _fn);
    }
/**
    // BoolFunc defines a flag with the specified name and usage string without requiring values.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        commandLine.boolFunc(_name, _usage, _fn);
    }
/**
    // Var defines a flag with the specified name and usage string. The type and
    // value of the flag are represented by the first argument, of type Value, which
    // typically holds a user-defined implementation of Value. For instance, the
    // caller could create a flag that turns a comma-separated string into a slice
    // of strings by giving the slice the methods of Value; in particular, Set would
    // decompose the comma-separated string into the slice.
**/
function var_(_value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        commandLine.var_(_value, _name, _usage);
    }
/**
    // Parse parses the command-line flags from os.Args[1:]. Must be called
    // after all flags are defined and before flags are accessed by the program.
**/
function parse():Void {
        commandLine.parse((stdgo.os.Os.args.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>));
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
function newFlagSet(_name:stdgo.GoString, _errorHandling:ErrorHandling):stdgo.StdGoTypes.Ref<FlagSet> {
        var _f = (stdgo.Go.setRef(({ _name : _name, _errorHandling : _errorHandling } : FlagSet)) : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.FlagSet>);
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get();
    @:keep
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_textValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_textValue_asInterface) class T_textValue_static_extension {
    @:keep
    static public function string( _v:T_textValue):stdgo.GoString {
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_v._p) : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler), ok : true };
            } catch(_) {
                { value : (null : stdgo.encoding.Encoding.TextMarshaler), ok : false };
            }, _m = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _m.marshalText(), _b:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        return (_b : stdgo.GoString);
                    };
                };
            };
        };
        return stdgo.Go.str();
    }
    @:keep
    static public function get( _v:T_textValue):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(_v._p);
    }
    @:keep
    static public function set( _v:T_textValue, _s:stdgo.GoString):stdgo.Error {
        return _v._p.unmarshalText((_s : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
    }
}
class FlagSet_asInterface {
    /**
        // Init sets the name and error handling property for a flag set.
        // By default, the zero FlagSet uses an empty name and the
        // ContinueOnError error handling policy.
    **/
    @:keep
    public dynamic function init(_name:stdgo.GoString, _errorHandling:ErrorHandling):Void __self__.value.init(_name, _errorHandling);
    /**
        // Parsed reports whether f.Parse has been called.
    **/
    @:keep
    public dynamic function parsed():Bool return __self__.value.parsed();
    /**
        // Parse parses flag definitions from the argument list, which should not
        // include the command name. Must be called after all flags in the FlagSet
        // are defined and before flags are accessed by the program.
        // The return value will be ErrHelp if -help or -h were set but not defined.
    **/
    @:keep
    public dynamic function parse(_arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error return __self__.value.parse(_arguments);
    /**
        // parseOne parses one flag. It reports whether a flag was seen.
    **/
    @:keep
    public dynamic function _parseOne():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._parseOne();
    /**
        // usage calls the Usage method for the flag set if one is specified,
        // or the appropriate default usage function otherwise.
    **/
    @:keep
    public dynamic function _usage():Void __self__.value._usage();
    /**
        // failf prints to standard error a formatted error and usage message and
        // returns the error.
    **/
    @:keep
    public dynamic function _failf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Error return __self__.value._failf(_format, ..._a);
    /**
        // sprintf formats the message, prints it to output, and returns it.
    **/
    @:keep
    public dynamic function _sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.GoString return __self__.value._sprintf(_format, ..._a);
    /**
        // Var defines a flag with the specified name and usage string. The type and
        // value of the flag are represented by the first argument, of type Value, which
        // typically holds a user-defined implementation of Value. For instance, the
        // caller could create a flag that turns a comma-separated string into a slice
        // of strings by giving the slice the methods of Value; in particular, Set would
        // decompose the comma-separated string into the slice.
    **/
    @:keep
    public dynamic function var_(_value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void __self__.value.var_(_value, _name, _usage);
    /**
        // BoolFunc defines a flag with the specified name and usage string without requiring values.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    public dynamic function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void __self__.value.boolFunc(_name, _usage, _fn);
    /**
        // Func defines a flag with the specified name and usage string.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    public dynamic function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void __self__.value.func(_name, _usage, _fn);
    /**
        // TextVar defines a flag with a specified name, default value, and usage string.
        // The argument p must be a pointer to a variable that will hold the value
        // of the flag, and p must implement encoding.TextUnmarshaler.
        // If the flag is used, the flag value will be passed to p's UnmarshalText method.
        // The type of the default value must be the same as the type of p.
    **/
    @:keep
    public dynamic function textVar(_p:stdgo.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void __self__.value.textVar(_p, _name, _value, _usage);
    /**
        // Duration defines a time.Duration flag with specified name, default value, and usage string.
        // The return value is the address of a time.Duration variable that stores the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    public dynamic function duration(_name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo.time.Time.Duration> return __self__.value.duration(_name, _value, _usage);
    /**
        // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        // The argument p points to a time.Duration variable in which to store the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    public dynamic function durationVar(_p:stdgo.Pointer<stdgo.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):Void __self__.value.durationVar(_p, _name, _value, _usage);
    /**
        // Float64 defines a float64 flag with specified name, default value, and usage string.
        // The return value is the address of a float64 variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function float64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> return __self__.value.float64(_name, _value, _usage);
    /**
        // Float64Var defines a float64 flag with specified name, default value, and usage string.
        // The argument p points to a float64 variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function float64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):Void __self__.value.float64Var(_p, _name, _value, _usage);
    /**
        // String defines a string flag with specified name, default value, and usage string.
        // The return value is the address of a string variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> return __self__.value.string(_name, _value, _usage);
    /**
        // StringVar defines a string flag with specified name, default value, and usage string.
        // The argument p points to a string variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void __self__.value.stringVar(_p, _name, _value, _usage);
    /**
        // Uint64 defines a uint64 flag with specified name, default value, and usage string.
        // The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function uint64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> return __self__.value.uint64(_name, _value, _usage);
    /**
        // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        // The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function uint64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):Void __self__.value.uint64Var(_p, _name, _value, _usage);
    /**
        // Uint defines a uint flag with specified name, default value, and usage string.
        // The return value is the address of a uint variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function uint(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt> return __self__.value.uint(_name, _value, _usage);
    /**
        // UintVar defines a uint flag with specified name, default value, and usage string.
        // The argument p points to a uint variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function uintVar(_p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):Void __self__.value.uintVar(_p, _name, _value, _usage);
    /**
        // Int64 defines an int64 flag with specified name, default value, and usage string.
        // The return value is the address of an int64 variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function int64(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt64> return __self__.value.int64(_name, _value, _usage);
    /**
        // Int64Var defines an int64 flag with specified name, default value, and usage string.
        // The argument p points to an int64 variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function int64Var(_p:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):Void __self__.value.int64Var(_p, _name, _value, _usage);
    /**
        // Int defines an int flag with specified name, default value, and usage string.
        // The return value is the address of an int variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function int_(_name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt> return __self__.value.int_(_name, _value, _usage);
    /**
        // IntVar defines an int flag with specified name, default value, and usage string.
        // The argument p points to an int variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function intVar(_p:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):Void __self__.value.intVar(_p, _name, _value, _usage);
    /**
        // Bool defines a bool flag with specified name, default value, and usage string.
        // The return value is the address of a bool variable that stores the value of the flag.
    **/
    @:keep
    public dynamic function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> return __self__.value.bool_(_name, _value, _usage);
    /**
        // BoolVar defines a bool flag with specified name, default value, and usage string.
        // The argument p points to a bool variable in which to store the value of the flag.
    **/
    @:keep
    public dynamic function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void __self__.value.boolVar(_p, _name, _value, _usage);
    /**
        // Args returns the non-flag arguments.
    **/
    @:keep
    public dynamic function args():stdgo.Slice<stdgo.GoString> return __self__.value.args();
    /**
        // NArg is the number of arguments remaining after flags have been processed.
    **/
    @:keep
    public dynamic function narg():stdgo.StdGoTypes.GoInt return __self__.value.narg();
    /**
        // Arg returns the i'th argument. Arg(0) is the first remaining argument
        // after flags have been processed. Arg returns an empty string if the
        // requested element does not exist.
    **/
    @:keep
    public dynamic function arg(_i:stdgo.StdGoTypes.GoInt):stdgo.GoString return __self__.value.arg(_i);
    /**
        // NFlag returns the number of flags that have been set.
    **/
    @:keep
    public dynamic function nflag():stdgo.StdGoTypes.GoInt return __self__.value.nflag();
    /**
        // defaultUsage is the default function to print a usage message.
    **/
    @:keep
    public dynamic function _defaultUsage():Void __self__.value._defaultUsage();
    /**
        // PrintDefaults prints, to standard error unless configured otherwise, the
        // default values of all defined command-line flags in the set. See the
        // documentation for the global function PrintDefaults for more information.
    **/
    @:keep
    public dynamic function printDefaults():Void __self__.value.printDefaults();
    @:keep
    public dynamic function _set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return __self__.value._set(_name, _value);
    /**
        // Set sets the value of the named flag.
    **/
    @:keep
    public dynamic function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return __self__.value.set(_name, _value);
    /**
        // Lookup returns the Flag structure of the named flag, returning nil if none exists.
    **/
    @:keep
    public dynamic function lookup(_name:stdgo.GoString):stdgo.StdGoTypes.Ref<Flag> return __self__.value.lookup(_name);
    /**
        // Visit visits the flags in lexicographical order, calling fn for each.
        // It visits only those flags that have been set.
    **/
    @:keep
    public dynamic function visit(_fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void __self__.value.visit(_fn);
    /**
        // VisitAll visits the flags in lexicographical order, calling fn for each.
        // It visits all flags, even those not set.
    **/
    @:keep
    public dynamic function visitAll(_fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void __self__.value.visitAll(_fn);
    /**
        // SetOutput sets the destination for usage and error messages.
        // If output is nil, os.Stderr is used.
    **/
    @:keep
    public dynamic function setOutput(_output:stdgo.io.Io.Writer):Void __self__.value.setOutput(_output);
    /**
        // ErrorHandling returns the error handling behavior of the flag set.
    **/
    @:keep
    public dynamic function errorHandling():ErrorHandling return __self__.value.errorHandling();
    /**
        // Name returns the name of the flag set.
    **/
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    /**
        // Output returns the destination for usage and error messages. os.Stderr is returned if
        // output was not set or was set to nil.
    **/
    @:keep
    public dynamic function output():stdgo.io.Io.Writer return __self__.value.output();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FlagSet>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
    /**
        // Init sets the name and error handling property for a flag set.
        // By default, the zero FlagSet uses an empty name and the
        // ContinueOnError error handling policy.
    **/
    @:keep
    static public function init( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _errorHandling:ErrorHandling):Void {
        _f._name = _name;
        _f._errorHandling = _errorHandling;
    }
    /**
        // Parsed reports whether f.Parse has been called.
    **/
    @:keep
    static public function parsed( _f:stdgo.StdGoTypes.Ref<FlagSet>):Bool {
        return _f._parsed;
    }
    /**
        // Parse parses flag definitions from the argument list, which should not
        // include the command name. Must be called after all flags in the FlagSet
        // are defined and before flags are accessed by the program.
        // The return value will be ErrHelp if -help or -h were set but not defined.
    **/
    @:keep
    static public function parse( _f:stdgo.StdGoTypes.Ref<FlagSet>, _arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error {
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
                if (__value__ == ((0 : stdgo.flag.Flag.ErrorHandling))) {
                    return _err;
                } else if (__value__ == ((1 : stdgo.flag.Flag.ErrorHandling))) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(errHelp))) {
                        Sys.exit((0 : stdgo.StdGoTypes.GoInt));
                    };
                    Sys.exit((2 : stdgo.StdGoTypes.GoInt));
                } else if (__value__ == ((2 : stdgo.flag.Flag.ErrorHandling))) {
                    throw stdgo.Go.toInterface(_err);
                };
            };
        };
        return (null : stdgo.Error);
    }
    /**
        // parseOne parses one flag. It reports whether a flag was seen.
    **/
    @:keep
    static public function _parseOne( _f:stdgo.StdGoTypes.Ref<FlagSet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        if ((_f._args.length) == ((0 : stdgo.StdGoTypes.GoInt))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _s:stdgo.GoString = _f._args[(0 : stdgo.StdGoTypes.GoInt)];
        if ((_s.length < (2 : stdgo.StdGoTypes.GoInt)) || (_s[(0 : stdgo.StdGoTypes.GoInt)] != (45 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _numMinuses:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
        if (_s[(1 : stdgo.StdGoTypes.GoInt)] == ((45 : stdgo.StdGoTypes.GoUInt8))) {
            _numMinuses++;
            if ((_s.length) == ((2 : stdgo.StdGoTypes.GoInt))) {
                _f._args = (_f._args.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>);
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        var _name:stdgo.GoString = (_s.__slice__(_numMinuses) : stdgo.GoString);
        if (((_name.length == (0 : stdgo.StdGoTypes.GoInt)) || (_name[(0 : stdgo.StdGoTypes.GoInt)] == (45 : stdgo.StdGoTypes.GoUInt8))) || (_name[(0 : stdgo.StdGoTypes.GoInt)] == (61 : stdgo.StdGoTypes.GoUInt8))) {
            return { _0 : false, _1 : _f._failf(("bad flag syntax: %s" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        };
        _f._args = (_f._args.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _hasValue:Bool = false;
        var _value:stdgo.GoString = stdgo.Go.str();
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_name.length), _i++, {
                if (_name[(_i : stdgo.StdGoTypes.GoInt)] == ((61 : stdgo.StdGoTypes.GoUInt8))) {
                    _value = (_name.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                    _hasValue = true;
                    _name = (_name.__slice__((0 : stdgo.StdGoTypes.GoInt), _i) : stdgo.GoString);
                    break;
                };
            });
        };
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name) ? { value : _f._formal[_name], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>), ok : false }), _flag:stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            if ((_name == ("help" : stdgo.GoString)) || (_name == ("h" : stdgo.GoString))) {
                _f._usage();
                return { _0 : false, _1 : errHelp };
            };
            return { _0 : false, _1 : _f._failf(("flag provided but not defined: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
        };
        {
            var __tmp__ = try {
                { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : T_boolFlag)) : T_boolFlag), ok : true };
            } catch(_) {
                { value : (null : stdgo.flag.Flag.T_boolFlag), ok : false };
            }, _fv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _fv.isBoolFlag()) {
                if (_hasValue) {
                    {
                        var _err:stdgo.Error = _fv.set(_value);
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
                if (!_hasValue && (_f._args.length > (0 : stdgo.StdGoTypes.GoInt))) {
                    _hasValue = true;
                    {
                        final __tmp__0 = _f._args[(0 : stdgo.StdGoTypes.GoInt)];
                        final __tmp__1 = (_f._args.__slice__((1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _value = __tmp__0;
                        _f._args = __tmp__1;
                    };
                };
                if (!_hasValue) {
                    return { _0 : false, _1 : _f._failf(("flag needs an argument: -%s" : stdgo.GoString), stdgo.Go.toInterface(_name)) };
                };
                {
                    var _err:stdgo.Error = _flag.value.set(_value);
                    if (_err != null) {
                        return { _0 : false, _1 : _f._failf(("invalid value %q for flag -%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
                    };
                };
            };
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    /**
        // usage calls the Usage method for the flag set if one is specified,
        // or the appropriate default usage function otherwise.
    **/
    @:keep
    static public function _usage( _f:stdgo.StdGoTypes.Ref<FlagSet>):Void {
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
    static public function _failf( _f:stdgo.StdGoTypes.Ref<FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _msg:stdgo.GoString = _f._sprintf(_format, ..._a.__toArray__());
        _f._usage();
        return stdgo.errors.Errors.new_(_msg);
    }
    /**
        // sprintf formats the message, prints it to output, and returns it.
    **/
    @:keep
    static public function _sprintf( _f:stdgo.StdGoTypes.Ref<FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.StdGoTypes.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(_a.length, 0, ..._a);
        var _msg:stdgo.GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
        stdgo.fmt.Fmt.fprintln(_f.output(), stdgo.Go.toInterface(_msg));
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
    static public function var_( _f:stdgo.StdGoTypes.Ref<FlagSet>, _value:Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        if (stdgo.strings.Strings.hasPrefix(_name, ("-" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q begins with -" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        } else if (stdgo.strings.Strings.contains(_name, ("=" : stdgo.GoString))) {
            throw stdgo.Go.toInterface(_f._sprintf(("flag %q contains =" : stdgo.GoString), stdgo.Go.toInterface(_name)));
        };
        var _flag = (stdgo.Go.setRef((new Flag(_name, _usage, _value, (_value.string() : stdgo.GoString)) : Flag)) : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name) ? { value : _f._formal[_name], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>), ok : false }), __0:stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag> = __tmp__.value, _alreadythere:Bool = __tmp__.ok;
        if (_alreadythere) {
            var _msg:stdgo.GoString = ("" : stdgo.GoString);
            if (_f._name == (stdgo.Go.str())) {
                _msg = _f._sprintf(("flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_name));
            } else {
                _msg = _f._sprintf(("%s flag redefined: %s" : stdgo.GoString), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_name));
            };
            throw stdgo.Go.toInterface(_msg);
        };
        {
            var _pos:stdgo.GoString = (_f._undef[_name] ?? ("" : stdgo.GoString));
            if (_pos != (stdgo.Go.str())) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("flag %s set at %s before being defined" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_pos)));
            };
        };
        if (_f._formal == null) {
            _f._formal = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
        };
        _f._formal[_name] = _flag;
    }
    /**
        // BoolFunc defines a flag with the specified name and usage string without requiring values.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    static public function boolFunc( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        _f.var_(stdgo.Go.asInterface((_fn : T_boolFuncValue)), _name, _usage);
    }
    /**
        // Func defines a flag with the specified name and usage string.
        // Each time the flag is seen, fn is called with the value of the flag.
        // If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    @:keep
    static public function func( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        _f.var_(stdgo.Go.asInterface((_fn : T_funcValue)), _name, _usage);
    }
    /**
        // TextVar defines a flag with a specified name, default value, and usage string.
        // The argument p must be a pointer to a variable that will hold the value
        // of the flag, and p must implement encoding.TextUnmarshaler.
        // If the flag is used, the flag value will be passed to p's UnmarshalText method.
        // The type of the default value must be the same as the type of p.
    **/
    @:keep
    static public function textVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.encoding.Encoding.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo.encoding.Encoding.TextMarshaler, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newTextValue(_value, _p)), _name, _usage);
    }
    /**
        // Duration defines a time.Duration flag with specified name, default value, and usage string.
        // The return value is the address of a time.Duration variable that stores the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    static public function duration( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo.time.Time.Duration> {
        var _p = stdgo.Go.pointer(((0 : stdgo.StdGoTypes.GoInt64) : stdgo.time.Time.Duration));
        _f.durationVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        // The argument p points to a time.Duration variable in which to store the value of the flag.
        // The flag accepts a value acceptable to time.ParseDuration.
    **/
    @:keep
    static public function durationVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.time.Time.Duration>, _name:stdgo.GoString, _value:stdgo.time.Time.Duration, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newDurationValue(_value, _p)), _name, _usage);
    }
    /**
        // Float64 defines a float64 flag with specified name, default value, and usage string.
        // The return value is the address of a float64 variable that stores the value of the flag.
    **/
    @:keep
    static public function float64( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoFloat64> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoFloat64));
        _f.float64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Float64Var defines a float64 flag with specified name, default value, and usage string.
        // The argument p points to a float64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function float64Var( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.StdGoTypes.GoFloat64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoFloat64, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newFloat64Value(_value, _p)), _name, _usage);
    }
    /**
        // String defines a string flag with specified name, default value, and usage string.
        // The return value is the address of a string variable that stores the value of the flag.
    **/
    @:keep
    static public function string( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        var _p = stdgo.Go.pointer(("" : stdgo.GoString));
        _f.stringVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // StringVar defines a string flag with specified name, default value, and usage string.
        // The argument p points to a string variable in which to store the value of the flag.
    **/
    @:keep
    static public function stringVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newStringValue(_value, _p)), _name, _usage);
    }
    /**
        // Uint64 defines a uint64 flag with specified name, default value, and usage string.
        // The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    @:keep
    static public function uint64( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt64> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoUInt64));
        _f.uint64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        // The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function uint64Var( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt64, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newUint64Value(_value, _p)), _name, _usage);
    }
    /**
        // Uint defines a uint flag with specified name, default value, and usage string.
        // The return value is the address of a uint variable that stores the value of the flag.
    **/
    @:keep
    static public function uint( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoUInt> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoUInt));
        _f.uintVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // UintVar defines a uint flag with specified name, default value, and usage string.
        // The argument p points to a uint variable in which to store the value of the flag.
    **/
    @:keep
    static public function uintVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.StdGoTypes.GoUInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoUInt, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newUintValue(_value, _p)), _name, _usage);
    }
    /**
        // Int64 defines an int64 flag with specified name, default value, and usage string.
        // The return value is the address of an int64 variable that stores the value of the flag.
    **/
    @:keep
    static public function int64( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt64> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt64));
        _f.int64Var(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // Int64Var defines an int64 flag with specified name, default value, and usage string.
        // The argument p points to an int64 variable in which to store the value of the flag.
    **/
    @:keep
    static public function int64Var( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.StdGoTypes.GoInt64>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt64, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newInt64Value(_value, _p)), _name, _usage);
    }
    /**
        // Int defines an int flag with specified name, default value, and usage string.
        // The return value is the address of an int variable that stores the value of the flag.
    **/
    @:keep
    static public function int_( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.StdGoTypes.GoInt> {
        var _p = stdgo.Go.pointer((0 : stdgo.StdGoTypes.GoInt));
        _f.intVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // IntVar defines an int flag with specified name, default value, and usage string.
        // The argument p points to an int variable in which to store the value of the flag.
    **/
    @:keep
    static public function intVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, _name:stdgo.GoString, _value:stdgo.StdGoTypes.GoInt, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newIntValue(_value, _p)), _name, _usage);
    }
    /**
        // Bool defines a bool flag with specified name, default value, and usage string.
        // The return value is the address of a bool variable that stores the value of the flag.
    **/
    @:keep
    static public function bool_( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        var _p = stdgo.Go.pointer(false);
        _f.boolVar(_p, _name, _value, _usage);
        return _p;
    }
    /**
        // BoolVar defines a bool flag with specified name, default value, and usage string.
        // The argument p points to a bool variable in which to store the value of the flag.
    **/
    @:keep
    static public function boolVar( _f:stdgo.StdGoTypes.Ref<FlagSet>, _p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        _f.var_(stdgo.Go.asInterface(_newBoolValue(_value, _p)), _name, _usage);
    }
    /**
        // Args returns the non-flag arguments.
    **/
    @:keep
    static public function args( _f:stdgo.StdGoTypes.Ref<FlagSet>):stdgo.Slice<stdgo.GoString> {
        return _f._args;
    }
    /**
        // NArg is the number of arguments remaining after flags have been processed.
    **/
    @:keep
    static public function narg( _f:stdgo.StdGoTypes.Ref<FlagSet>):stdgo.StdGoTypes.GoInt {
        return (_f._args.length);
    }
    /**
        // Arg returns the i'th argument. Arg(0) is the first remaining argument
        // after flags have been processed. Arg returns an empty string if the
        // requested element does not exist.
    **/
    @:keep
    static public function arg( _f:stdgo.StdGoTypes.Ref<FlagSet>, _i:stdgo.StdGoTypes.GoInt):stdgo.GoString {
        if ((_i < (0 : stdgo.StdGoTypes.GoInt)) || (_i >= _f._args.length)) {
            return stdgo.Go.str();
        };
        return _f._args[(_i : stdgo.StdGoTypes.GoInt)];
    }
    /**
        // NFlag returns the number of flags that have been set.
    **/
    @:keep
    static public function nflag( _f:stdgo.StdGoTypes.Ref<FlagSet>):stdgo.StdGoTypes.GoInt {
        return (_f._actual.length);
    }
    /**
        // defaultUsage is the default function to print a usage message.
    **/
    @:keep
    static public function _defaultUsage( _f:stdgo.StdGoTypes.Ref<FlagSet>):Void {
        if (_f._name == (stdgo.Go.str())) {
            stdgo.fmt.Fmt.fprintf(_f.output(), ("Usage:\n" : stdgo.GoString));
        } else {
            stdgo.fmt.Fmt.fprintf(_f.output(), ("Usage of %s:\n" : stdgo.GoString), stdgo.Go.toInterface(_f._name));
        };
        _f.printDefaults();
    }
    /**
        // PrintDefaults prints, to standard error unless configured otherwise, the
        // default values of all defined command-line flags in the set. See the
        // documentation for the global function PrintDefaults for more information.
    **/
    @:keep
    static public function printDefaults( _f:stdgo.StdGoTypes.Ref<FlagSet>):Void {
        var _isZeroValueErrs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        _f.visitAll(function(_flag:stdgo.StdGoTypes.Ref<Flag>):Void {
            var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)), ("  -%s" : stdgo.GoString), stdgo.Go.toInterface(_flag.name));
            var __tmp__ = unquoteUsage(_flag), _name:stdgo.GoString = __tmp__._0, _usage:stdgo.GoString = __tmp__._1;
            if ((_name.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                _b.writeString((" " : stdgo.GoString));
                _b.writeString(_name);
            };
            if (_b.len() <= (4 : stdgo.StdGoTypes.GoInt)) {
                _b.writeString(("\t" : stdgo.GoString));
            } else {
                _b.writeString(("\n    \t" : stdgo.GoString));
            };
            _b.writeString(stdgo.strings.Strings.replaceAll(_usage, ("\n" : stdgo.GoString), ("\n    \t" : stdgo.GoString)));
            {
                var __tmp__ = _isZeroValue(_flag, _flag.defValue), _isZero:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _isZeroValueErrs = (_isZeroValueErrs.__append__(_err));
                } else if (!_isZero) {
                    {
                        var __tmp__ = try {
                            { value : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_flag.value) : stdgo.Pointer<T_stringValue>)) : stdgo.Pointer<T_stringValue>), ok : true };
                        } catch(_) {
                            { value : (null : stdgo.Pointer<stdgo.flag.Flag.T_stringValue>), ok : false };
                        }, __0 = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)), (" (default %q)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        } else {
                            stdgo.fmt.Fmt.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.StdGoTypes.Ref<stdgo.strings.Strings.Builder>)), (" (default %v)" : stdgo.GoString), stdgo.Go.toInterface(_flag.defValue));
                        };
                    };
                };
            };
            stdgo.fmt.Fmt.fprint(_f.output(), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("\n" : stdgo.GoString)));
        });
        {
            var _errs = _isZeroValueErrs;
            if ((_errs.length) > (0 : stdgo.StdGoTypes.GoInt)) {
                stdgo.fmt.Fmt.fprintln(_f.output());
                for (__0 => _err in _errs) {
                    stdgo.fmt.Fmt.fprintln(_f.output(), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
    @:keep
    static public function _set( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        var __tmp__ = (_f._formal != null && _f._formal.exists(_name) ? { value : _f._formal[_name], ok : true } : { value : (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>), ok : false }), _flag:stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag> = __tmp__.value, _ok:Bool = __tmp__.ok;
        if (!_ok) {
            var __tmp__ = stdgo.runtime.Runtime.caller((2 : stdgo.StdGoTypes.GoInt)), __0:stdgo.StdGoTypes.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.StdGoTypes.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
            if (!_ok) {
                _file = ("?" : stdgo.GoString);
                _line = (0 : stdgo.StdGoTypes.GoInt);
            };
            if (_f._undef == null) {
                _f._undef = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    @:mergeBlock {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            };
            _f._undef[_name] = stdgo.fmt.Fmt.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line));
            return stdgo.fmt.Fmt.errorf(("no such flag -%v" : stdgo.GoString), stdgo.Go.toInterface(_name));
        };
        var _err:stdgo.Error = _flag.value.set(_value);
        if (_err != null) {
            return _err;
        };
        if (_f._actual == null) {
            _f._actual = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>>);
        };
        _f._actual[_name] = _flag;
        return (null : stdgo.Error);
    }
    /**
        // Set sets the value of the named flag.
    **/
    @:keep
    static public function set( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        return _f._set(_name, _value);
    }
    /**
        // Lookup returns the Flag structure of the named flag, returning nil if none exists.
    **/
    @:keep
    static public function lookup( _f:stdgo.StdGoTypes.Ref<FlagSet>, _name:stdgo.GoString):stdgo.StdGoTypes.Ref<Flag> {
        return (_f._formal[_name] ?? (null : stdgo.StdGoTypes.Ref<stdgo.flag.Flag.Flag>));
    }
    /**
        // Visit visits the flags in lexicographical order, calling fn for each.
        // It visits only those flags that have been set.
    **/
    @:keep
    static public function visit( _f:stdgo.StdGoTypes.Ref<FlagSet>, _fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void {
        for (__0 => _flag in _sortFlags(_f._actual)) {
            _fn(_flag);
        };
    }
    /**
        // VisitAll visits the flags in lexicographical order, calling fn for each.
        // It visits all flags, even those not set.
    **/
    @:keep
    static public function visitAll( _f:stdgo.StdGoTypes.Ref<FlagSet>, _fn:stdgo.StdGoTypes.Ref<Flag> -> Void):Void {
        for (__0 => _flag in _sortFlags(_f._formal)) {
            _fn(_flag);
        };
    }
    /**
        // SetOutput sets the destination for usage and error messages.
        // If output is nil, os.Stderr is used.
    **/
    @:keep
    static public function setOutput( _f:stdgo.StdGoTypes.Ref<FlagSet>, _output:stdgo.io.Io.Writer):Void {
        _f._output = _output;
    }
    /**
        // ErrorHandling returns the error handling behavior of the flag set.
    **/
    @:keep
    static public function errorHandling( _f:stdgo.StdGoTypes.Ref<FlagSet>):ErrorHandling {
        return _f._errorHandling;
    }
    /**
        // Name returns the name of the flag set.
    **/
    @:keep
    static public function name( _f:stdgo.StdGoTypes.Ref<FlagSet>):stdgo.GoString {
        return _f._name;
    }
    /**
        // Output returns the destination for usage and error messages. os.Stderr is returned if
        // output was not set or was set to nil.
    **/
    @:keep
    static public function output( _f:stdgo.StdGoTypes.Ref<FlagSet>):stdgo.io.Io.Writer {
        if (_f._output == null) {
            return stdgo.Go.asInterface(stdgo.os.Os.stderr);
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    static public function isBoolFlag(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):Bool {
        return true;
    }
    @:keep
    @:pointer
    static public function string(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):stdgo.GoString {
        return stdgo.strconv.Strconv.formatBool((_b.value : Bool));
    }
    @:keep
    @:pointer
    static public function get(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_b.value : Bool));
    }
    @:keep
    @:pointer
    static public function set(____:T_boolValue,  _b:stdgo.Pointer<T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseBool(_s), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_intValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_intValue_asInterface) class T_intValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_intValue,  _i:stdgo.Pointer<T_intValue>):stdgo.GoString {
        return stdgo.strconv.Strconv.itoa((_i.value : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function get(____:T_intValue,  _i:stdgo.Pointer<T_intValue>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function set(____:T_intValue,  _i:stdgo.Pointer<T_intValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, (0 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _v:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_int64Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_int64Value_asInterface) class T_int64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>):stdgo.GoString {
        return stdgo.strconv.Strconv.formatInt((_i.value : stdgo.StdGoTypes.GoInt64), (10 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function get(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.StdGoTypes.GoInt64));
    }
    @:keep
    @:pointer
    static public function set(____:T_int64Value,  _i:stdgo.Pointer<T_int64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, (0 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _v:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_uintValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_uintValue_asInterface) class T_uintValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>):stdgo.GoString {
        return stdgo.strconv.Strconv.formatUint((_i.value : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function get(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.StdGoTypes.GoUInt));
    }
    @:keep
    @:pointer
    static public function set(____:T_uintValue,  _i:stdgo.Pointer<T_uintValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, (0 : stdgo.StdGoTypes.GoInt), (32 : stdgo.StdGoTypes.GoInt)), _v:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_uint64Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_uint64Value_asInterface) class T_uint64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>):stdgo.GoString {
        return stdgo.strconv.Strconv.formatUint((_i.value : stdgo.StdGoTypes.GoUInt64), (10 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function get(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_i.value : stdgo.StdGoTypes.GoUInt64));
    }
    @:keep
    @:pointer
    static public function set(____:T_uint64Value,  _i:stdgo.Pointer<T_uint64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, (0 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt)), _v:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_val:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_stringValue,  _s:stdgo.Pointer<T_stringValue>):stdgo.GoString {
        return (_s.value : stdgo.GoString);
    }
    @:keep
    @:pointer
    static public function get(____:T_stringValue,  _s:stdgo.Pointer<T_stringValue>):stdgo.StdGoTypes.AnyInterface {
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_float64Value>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_float64Value_asInterface) class T_float64Value_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>):stdgo.GoString {
        return stdgo.strconv.Strconv.formatFloat((_f.value : stdgo.StdGoTypes.GoFloat64), (103 : stdgo.StdGoTypes.GoUInt8), (-1 : stdgo.StdGoTypes.GoInt), (64 : stdgo.StdGoTypes.GoInt));
    }
    @:keep
    @:pointer
    static public function get(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface((_f.value : stdgo.StdGoTypes.GoFloat64));
    }
    @:keep
    @:pointer
    static public function set(____:T_float64Value,  _f:stdgo.Pointer<T_float64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, (64 : stdgo.StdGoTypes.GoInt)), _v:stdgo.StdGoTypes.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public dynamic function get():stdgo.StdGoTypes.AnyInterface return __self__.value.get(__self__);
    @:keep
    @:pointer
    public dynamic function set(_s:stdgo.GoString):stdgo.Error return __self__.value.set(__self__, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_durationValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
    @:keep
    @:pointer
    static public function string(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>):stdgo.GoString {
        return (new stdgo.Pointer<stdgo.time.Time.Duration>(() -> (_d.value : stdgo.time.Time.Duration), v -> (_d.value = (v : stdgo.flag.Flag.T_durationValue) : stdgo.time.Time.Duration)).value.string() : stdgo.GoString);
    }
    @:keep
    @:pointer
    static public function get(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>):stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_d.value : stdgo.time.Time.Duration)));
    }
    @:keep
    @:pointer
    static public function set(____:T_durationValue,  _d:stdgo.Pointer<T_durationValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo.time.Time.parseDuration(_s), _v:stdgo.time.Time.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_funcValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_funcValue_asInterface) class T_funcValue_static_extension {
    @:keep
    static public function string( _f:T_funcValue):stdgo.GoString {
        return stdgo.Go.str();
    }
    @:keep
    static public function set( _f:T_funcValue, _s:stdgo.GoString):stdgo.Error {
        return _f(_s);
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_boolFuncValue>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.flag.Flag.T_boolFuncValue_asInterface) class T_boolFuncValue_static_extension {
    @:keep
    static public function isBoolFlag( _f:T_boolFuncValue):Bool {
        return true;
    }
    @:keep
    static public function string( _f:T_boolFuncValue):stdgo.GoString {
        return stdgo.Go.str();
    }
    @:keep
    static public function set( _f:T_boolFuncValue, _s:stdgo.GoString):stdgo.Error {
        return _f(_s);
    }
}
