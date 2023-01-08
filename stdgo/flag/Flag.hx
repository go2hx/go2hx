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
private var __go2hxdoc__package:Bool;

/**
	// ErrHelp is the error returned if the -help or -h flag is invoked
	// but no such flag is defined.
**/
var errHelp:Error = stdgo.errors.Errors.new_(Go.str("flag: help requested"));

/**
	// errParse is returned by Set if a flag's value fails to parse, such as with an invalid integer for Int.
	// It then gets wrapped through failf to provide more information.
**/
private var _errParse:Error = stdgo.errors.Errors.new_(Go.str("parse error"));

/**
	// errRange is returned by Set if a flag's value is out of range.
	// It then gets wrapped through failf to provide more information.
**/
private var _errRange:Error = stdgo.errors.Errors.new_(Go.str("value out of range"));

/**
	// CommandLine is the default set of command-line flags, parsed from os.Args.
	// The top-level functions such as BoolVar, Arg, and so on are wrappers for the
	// methods of CommandLine.
**/
var commandLine:Ref<FlagSet> = newFlagSet(stdgo.os.Os.args[(0 : GoInt)], (1 : ErrorHandling));

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
var usage:() -> Void = function():Void {
	stdgo.fmt.Fmt.fprintf(commandLine.output(), Go.str("Usage of %s:\n"), Go.toInterface(stdgo.os.Os.args[(0 : GoInt)]));
	printDefaults();
};

var defaultUsage:() -> Void = usage;

/**
	// Return a descriptive error.// These constants cause FlagSet.Parse to behave as described if the parse fails.
**/
final continueOnError:ErrorHandling = (2 : ErrorHandling);

/**
	// Call os.Exit(2) or for -h/-help Exit(0).// These constants cause FlagSet.Parse to behave as described if the parse fails.
**/
final exitOnError:ErrorHandling = (2 : ErrorHandling);

/**
	// Call panic with a descriptive error.// These constants cause FlagSet.Parse to behave as described if the parse fails.
**/
final panicOnError:ErrorHandling = (2 : ErrorHandling);

/**
	// optional interface to indicate boolean flags that can be
	// supplied without "=value" text
**/
private typedef T_boolFlag = StructType & {
	> Value,
	public function isBoolFlag():Bool;
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
typedef Value = StructType & {
	public function string():GoString;
	public function set(_0:GoString):Error;
};

/**
	// Getter is an interface that allows the contents of a Value to be retrieved.
	// It wraps the Value interface, rather than being part of it, because it
	// appeared after Go 1 and its compatibility rules. All Value types provided
	// by this package satisfy the Getter interface, except the type used by Func.
**/
typedef Getter = StructType & {
	> Value,
	public function get():AnyInterface;
};

/**
	// -- encoding.TextUnmarshaler Value
**/
@:structInit @:using(stdgo.flag.Flag.T_textValue_static_extension) private class T_textValue {
	public var _p:stdgo.encoding.Encoding.TextUnmarshaler = (null : stdgo.encoding.Encoding.TextUnmarshaler);

	public function new(?_p:stdgo.encoding.Encoding.TextUnmarshaler) {
		if (_p != null)
			this._p = _p;
	}

	public function __underlying__()
		return Go.toInterface(this);

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
	public var usage:() -> Void = null;

	public var _name:GoString = "";
	public var _parsed:Bool = false;
	public var _actual:GoMap<GoString, Ref<Flag>> = (null : GoMap<GoString, Ref<Flag>>);
	public var _formal:GoMap<GoString, Ref<Flag>> = (null : GoMap<GoString, Ref<Flag>>);

	/**
		// arguments after flags
	**/
	public var _args:Slice<GoString> = (null : Slice<GoString>);

	public var _errorHandling:ErrorHandling = ((0 : GoInt) : ErrorHandling);

	/**
		// nil means stderr; use Output() accessor
	**/
	public var _output:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?usage:() -> Void, ?_name:GoString, ?_parsed:Bool, ?_actual:GoMap<GoString, Ref<Flag>>, ?_formal:GoMap<GoString, Ref<Flag>>,
			?_args:Slice<GoString>, ?_errorHandling:ErrorHandling, ?_output:stdgo.io.Io.Writer) {
		if (usage != null)
			this.usage = usage;
		if (_name != null)
			this._name = _name;
		if (_parsed != null)
			this._parsed = _parsed;
		if (_actual != null)
			this._actual = _actual;
		if (_formal != null)
			this._formal = _formal;
		if (_args != null)
			this._args = _args;
		if (_errorHandling != null)
			this._errorHandling = _errorHandling;
		if (_output != null)
			this._output = _output;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new FlagSet(usage, _name, _parsed, _actual, _formal, _args, _errorHandling, _output);
	}
}

/**
	// A Flag represents the state of a flag.
**/
@:structInit class Flag {
	/**
		// name as it appears on command line
	**/
	public var name:GoString = "";

	/**
		// help message
	**/
	public var usage:GoString = "";

	/**
		// value as set
	**/
	public var value:Value = (null : Value);

	/**
		// default value (as text); for usage message
	**/
	public var defValue:GoString = "";

	public function new(?name:GoString, ?usage:GoString, ?value:Value, ?defValue:GoString) {
		if (name != null)
			this.name = name;
		if (usage != null)
			this.usage = usage;
		if (value != null)
			this.value = value;
		if (defValue != null)
			this.defValue = defValue;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Flag(name, usage, value, defValue);
	}
}

/**
	// -- bool Value
**/
@:named @:using(stdgo.flag.Flag.T_boolValue_static_extension) private typedef T_boolValue = Bool;

/**
	// -- int Value
**/
@:named @:using(stdgo.flag.Flag.T_intValue_static_extension) private typedef T_intValue = GoInt;

/**
	// -- int64 Value
**/
@:named @:using(stdgo.flag.Flag.T_int64Value_static_extension) private typedef T_int64Value = GoInt64;

/**
	// -- uint Value
**/
@:named @:using(stdgo.flag.Flag.T_uintValue_static_extension) private typedef T_uintValue = GoUInt;

/**
	// -- uint64 Value
**/
@:named @:using(stdgo.flag.Flag.T_uint64Value_static_extension) private typedef T_uint64Value = GoUInt64;

/**
	// -- string Value
**/
@:named @:using(stdgo.flag.Flag.T_stringValue_static_extension) private typedef T_stringValue = GoString;

/**
	// -- float64 Value
**/
@:named @:using(stdgo.flag.Flag.T_float64Value_static_extension) private typedef T_float64Value = GoFloat64;

/**
	// -- time.Duration Value
**/
@:named @:using(stdgo.flag.Flag.T_durationValue_static_extension) private typedef T_durationValue = stdgo.time.Time.Duration;

/**
	// -- func Value
**/
@:named @:using(stdgo.flag.Flag.T_funcValue_static_extension) private typedef T_funcValue = GoString->Error;

/**
	// ErrorHandling defines how FlagSet.Parse behaves if the parse fails.
**/
@:named typedef ErrorHandling = GoInt;

/**
	// ResetForTesting clears all flag state and sets the usage function as directed.
	// After calling ResetForTesting, parse errors in flag handling will not
	// exit the program.
**/
function resetForTesting(_usage:() -> Void):Void {
	commandLine = newFlagSet(stdgo.os.Os.args[(0 : GoInt)], (0 : ErrorHandling));
	commandLine.setOutput(stdgo.io.Io.discard);
	commandLine.usage = _commandLineUsage;
	usage = _usage;
}

function _numError(_err:Error):Error {
	var __tmp__ = try {
		{value: (Go.typeAssert((Go.toInterface(_err) : Ref<stdgo.strconv.Strconv.NumError>)) : Ref<stdgo.strconv.Strconv.NumError>), ok: true};
	} catch (_) {
		{value: (null : Ref<stdgo.strconv.Strconv.NumError>), ok: false};
	}, _ne = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		return _err;
	};
	if (Go.toInterface(_ne.err) == (Go.toInterface(stdgo.strconv.Strconv.errSyntax))) {
		return _errParse;
	};
	if (Go.toInterface(_ne.err) == (Go.toInterface(stdgo.strconv.Strconv.errRange))) {
		return _errRange;
	};
	return _err;
}

function _newBoolValue(_val:Bool, _p:Pointer<Bool>):Pointer<T_boolValue> {
	_p.value = _val;
	return new Pointer<T_boolValue>(() -> (_p.value : T_boolValue), v -> (_p.value = (v : Bool):T_boolValue));
}

function _newIntValue(_val:GoInt, _p:Pointer<GoInt>):Pointer<T_intValue> {
	_p.value = _val;
	return new Pointer<T_intValue>(() -> (_p.value : T_intValue), v -> (_p.value = (v : GoInt):T_intValue));
}

function _newInt64Value(_val:GoInt64, _p:Pointer<GoInt64>):Pointer<T_int64Value> {
	_p.value = _val;
	return new Pointer<T_int64Value>(() -> (_p.value : T_int64Value), v -> (_p.value = (v : GoInt64):T_int64Value));
}

function _newUintValue(_val:GoUInt, _p:Pointer<GoUInt>):Pointer<T_uintValue> {
	_p.value = _val;
	return new Pointer<T_uintValue>(() -> (_p.value : T_uintValue), v -> (_p.value = (v : GoUInt):T_uintValue));
}

function _newUint64Value(_val:GoUInt64, _p:Pointer<GoUInt64>):Pointer<T_uint64Value> {
	_p.value = _val;
	return new Pointer<T_uint64Value>(() -> (_p.value : T_uint64Value), v -> (_p.value = (v : GoUInt64):T_uint64Value));
}

function _newStringValue(_val:GoString, _p:Pointer<GoString>):Pointer<T_stringValue> {
	_p.value = _val;
	return new Pointer<T_stringValue>(() -> (_p.value : T_stringValue), v -> (_p.value = (v : GoString):T_stringValue));
}

function _newFloat64Value(_val:GoFloat64, _p:Pointer<GoFloat64>):Pointer<T_float64Value> {
	_p.value = _val;
	return new Pointer<T_float64Value>(() -> (_p.value : T_float64Value), v -> (_p.value = (v : GoFloat64):T_float64Value));
}

function _newDurationValue(_val:stdgo.time.Time.Duration, _p:Pointer<stdgo.time.Time.Duration>):Pointer<T_durationValue> {
	_p.value = _val;
	return new Pointer<T_durationValue>(() -> (_p.value : T_durationValue), v -> (_p.value = (v : stdgo.time.Time.Duration):T_durationValue));
}

function _newTextValue(_val:stdgo.encoding.Encoding.TextMarshaler, _p:stdgo.encoding.Encoding.TextUnmarshaler):T_textValue {
	var _ptrVal:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_p)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_p))
		.__copy__());
	if (_ptrVal.kind() != ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
		throw Go.toInterface(Go.str("variable value type must be a pointer"));
	};
	var _defVal:stdgo.reflect.Reflect.Value = (stdgo.reflect.Reflect.valueOf(Go.toInterface(_val)) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(_val))
		.__copy__());
	if (_defVal.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
		_defVal = (_defVal.elem() == null ? null : _defVal.elem().__copy__());
	};
	if (!((_defVal.type().string() : String) == (_ptrVal.type().elem().string() : String))) {
		throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("default type does not match variable type: %v != %v"), Go.toInterface(_defVal.type()),
			Go.toInterface(_ptrVal.type().elem())));
	};
	_ptrVal.elem().set((_defVal == null ? null : _defVal.__copy__()));
	return (new T_textValue(_p) : T_textValue);
}

/**
	// sortFlags returns the flags as a slice in lexicographical sorted order.
**/
function _sortFlags(_flags:GoMap<GoString, Ref<Flag>>):Slice<Ref<Flag>> {
	var _result = new Slice<Ref<Flag>>((_flags.length : GoInt).toBasic(), 0, ...[for (i in 0...(_flags.length : GoInt).toBasic()) (null : Ref<Flag>)]);
	var _i:GoInt = (0 : GoInt);
	for (_0 => _f in _flags) {
		_result[(_i : GoInt)] = _f;
		_i++;
	};
	stdgo.sort.Sort.slice(Go.toInterface(_result), function(_i:GoInt, _j:GoInt):Bool {
		return _result[(_i : GoInt)].name < _result[(_j : GoInt)].name;
	});
	return _result;
}

/**
	// VisitAll visits the command-line flags in lexicographical order, calling
	// fn for each. It visits all flags, even those not set.
**/
function visitAll(_fn:Ref<Flag>->Void):Void {
	commandLine.visitAll(_fn);
}

/**
	// Visit visits the command-line flags in lexicographical order, calling fn
	// for each. It visits only those flags that have been set.
**/
function visit(_fn:Ref<Flag>->Void):Void {
	commandLine.visit(_fn);
}

/**
	// Lookup returns the Flag structure of the named command-line flag,
	// returning nil if none exists.
**/
function lookup(_name:GoString):Ref<Flag> {
	return commandLine._formal[_name];
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
function _isZeroValue(_flag:Ref<Flag>, _value:GoString):{var _0:Bool; var _1:Error;} {
	var __deferstack__:Array<Void->Void> = [];
	var _ok:Bool = false, _err:Error = (null : Error);
	var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_flag.value));
	var _z:stdgo.reflect.Reflect.Value = ({} : stdgo.reflect.Reflect.Value);
	try {
		if (_typ.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
			_z = (stdgo.reflect.Reflect.new_(_typ.elem()) == null ? null : stdgo.reflect.Reflect.new_(_typ.elem()).__copy__());
		} else {
			_z = (stdgo.reflect.Reflect.zero(_typ) == null ? null : stdgo.reflect.Reflect.zero(_typ).__copy__());
		};
		__deferstack__.unshift(() -> {
			var a = function():Void {
				{
					var _e:AnyInterface = ({
						final r = Go.recover_exception;
						Go.recover_exception = null;
						r;
					});
					if (_e != null) {
						if (_typ.kind() == ((("22" : GoUInt) : stdgo.reflect.Reflect.Kind))) {
							_typ = _typ.elem();
						};
						_err = stdgo.fmt.Fmt.errorf(Go.str("panic calling String method on zero %v for flag %s: %v"), Go.toInterface(_typ),
							Go.toInterface(_flag.name), _e);
					};
				};
			};
			a();
		});
		{
			for (defer in __deferstack__) {
				defer();
			};
			return {_0: _value == (((Go.typeAssert((_z.interface_() : Value)) : Value).string() : GoString)), _1: (null : Error)};
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
			return {_0: _ok, _1: _err};
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
		return {_0: _ok, _1: _err};
	};
}

/**
	// UnquoteUsage extracts a back-quoted name from the usage
	// string for a flag and returns it and the un-quoted usage.
	// Given "a `name` to show" it returns ("name", "a name to show").
	// If there are no back quotes, the name is an educated guess of the
	// type of the flag's value, or the empty string if the flag is boolean.
**/
function unquoteUsage(_flag:Ref<Flag>):{var _0:GoString; var _1:GoString;} {
	var _name:GoString = ("" : GoString), _usage:GoString = ("" : GoString);
	_usage = _flag.usage;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_usage.length), _i++, {
			if (_usage[(_i : GoInt)] == ((96 : GoUInt8))) {
				{
					var _j:GoInt = _i + (1 : GoInt);
					Go.cfor(_j < (_usage.length), _j++, {
						if (_usage[(_j : GoInt)] == ((96 : GoUInt8))) {
							_name = (_usage.__slice__(_i + (1 : GoInt), _j) : GoString);
							_usage = ((_usage.__slice__(0, _i) : GoString) + _name) + (_usage.__slice__(_j + (1 : GoInt)) : GoString);
							return {_0: _name, _1: _usage};
						};
					});
				};
				break;
			};
		});
	};
	_name = Go.str("value");
	{
		final __type__ = _flag.value;
		if (Go.typeEquals((__type__ : T_boolFlag))) {
			_name = Go.str();
		} else if (Go.typeEquals((__type__ : Pointer<T_durationValue>))) {
			_name = Go.str("duration");
		} else if (Go.typeEquals((__type__ : Pointer<T_float64Value>))) {
			_name = Go.str("float");
		} else if (Go.typeEquals((__type__ : Pointer<T_intValue>)) || Go.typeEquals((__type__ : Pointer<T_int64Value>))) {
			_name = Go.str("int");
		} else if (Go.typeEquals((__type__ : Pointer<T_stringValue>))) {
			_name = Go.str("string");
		} else if (Go.typeEquals((__type__ : Pointer<T_uintValue>)) || Go.typeEquals((__type__ : Pointer<T_uint64Value>))) {
			_name = Go.str("uint");
		};
	};
	return {_0: _name, _1: _usage};
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
function nflag():GoInt {
	return (commandLine._actual.length);
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
	return (commandLine._args.length);
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
	commandLine.var_(Go.asInterface(_newBoolValue(_value, _p)), _name, _usage);
}

/**
	// Bool defines a bool flag with specified name, default value, and usage string.
	// The return value is the address of a bool variable that stores the value of the flag.
**/
function bool_(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
	return commandLine.bool_(_name, _value, _usage);
}

/**
	// IntVar defines an int flag with specified name, default value, and usage string.
	// The argument p points to an int variable in which to store the value of the flag.
**/
function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
	commandLine.var_(Go.asInterface(_newIntValue(_value, _p)), _name, _usage);
}

/**
	// Int defines an int flag with specified name, default value, and usage string.
	// The return value is the address of an int variable that stores the value of the flag.
**/
function int_(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
	return commandLine.int_(_name, _value, _usage);
}

/**
	// Int64Var defines an int64 flag with specified name, default value, and usage string.
	// The argument p points to an int64 variable in which to store the value of the flag.
**/
function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
	commandLine.var_(Go.asInterface(_newInt64Value(_value, _p)), _name, _usage);
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
	commandLine.var_(Go.asInterface(_newUintValue(_value, _p)), _name, _usage);
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
	commandLine.var_(Go.asInterface(_newUint64Value(_value, _p)), _name, _usage);
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
	commandLine.var_(Go.asInterface(_newStringValue(_value, _p)), _name, _usage);
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
	commandLine.var_(Go.asInterface(_newFloat64Value(_value, _p)), _name, _usage);
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
	commandLine.var_(Go.asInterface(_newDurationValue(_value, _p)), _name, _usage);
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
	// TextVar defines a flag with a specified name, default value, and usage string.
	// The argument p must be a pointer to a variable that will hold the value
	// of the flag, and p must implement encoding.TextUnmarshaler.
	// If the flag is used, the flag value will be passed to p's UnmarshalText method.
	// The type of the default value must be the same as the type of p.
**/
function textVar(_p:stdgo.encoding.Encoding.TextUnmarshaler, _name:GoString, _value:stdgo.encoding.Encoding.TextMarshaler, _usage:GoString):Void {
	commandLine.var_(Go.asInterface(_newTextValue(_value, _p)), _name, _usage);
}

/**
	// Func defines a flag with the specified name and usage string.
	// Each time the flag is seen, fn is called with the value of the flag.
	// If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
function func(_name:GoString, _usage:GoString, _fn:GoString->Error):Void {
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
	commandLine.parse((stdgo.os.Os.args.__slice__((1 : GoInt)) : Slice<GoString>));
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
function newFlagSet(_name:GoString, _errorHandling:ErrorHandling):Ref<FlagSet> {
	var _f = (({_name: _name, _errorHandling: _errorHandling} : FlagSet) : Ref<FlagSet>);
	_f.usage = _f._defaultUsage;
	return _f;
}

@:keep var _ = {
	try {
		commandLine.usage = _commandLineUsage;
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

class T_textValue_asInterface {
	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function get():AnyInterface
		return __self__.value.get();

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

	var __self__:Pointer<T_textValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_textValue_asInterface) class T_textValue_static_extension {
	@:keep
	static public function string(_v:T_textValue):GoString {
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_v._p) : stdgo.encoding.Encoding.TextMarshaler)) : stdgo.encoding.Encoding.TextMarshaler), ok: true};
			} catch (_) {
				{value: (null : stdgo.encoding.Encoding.TextMarshaler), ok: false};
			}, _m = __tmp__.value, _ok = __tmp__.ok;
			if (_ok) {
				{
					var __tmp__ = _m.marshalText(),
						_b:Slice<GoUInt8> = __tmp__._0,
						_err:Error = __tmp__._1;
					if (_err == null) {
						return (_b : GoString);
					};
				};
			};
		};
		return Go.str();
	}

	@:keep
	static public function get(_v:T_textValue):AnyInterface {
		return Go.toInterface(_v._p);
	}

	@:keep
	static public function set(_v:T_textValue, _s:GoString):Error {
		return _v._p.unmarshalText((_s : Slice<GoByte>));
	}
}

class FlagSet_asInterface {
	/**
		// Init sets the name and error handling property for a flag set.
		// By default, the zero FlagSet uses an empty name and the
		// ContinueOnError error handling policy.
	**/
	@:keep
	public function init(_name:GoString, _errorHandling:ErrorHandling):Void
		__self__.value.init(_name, _errorHandling);

	/**
		// Parsed reports whether f.Parse has been called.
	**/
	@:keep
	public function parsed():Bool
		return __self__.value.parsed();

	/**
		// Parse parses flag definitions from the argument list, which should not
		// include the command name. Must be called after all flags in the FlagSet
		// are defined and before flags are accessed by the program.
		// The return value will be ErrHelp if -help or -h were set but not defined.
	**/
	@:keep
	public function parse(_arguments:Slice<GoString>):Error
		return __self__.value.parse(_arguments);

	/**
		// parseOne parses one flag. It reports whether a flag was seen.
	**/
	@:keep
	public function _parseOne():{var _0:Bool; var _1:Error;}
		return __self__.value._parseOne();

	/**
		// usage calls the Usage method for the flag set if one is specified,
		// or the appropriate default usage function otherwise.
	**/
	@:keep
	public function _usage():Void
		__self__.value._usage();

	/**
		// failf prints to standard error a formatted error and usage message and
		// returns the error.
	**/
	@:keep
	public function _failf(_format:GoString, _a:haxe.Rest<AnyInterface>):Error
		return __self__.value._failf(_format, ..._a);

	/**
		// sprintf formats the message, prints it to output, and returns it.
	**/
	@:keep
	public function _sprintf(_format:GoString, _a:haxe.Rest<AnyInterface>):GoString
		return __self__.value._sprintf(_format, ..._a);

	/**
		// Var defines a flag with the specified name and usage string. The type and
		// value of the flag are represented by the first argument, of type Value, which
		// typically holds a user-defined implementation of Value. For instance, the
		// caller could create a flag that turns a comma-separated string into a slice
		// of strings by giving the slice the methods of Value; in particular, Set would
		// decompose the comma-separated string into the slice.
	**/
	@:keep
	public function var_(_value:Value, _name:GoString, _usage:GoString):Void
		__self__.value.var_(_value, _name, _usage);

	/**
		// Func defines a flag with the specified name and usage string.
		// Each time the flag is seen, fn is called with the value of the flag.
		// If fn returns a non-nil error, it will be treated as a flag value parsing error.
	**/
	@:keep
	public function func(_name:GoString, _usage:GoString, _fn:GoString->Error):Void
		__self__.value.func(_name, _usage, _fn);

	/**
		// TextVar defines a flag with a specified name, default value, and usage string.
		// The argument p must be a pointer to a variable that will hold the value
		// of the flag, and p must implement encoding.TextUnmarshaler.
		// If the flag is used, the flag value will be passed to p's UnmarshalText method.
		// The type of the default value must be the same as the type of p.
	**/
	@:keep
	public function textVar(_p:stdgo.encoding.Encoding.TextUnmarshaler, _name:GoString, _value:stdgo.encoding.Encoding.TextMarshaler, _usage:GoString):Void
		__self__.value.textVar(_p, _name, _value, _usage);

	/**
		// Duration defines a time.Duration flag with specified name, default value, and usage string.
		// The return value is the address of a time.Duration variable that stores the value of the flag.
		// The flag accepts a value acceptable to time.ParseDuration.
	**/
	@:keep
	public function duration(_name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration>
		return __self__.value.duration(_name, _value, _usage);

	/**
		// DurationVar defines a time.Duration flag with specified name, default value, and usage string.
		// The argument p points to a time.Duration variable in which to store the value of the flag.
		// The flag accepts a value acceptable to time.ParseDuration.
	**/
	@:keep
	public function durationVar(_p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Void
		__self__.value.durationVar(_p, _name, _value, _usage);

	/**
		// Float64 defines a float64 flag with specified name, default value, and usage string.
		// The return value is the address of a float64 variable that stores the value of the flag.
	**/
	@:keep
	public function float64(_name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64>
		return __self__.value.float64(_name, _value, _usage);

	/**
		// Float64Var defines a float64 flag with specified name, default value, and usage string.
		// The argument p points to a float64 variable in which to store the value of the flag.
	**/
	@:keep
	public function float64Var(_p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void
		__self__.value.float64Var(_p, _name, _value, _usage);

	/**
		// String defines a string flag with specified name, default value, and usage string.
		// The return value is the address of a string variable that stores the value of the flag.
	**/
	@:keep
	public function string(_name:GoString, _value:GoString, _usage:GoString):Pointer<GoString>
		return __self__.value.string(_name, _value, _usage);

	/**
		// StringVar defines a string flag with specified name, default value, and usage string.
		// The argument p points to a string variable in which to store the value of the flag.
	**/
	@:keep
	public function stringVar(_p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void
		__self__.value.stringVar(_p, _name, _value, _usage);

	/**
		// Uint64 defines a uint64 flag with specified name, default value, and usage string.
		// The return value is the address of a uint64 variable that stores the value of the flag.
	**/
	@:keep
	public function uint64(_name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64>
		return __self__.value.uint64(_name, _value, _usage);

	/**
		// Uint64Var defines a uint64 flag with specified name, default value, and usage string.
		// The argument p points to a uint64 variable in which to store the value of the flag.
	**/
	@:keep
	public function uint64Var(_p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void
		__self__.value.uint64Var(_p, _name, _value, _usage);

	/**
		// Uint defines a uint flag with specified name, default value, and usage string.
		// The return value is the address of a uint variable that stores the value of the flag.
	**/
	@:keep
	public function uint(_name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt>
		return __self__.value.uint(_name, _value, _usage);

	/**
		// UintVar defines a uint flag with specified name, default value, and usage string.
		// The argument p points to a uint variable in which to store the value of the flag.
	**/
	@:keep
	public function uintVar(_p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void
		__self__.value.uintVar(_p, _name, _value, _usage);

	/**
		// Int64 defines an int64 flag with specified name, default value, and usage string.
		// The return value is the address of an int64 variable that stores the value of the flag.
	**/
	@:keep
	public function int64(_name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64>
		return __self__.value.int64(_name, _value, _usage);

	/**
		// Int64Var defines an int64 flag with specified name, default value, and usage string.
		// The argument p points to an int64 variable in which to store the value of the flag.
	**/
	@:keep
	public function int64Var(_p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void
		__self__.value.int64Var(_p, _name, _value, _usage);

	/**
		// Int defines an int flag with specified name, default value, and usage string.
		// The return value is the address of an int variable that stores the value of the flag.
	**/
	@:keep
	public function int_(_name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt>
		return __self__.value.int_(_name, _value, _usage);

	/**
		// IntVar defines an int flag with specified name, default value, and usage string.
		// The argument p points to an int variable in which to store the value of the flag.
	**/
	@:keep
	public function intVar(_p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void
		__self__.value.intVar(_p, _name, _value, _usage);

	/**
		// Bool defines a bool flag with specified name, default value, and usage string.
		// The return value is the address of a bool variable that stores the value of the flag.
	**/
	@:keep
	public function bool_(_name:GoString, _value:Bool, _usage:GoString):Pointer<Bool>
		return __self__.value.bool_(_name, _value, _usage);

	/**
		// BoolVar defines a bool flag with specified name, default value, and usage string.
		// The argument p points to a bool variable in which to store the value of the flag.
	**/
	@:keep
	public function boolVar(_p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void
		__self__.value.boolVar(_p, _name, _value, _usage);

	/**
		// Args returns the non-flag arguments.
	**/
	@:keep
	public function args():Slice<GoString>
		return __self__.value.args();

	/**
		// NArg is the number of arguments remaining after flags have been processed.
	**/
	@:keep
	public function narg():GoInt
		return __self__.value.narg();

	/**
		// Arg returns the i'th argument. Arg(0) is the first remaining argument
		// after flags have been processed. Arg returns an empty string if the
		// requested element does not exist.
	**/
	@:keep
	public function arg(_i:GoInt):GoString
		return __self__.value.arg(_i);

	/**
		// NFlag returns the number of flags that have been set.
	**/
	@:keep
	public function nflag():GoInt
		return __self__.value.nflag();

	/**
		// defaultUsage is the default function to print a usage message.
	**/
	@:keep
	public function _defaultUsage():Void
		__self__.value._defaultUsage();

	/**
		// PrintDefaults prints, to standard error unless configured otherwise, the
		// default values of all defined command-line flags in the set. See the
		// documentation for the global function PrintDefaults for more information.
	**/
	@:keep
	public function printDefaults():Void
		__self__.value.printDefaults();

	/**
		// Set sets the value of the named flag.
	**/
	@:keep
	public function set(_name:GoString, _value:GoString):Error
		return __self__.value.set(_name, _value);

	/**
		// Lookup returns the Flag structure of the named flag, returning nil if none exists.
	**/
	@:keep
	public function lookup(_name:GoString):Ref<Flag>
		return __self__.value.lookup(_name);

	/**
		// Visit visits the flags in lexicographical order, calling fn for each.
		// It visits only those flags that have been set.
	**/
	@:keep
	public function visit(_fn:Ref<Flag>->Void):Void
		__self__.value.visit(_fn);

	/**
		// VisitAll visits the flags in lexicographical order, calling fn for each.
		// It visits all flags, even those not set.
	**/
	@:keep
	public function visitAll(_fn:Ref<Flag>->Void):Void
		__self__.value.visitAll(_fn);

	/**
		// SetOutput sets the destination for usage and error messages.
		// If output is nil, os.Stderr is used.
	**/
	@:keep
	public function setOutput(_output:stdgo.io.Io.Writer):Void
		__self__.value.setOutput(_output);

	/**
		// ErrorHandling returns the error handling behavior of the flag set.
	**/
	@:keep
	public function errorHandling():ErrorHandling
		return __self__.value.errorHandling();

	/**
		// Name returns the name of the flag set.
	**/
	@:keep
	public function name():GoString
		return __self__.value.name();

	/**
		// Output returns the destination for usage and error messages. os.Stderr is returned if
		// output was not set or was set to nil.
	**/
	@:keep
	public function output():stdgo.io.Io.Writer
		return __self__.value.output();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<FlagSet>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
	/**
		// Init sets the name and error handling property for a flag set.
		// By default, the zero FlagSet uses an empty name and the
		// ContinueOnError error handling policy.
	**/
	@:keep
	static public function init(_f:Ref<FlagSet>, _name:GoString, _errorHandling:ErrorHandling):Void {
		_f._name = _name;
		_f._errorHandling = _errorHandling;
	}

	/**
		// Parsed reports whether f.Parse has been called.
	**/
	@:keep
	static public function parsed(_f:Ref<FlagSet>):Bool {
		return _f._parsed;
	}

	/**
		// Parse parses flag definitions from the argument list, which should not
		// include the command name. Must be called after all flags in the FlagSet
		// are defined and before flags are accessed by the program.
		// The return value will be ErrHelp if -help or -h were set but not defined.
	**/
	@:keep
	static public function parse(_f:Ref<FlagSet>, _arguments:Slice<GoString>):Error {
		_f._parsed = true;
		_f._args = _arguments;
		while (true) {
			var __tmp__ = _f._parseOne(),
				_seen:Bool = __tmp__._0,
				_err:Error = __tmp__._1;
			if (_seen) {
				continue;
			};
			if (_err == null) {
				break;
			};
			if (_f._errorHandling == ((0 : ErrorHandling))) {
				return _err;
			} else if (_f._errorHandling == ((1 : ErrorHandling))) {
				if (Go.toInterface(_err) == (Go.toInterface(errHelp))) {
					Sys.exit((0 : GoInt));
				};
				Sys.exit((2 : GoInt));
			} else if (_f._errorHandling == ((2 : ErrorHandling))) {
				throw Go.toInterface(_err);
			};
		};
		return (null : Error);
	}

	/**
		// parseOne parses one flag. It reports whether a flag was seen.
	**/
	@:keep
	static public function _parseOne(_f:Ref<FlagSet>):{var _0:Bool; var _1:Error;} {
		if ((_f._args.length) == ((0 : GoInt))) {
			return {_0: false, _1: (null : Error)};
		};
		var _s:GoString = _f._args[(0 : GoInt)];
		if ((_s.length < (2:GoInt)) || (_s[(0 : GoInt)] != (45 : GoUInt8))) {
			return {_0: false, _1: (null : Error)};
		};
		var _numMinuses:GoInt = (1 : GoInt);
		if (_s[(1 : GoInt)] == ((45 : GoUInt8))) {
			_numMinuses++;
			if ((_s.length) == ((2 : GoInt))) {
				_f._args = (_f._args.__slice__((1 : GoInt)) : Slice<GoString>);
				return {_0: false, _1: (null : Error)};
			};
		};
		var _name:GoString = (_s.__slice__(_numMinuses) : GoString);
		if (((_name.length == (0 : GoInt)) || (_name[(0 : GoInt)] == (45 : GoUInt8))) || (_name[(0 : GoInt)] == (61 : GoUInt8))) {
			return {_0: false, _1: _f._failf(Go.str("bad flag syntax: %s"), Go.toInterface(_s))};
		};
		_f._args = (_f._args.__slice__((1 : GoInt)) : Slice<GoString>);
		var _hasValue:Bool = false;
		var _value:GoString = Go.str();
		{
			var _i:GoInt = (1 : GoInt);
			Go.cfor(_i < (_name.length), _i++, {
				if (_name[(_i : GoInt)] == ((61 : GoUInt8))) {
					_value = (_name.__slice__(_i + (1 : GoInt)) : GoString);
					_hasValue = true;
					_name = (_name.__slice__((0 : GoInt), _i) : GoString);
					break;
				};
			});
		};
		var _m = _f._formal;
		var __tmp__ = (_m != null && _m.__exists__(_name) ? {value: _m[_name], ok: true} : {value: (null : Ref<Flag>), ok: false}),
			_flag:Ref<Flag> = __tmp__.value,
			_alreadythere:Bool = __tmp__.ok;
		if (!_alreadythere) {
			if ((_name == Go.str("help")) || (_name == Go.str("h"))) {
				_f._usage();
				return {_0: false, _1: errHelp};
			};
			return {_0: false, _1: _f._failf(Go.str("flag provided but not defined: -%s"), Go.toInterface(_name))};
		};
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((Go.toInterface(_flag.value) : T_boolFlag)) : T_boolFlag), ok: true};
			} catch (_) {
				{value: (null : T_boolFlag), ok: false};
			}, _fv = __tmp__.value, _ok = __tmp__.ok;
			if (_ok && _fv.isBoolFlag()) {
				if (_hasValue) {
					{
						var _err:Error = _fv.set(_value);
						if (_err != null) {
							return {_0: false, _1: _f._failf(Go.str("invalid boolean value %q for -%s: %v"), Go.toInterface(_value), Go.toInterface(_name),
								Go.toInterface(_err))};
						};
					};
				} else {
					{
						var _err:Error = _fv.set(Go.str("true"));
						if (_err != null) {
							return {_0: false, _1: _f._failf(Go.str("invalid boolean flag %s: %v"), Go.toInterface(_name), Go.toInterface(_err))};
						};
					};
				};
			} else {
				if (!_hasValue && (_f._args.length > (0 : GoInt))) {
					_hasValue = true;
					{
						final __tmp__0 = _f._args[(0 : GoInt)];
						final __tmp__1 = (_f._args.__slice__((1 : GoInt)) : Slice<GoString>);
						_value = __tmp__0;
						_f._args = __tmp__1;
					};
				};
				if (!_hasValue) {
					return {_0: false, _1: _f._failf(Go.str("flag needs an argument: -%s"), Go.toInterface(_name))};
				};
				{
					var _err:Error = _flag.value.set(_value);
					if (_err != null) {
						return {_0: false, _1: _f._failf(Go.str("invalid value %q for flag -%s: %v"), Go.toInterface(_value), Go.toInterface(_name),
							Go.toInterface(_err))};
					};
				};
			};
		};
		if (_f._actual == null) {
			_f._actual = (new GoObjectMap<GoString,
				Ref<Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
					stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () -> stdgo.internal.reflect.Reflect.GoType.named("Flag", [],
					stdgo.internal.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "usage",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "value",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.named("Value", [
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
												]), false, {get: () -> null})
										]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
								new stdgo.internal.reflect.Reflect.MethodType("string",
									{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
										{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
							],
								stdgo.internal.reflect.Reflect.GoType.named("Value", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
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
													]), false, {get: () -> null})
											]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
									new stdgo.internal.reflect.Reflect.MethodType("string",
										{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
											{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
								]), false, {get: () -> null}), false, {get: () -> null})},
							optional: false
						},
						{
							name: "defValue",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						}
					]), false, {get: () -> null})})}))) : GoMap<GoString, Ref<Flag>>);
		};
		_f._actual[_name] = _flag;
		return {_0: true, _1: (null : Error)};
	}

	/**
		// usage calls the Usage method for the flag set if one is specified,
		// or the appropriate default usage function otherwise.
	**/
	@:keep
	static public function _usage(_f:Ref<FlagSet>):Void {
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
	static public function _failf(_f:Ref<FlagSet>, _format:GoString, _a:haxe.Rest<AnyInterface>):Error {
		var _a = new Slice<AnyInterface>(0, 0, ..._a);
		var _msg:GoString = _f._sprintf(_format, ..._a.__toArray__());
		_f._usage();
		return stdgo.errors.Errors.new_(_msg);
	}

	/**
		// sprintf formats the message, prints it to output, and returns it.
	**/
	@:keep
	static public function _sprintf(_f:Ref<FlagSet>, _format:GoString, _a:haxe.Rest<AnyInterface>):GoString {
		var _a = new Slice<AnyInterface>(0, 0, ..._a);
		var _msg:GoString = stdgo.fmt.Fmt.sprintf(_format, ..._a.__toArray__());
		stdgo.fmt.Fmt.fprintln(_f.output(), Go.toInterface(_msg));
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
	static public function var_(_f:Ref<FlagSet>, _value:Value, _name:GoString, _usage:GoString):Void {
		if (stdgo.strings.Strings.hasPrefix(_name, Go.str("-"))) {
			throw Go.toInterface(_f._sprintf(Go.str("flag %q begins with -"), Go.toInterface(_name)));
		} else if (stdgo.strings.Strings.contains(_name, Go.str("="))) {
			throw Go.toInterface(_f._sprintf(Go.str("flag %q contains ="), Go.toInterface(_name)));
		};
		var _flag = ((new Flag(_name, _usage, _value, (_value.string() : GoString)) : Flag) : Ref<Flag>);
		var __tmp__ = (_f._formal != null
			&& _f._formal.__exists__(_name) ? {value: _f._formal[_name], ok: true} : {value: (null : Ref<Flag>), ok: false}),
			_0:Ref<Flag> = __tmp__.value,
			_alreadythere:Bool = __tmp__.ok;
		if (_alreadythere) {
			var _msg:GoString = ("" : GoString);
			if (_f._name == (Go.str())) {
				_msg = _f._sprintf(Go.str("flag redefined: %s"), Go.toInterface(_name));
			} else {
				_msg = _f._sprintf(Go.str("%s flag redefined: %s"), Go.toInterface(_f._name), Go.toInterface(_name));
			};
			throw Go.toInterface(_msg);
		};
		if (_f._formal == null) {
			_f._formal = (new GoObjectMap<GoString,
				Ref<Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
					stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () -> stdgo.internal.reflect.Reflect.GoType.named("Flag", [],
					stdgo.internal.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "usage",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "value",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.named("Value", [
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
												]), false, {get: () -> null})
										]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
								new stdgo.internal.reflect.Reflect.MethodType("string",
									{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
										{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
							],
								stdgo.internal.reflect.Reflect.GoType.named("Value", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
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
													]), false, {get: () -> null})
											]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
									new stdgo.internal.reflect.Reflect.MethodType("string",
										{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
											{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
								]), false, {get: () -> null}), false, {get: () -> null})},
							optional: false
						},
						{
							name: "defValue",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						}
					]), false, {get: () -> null})})}))) : GoMap<GoString, Ref<Flag>>);
		};
		_f._formal[_name] = _flag;
	}

	/**
		// Func defines a flag with the specified name and usage string.
		// Each time the flag is seen, fn is called with the value of the flag.
		// If fn returns a non-nil error, it will be treated as a flag value parsing error.
	**/
	@:keep
	static public function func(_f:Ref<FlagSet>, _name:GoString, _usage:GoString, _fn:GoString->Error):Void {
		_f.var_(Go.asInterface((_fn : T_funcValue)), _name, _usage);
	}

	/**
		// TextVar defines a flag with a specified name, default value, and usage string.
		// The argument p must be a pointer to a variable that will hold the value
		// of the flag, and p must implement encoding.TextUnmarshaler.
		// If the flag is used, the flag value will be passed to p's UnmarshalText method.
		// The type of the default value must be the same as the type of p.
	**/
	@:keep
	static public function textVar(_f:Ref<FlagSet>, _p:stdgo.encoding.Encoding.TextUnmarshaler, _name:GoString, _value:stdgo.encoding.Encoding.TextMarshaler,
			_usage:GoString):Void {
		_f.var_(Go.asInterface(_newTextValue(_value, _p)), _name, _usage);
	}

	/**
		// Duration defines a time.Duration flag with specified name, default value, and usage string.
		// The return value is the address of a time.Duration variable that stores the value of the flag.
		// The flag accepts a value acceptable to time.ParseDuration.
	**/
	@:keep
	static public function duration(_f:Ref<FlagSet>, _name:GoString, _value:stdgo.time.Time.Duration, _usage:GoString):Pointer<stdgo.time.Time.Duration> {
		var _p = Go.pointer(((0 : GoInt64) : stdgo.time.Time.Duration));
		_f.durationVar(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// DurationVar defines a time.Duration flag with specified name, default value, and usage string.
		// The argument p points to a time.Duration variable in which to store the value of the flag.
		// The flag accepts a value acceptable to time.ParseDuration.
	**/
	@:keep
	static public function durationVar(_f:Ref<FlagSet>, _p:Pointer<stdgo.time.Time.Duration>, _name:GoString, _value:stdgo.time.Time.Duration,
			_usage:GoString):Void {
		_f.var_(Go.asInterface(_newDurationValue(_value, _p)), _name, _usage);
	}

	/**
		// Float64 defines a float64 flag with specified name, default value, and usage string.
		// The return value is the address of a float64 variable that stores the value of the flag.
	**/
	@:keep
	static public function float64(_f:Ref<FlagSet>, _name:GoString, _value:GoFloat64, _usage:GoString):Pointer<GoFloat64> {
		var _p = Go.pointer((0 : GoFloat64));
		_f.float64Var(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// Float64Var defines a float64 flag with specified name, default value, and usage string.
		// The argument p points to a float64 variable in which to store the value of the flag.
	**/
	@:keep
	static public function float64Var(_f:Ref<FlagSet>, _p:Pointer<GoFloat64>, _name:GoString, _value:GoFloat64, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newFloat64Value(_value, _p)), _name, _usage);
	}

	/**
		// String defines a string flag with specified name, default value, and usage string.
		// The return value is the address of a string variable that stores the value of the flag.
	**/
	@:keep
	static public function string(_f:Ref<FlagSet>, _name:GoString, _value:GoString, _usage:GoString):Pointer<GoString> {
		var _p = Go.pointer(("" : GoString));
		_f.stringVar(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// StringVar defines a string flag with specified name, default value, and usage string.
		// The argument p points to a string variable in which to store the value of the flag.
	**/
	@:keep
	static public function stringVar(_f:Ref<FlagSet>, _p:Pointer<GoString>, _name:GoString, _value:GoString, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newStringValue(_value, _p)), _name, _usage);
	}

	/**
		// Uint64 defines a uint64 flag with specified name, default value, and usage string.
		// The return value is the address of a uint64 variable that stores the value of the flag.
	**/
	@:keep
	static public function uint64(_f:Ref<FlagSet>, _name:GoString, _value:GoUInt64, _usage:GoString):Pointer<GoUInt64> {
		var _p = Go.pointer((0 : GoUInt64));
		_f.uint64Var(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// Uint64Var defines a uint64 flag with specified name, default value, and usage string.
		// The argument p points to a uint64 variable in which to store the value of the flag.
	**/
	@:keep
	static public function uint64Var(_f:Ref<FlagSet>, _p:Pointer<GoUInt64>, _name:GoString, _value:GoUInt64, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newUint64Value(_value, _p)), _name, _usage);
	}

	/**
		// Uint defines a uint flag with specified name, default value, and usage string.
		// The return value is the address of a uint variable that stores the value of the flag.
	**/
	@:keep
	static public function uint(_f:Ref<FlagSet>, _name:GoString, _value:GoUInt, _usage:GoString):Pointer<GoUInt> {
		var _p = Go.pointer((0 : GoUInt));
		_f.uintVar(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// UintVar defines a uint flag with specified name, default value, and usage string.
		// The argument p points to a uint variable in which to store the value of the flag.
	**/
	@:keep
	static public function uintVar(_f:Ref<FlagSet>, _p:Pointer<GoUInt>, _name:GoString, _value:GoUInt, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newUintValue(_value, _p)), _name, _usage);
	}

	/**
		// Int64 defines an int64 flag with specified name, default value, and usage string.
		// The return value is the address of an int64 variable that stores the value of the flag.
	**/
	@:keep
	static public function int64(_f:Ref<FlagSet>, _name:GoString, _value:GoInt64, _usage:GoString):Pointer<GoInt64> {
		var _p = Go.pointer((0 : GoInt64));
		_f.int64Var(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// Int64Var defines an int64 flag with specified name, default value, and usage string.
		// The argument p points to an int64 variable in which to store the value of the flag.
	**/
	@:keep
	static public function int64Var(_f:Ref<FlagSet>, _p:Pointer<GoInt64>, _name:GoString, _value:GoInt64, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newInt64Value(_value, _p)), _name, _usage);
	}

	/**
		// Int defines an int flag with specified name, default value, and usage string.
		// The return value is the address of an int variable that stores the value of the flag.
	**/
	@:keep
	static public function int_(_f:Ref<FlagSet>, _name:GoString, _value:GoInt, _usage:GoString):Pointer<GoInt> {
		var _p = Go.pointer((0 : GoInt));
		_f.intVar(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// IntVar defines an int flag with specified name, default value, and usage string.
		// The argument p points to an int variable in which to store the value of the flag.
	**/
	@:keep
	static public function intVar(_f:Ref<FlagSet>, _p:Pointer<GoInt>, _name:GoString, _value:GoInt, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newIntValue(_value, _p)), _name, _usage);
	}

	/**
		// Bool defines a bool flag with specified name, default value, and usage string.
		// The return value is the address of a bool variable that stores the value of the flag.
	**/
	@:keep
	static public function bool_(_f:Ref<FlagSet>, _name:GoString, _value:Bool, _usage:GoString):Pointer<Bool> {
		var _p = Go.pointer(false);
		_f.boolVar(_p, _name, _value, _usage);
		return _p;
	}

	/**
		// BoolVar defines a bool flag with specified name, default value, and usage string.
		// The argument p points to a bool variable in which to store the value of the flag.
	**/
	@:keep
	static public function boolVar(_f:Ref<FlagSet>, _p:Pointer<Bool>, _name:GoString, _value:Bool, _usage:GoString):Void {
		_f.var_(Go.asInterface(_newBoolValue(_value, _p)), _name, _usage);
	}

	/**
		// Args returns the non-flag arguments.
	**/
	@:keep
	static public function args(_f:Ref<FlagSet>):Slice<GoString> {
		return _f._args;
	}

	/**
		// NArg is the number of arguments remaining after flags have been processed.
	**/
	@:keep
	static public function narg(_f:Ref<FlagSet>):GoInt {
		return (_f._args.length);
	}

	/**
		// Arg returns the i'th argument. Arg(0) is the first remaining argument
		// after flags have been processed. Arg returns an empty string if the
		// requested element does not exist.
	**/
	@:keep
	static public function arg(_f:Ref<FlagSet>, _i:GoInt):GoString {
		if ((_i < (0:GoInt)) || (_i >= _f._args.length)) {
			return Go.str();
		};
		return _f._args[(_i : GoInt)];
	}

	/**
		// NFlag returns the number of flags that have been set.
	**/
	@:keep
	static public function nflag(_f:Ref<FlagSet>):GoInt {
		return (_f._actual.length);
	}

	/**
		// defaultUsage is the default function to print a usage message.
	**/
	@:keep
	static public function _defaultUsage(_f:Ref<FlagSet>):Void {
		if (_f._name == (Go.str())) {
			stdgo.fmt.Fmt.fprintf(_f.output(), Go.str("Usage:\n"));
		} else {
			stdgo.fmt.Fmt.fprintf(_f.output(), Go.str("Usage of %s:\n"), Go.toInterface(_f._name));
		};
		_f.printDefaults();
	}

	/**
		// PrintDefaults prints, to standard error unless configured otherwise, the
		// default values of all defined command-line flags in the set. See the
		// documentation for the global function PrintDefaults for more information.
	**/
	@:keep
	static public function printDefaults(_f:Ref<FlagSet>):Void {
		var _isZeroValueErrs:Slice<Error> = (null : Slice<Error>);
		_f.visitAll(function(_flag:Ref<Flag>):Void {
			var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
			stdgo.fmt.Fmt.fprintf(Go.asInterface((_b : Ref<stdgo.strings.Strings.Builder>)), Go.str("  -%s"), Go.toInterface(_flag.name));
			var __tmp__ = unquoteUsage(_flag),
				_name:GoString = __tmp__._0,
				_usage:GoString = __tmp__._1;
			if ((_name.length) > (0 : GoInt)) {
				_b.writeString(Go.str(" "));
				_b.writeString(_name);
			};
			if (_b.len() <= (4 : GoInt)) {
				_b.writeString(Go.str("\t"));
			} else {
				_b.writeString(Go.str("\n    \t"));
			};
			_b.writeString(stdgo.strings.Strings.replaceAll(_usage, Go.str("\n"), Go.str("\n    \t")));
			{
				var __tmp__ = _isZeroValue(_flag, _flag.defValue),
					_isZero:Bool = __tmp__._0,
					_err:Error = __tmp__._1;
				if (_err != null) {
					_isZeroValueErrs = _isZeroValueErrs.__appendref__(_err);
				} else if (!_isZero) {
					{
						var __tmp__ = try {
							{value: (Go.typeAssert((Go.toInterface(_flag.value) : Pointer<T_stringValue>)) : Pointer<T_stringValue>), ok: true};
						} catch (_) {
							{value: (null : Pointer<T_stringValue>), ok: false};
						}, _0 = __tmp__.value, _ok = __tmp__.ok;
						if (_ok) {
							stdgo.fmt.Fmt.fprintf(Go.asInterface((_b : Ref<stdgo.strings.Strings.Builder>)), Go.str(" (default %q)"),
								Go.toInterface(_flag.defValue));
						} else {
							stdgo.fmt.Fmt.fprintf(Go.asInterface((_b : Ref<stdgo.strings.Strings.Builder>)), Go.str(" (default %v)"),
								Go.toInterface(_flag.defValue));
						};
					};
				};
			};
			stdgo.fmt.Fmt.fprint(_f.output(), Go.toInterface((_b.string() : GoString)), Go.toInterface(Go.str("\n")));
		});
		{
			var _errs = _isZeroValueErrs;
			if ((_errs.length) > (0 : GoInt)) {
				stdgo.fmt.Fmt.fprintln(_f.output());
				for (_0 => _err in _errs) {
					stdgo.fmt.Fmt.fprintln(_f.output(), Go.toInterface(_err));
				};
			};
		};
	}

	/**
		// Set sets the value of the named flag.
	**/
	@:keep
	static public function set(_f:Ref<FlagSet>, _name:GoString, _value:GoString):Error {
		var __tmp__ = (_f._formal != null
			&& _f._formal.__exists__(_name) ? {value: _f._formal[_name], ok: true} : {value: (null : Ref<Flag>), ok: false}),
			_flag:Ref<Flag> = __tmp__.value,
			_ok:Bool = __tmp__.ok;
		if (!_ok) {
			return stdgo.fmt.Fmt.errorf(Go.str("no such flag -%v"), Go.toInterface(_name));
		};
		var _err:Error = _flag.value.set(_value);
		if (_err != null) {
			return _err;
		};
		if (_f._actual == null) {
			_f._actual = (new GoObjectMap<GoString,
				Ref<Flag>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
					stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.refType({get: () -> stdgo.internal.reflect.Reflect.GoType.named("Flag", [],
					stdgo.internal.reflect.Reflect.GoType.structType([
						{
							name: "name",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "usage",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						},
						{
							name: "value",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.named("Value", [
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
												]), false, {get: () -> null})
										]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
								new stdgo.internal.reflect.Reflect.MethodType("string",
									{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
										{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
									{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
							],
								stdgo.internal.reflect.Reflect.GoType.named("Value", [], stdgo.internal.reflect.Reflect.GoType.interfaceType(false, [
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
													]), false, {get: () -> null})
											]}, {get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
									},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType}),
									new stdgo.internal.reflect.Reflect.MethodType("string",
										{get: () -> stdgo.internal.reflect.Reflect.GoType.signature(false, {get: () -> []},
											{get: () -> [stdgo.internal.reflect.Reflect.GoType.basic(string_kind)]},
											{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})},
										{get: () -> stdgo.internal.reflect.Reflect.GoType.invalidType})
								]), false, {get: () -> null}), false, {get: () -> null})},
							optional: false
						},
						{
							name: "defValue",
							embedded: false,
							tag: "",
							type: {get: () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind)},
							optional: false
						}
					]), false, {get: () -> null})})}))) : GoMap<GoString, Ref<Flag>>);
		};
		_f._actual[_name] = _flag;
		return (null : Error);
	}

	/**
		// Lookup returns the Flag structure of the named flag, returning nil if none exists.
	**/
	@:keep
	static public function lookup(_f:Ref<FlagSet>, _name:GoString):Ref<Flag> {
		return _f._formal[_name];
	}

	/**
		// Visit visits the flags in lexicographical order, calling fn for each.
		// It visits only those flags that have been set.
	**/
	@:keep
	static public function visit(_f:Ref<FlagSet>, _fn:Ref<Flag>->Void):Void {
		for (_0 => _flag in _sortFlags(_f._actual)) {
			_fn(_flag);
		};
	}

	/**
		// VisitAll visits the flags in lexicographical order, calling fn for each.
		// It visits all flags, even those not set.
	**/
	@:keep
	static public function visitAll(_f:Ref<FlagSet>, _fn:Ref<Flag>->Void):Void {
		for (_0 => _flag in _sortFlags(_f._formal)) {
			_fn(_flag);
		};
	}

	/**
		// SetOutput sets the destination for usage and error messages.
		// If output is nil, os.Stderr is used.
	**/
	@:keep
	static public function setOutput(_f:Ref<FlagSet>, _output:stdgo.io.Io.Writer):Void {
		_f._output = _output;
	}

	/**
		// ErrorHandling returns the error handling behavior of the flag set.
	**/
	@:keep
	static public function errorHandling(_f:Ref<FlagSet>):ErrorHandling {
		return _f._errorHandling;
	}

	/**
		// Name returns the name of the flag set.
	**/
	@:keep
	static public function name(_f:Ref<FlagSet>):GoString {
		return _f._name;
	}

	/**
		// Output returns the destination for usage and error messages. os.Stderr is returned if
		// output was not set or was set to nil.
	**/
	@:keep
	static public function output(_f:Ref<FlagSet>):stdgo.io.Io.Writer {
		if (_f._output == null) {
			return Go.asInterface(stdgo.os.Os.stderr);
		};
		return _f._output;
	}
}

class T_boolValue_asInterface {
	@:keep
	@:pointer
	public function isBoolFlag():Bool
		return __self__.value.isBoolFlag(__self__);

	@:keep
	@:pointer
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_boolValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
	@:keep
	@:pointer
	static public function isBoolFlag(____:T_boolValue, _b:Pointer<T_boolValue>):Bool {
		return true;
	}

	@:keep
	@:pointer
	static public function string(____:T_boolValue, _b:Pointer<T_boolValue>):GoString {
		return stdgo.strconv.Strconv.formatBool((_b.value : Bool));
	}

	@:keep
	@:pointer
	static public function get(____:T_boolValue, _b:Pointer<T_boolValue>):AnyInterface {
		return Go.toInterface((_b.value : Bool));
	}

	@:keep
	@:pointer
	static public function set(____:T_boolValue, _b:Pointer<T_boolValue>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseBool(_s),
			_v:Bool = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_intValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_intValue_asInterface) class T_intValue_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_intValue, _i:Pointer<T_intValue>):GoString {
		return stdgo.strconv.Strconv.itoa((_i.value : GoInt));
	}

	@:keep
	@:pointer
	static public function get(____:T_intValue, _i:Pointer<T_intValue>):AnyInterface {
		return Go.toInterface((_i.value : GoInt));
	}

	@:keep
	@:pointer
	static public function set(____:T_intValue, _i:Pointer<T_intValue>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, (0 : GoInt), (32 : GoInt)),
			_v:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_int64Value>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_int64Value_asInterface) class T_int64Value_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_int64Value, _i:Pointer<T_int64Value>):GoString {
		return stdgo.strconv.Strconv.formatInt((_i.value : GoInt64), (10 : GoInt));
	}

	@:keep
	@:pointer
	static public function get(____:T_int64Value, _i:Pointer<T_int64Value>):AnyInterface {
		return Go.toInterface((_i.value : GoInt64));
	}

	@:keep
	@:pointer
	static public function set(____:T_int64Value, _i:Pointer<T_int64Value>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseInt(_s, (0 : GoInt), (64 : GoInt)),
			_v:GoInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_uintValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_uintValue_asInterface) class T_uintValue_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_uintValue, _i:Pointer<T_uintValue>):GoString {
		return stdgo.strconv.Strconv.formatUint((_i.value : GoUInt64), (10 : GoInt));
	}

	@:keep
	@:pointer
	static public function get(____:T_uintValue, _i:Pointer<T_uintValue>):AnyInterface {
		return Go.toInterface((_i.value : GoUInt));
	}

	@:keep
	@:pointer
	static public function set(____:T_uintValue, _i:Pointer<T_uintValue>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, (0 : GoInt), (32 : GoInt)),
			_v:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_uint64Value>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_uint64Value_asInterface) class T_uint64Value_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_uint64Value, _i:Pointer<T_uint64Value>):GoString {
		return stdgo.strconv.Strconv.formatUint((_i.value : GoUInt64), (10 : GoInt));
	}

	@:keep
	@:pointer
	static public function get(____:T_uint64Value, _i:Pointer<T_uint64Value>):AnyInterface {
		return Go.toInterface((_i.value : GoUInt64));
	}

	@:keep
	@:pointer
	static public function set(____:T_uint64Value, _i:Pointer<T_uint64Value>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseUint(_s, (0 : GoInt), (64 : GoInt)),
			_v:GoUInt64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_val:GoString):Error
		return __self__.value.set(__self__, _val);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_stringValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_stringValue_asInterface) class T_stringValue_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_stringValue, _s:Pointer<T_stringValue>):GoString {
		return (_s.value : GoString);
	}

	@:keep
	@:pointer
	static public function get(____:T_stringValue, _s:Pointer<T_stringValue>):AnyInterface {
		return Go.toInterface((_s.value : GoString));
	}

	@:keep
	@:pointer
	static public function set(____:T_stringValue, _s:Pointer<T_stringValue>, _val:GoString):Error {
		_s.value = (_val : T_stringValue);
		return (null : Error);
	}
}

class T_float64Value_asInterface {
	@:keep
	@:pointer
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_float64Value>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_float64Value_asInterface) class T_float64Value_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_float64Value, _f:Pointer<T_float64Value>):GoString {
		return stdgo.strconv.Strconv.formatFloat((_f.value : GoFloat64), (103 : GoUInt8), (-1 : GoInt), (64 : GoInt));
	}

	@:keep
	@:pointer
	static public function get(____:T_float64Value, _f:Pointer<T_float64Value>):AnyInterface {
		return Go.toInterface((_f.value : GoFloat64));
	}

	@:keep
	@:pointer
	static public function set(____:T_float64Value, _f:Pointer<T_float64Value>, _s:GoString):Error {
		var __tmp__ = stdgo.strconv.Strconv.parseFloat(_s, (64 : GoInt)),
			_v:GoFloat64 = __tmp__._0,
			_err:Error = __tmp__._1;
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
	public function string():GoString
		return __self__.value.string(__self__);

	@:keep
	@:pointer
	public function get():AnyInterface
		return __self__.value.get(__self__);

	@:keep
	@:pointer
	public function set(_s:GoString):Error
		return __self__.value.set(__self__, _s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_durationValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
	@:keep
	@:pointer
	static public function string(____:T_durationValue, _d:Pointer<T_durationValue>):GoString {
		return (new Pointer<stdgo.time.Time.Duration>(() -> (_d.value : stdgo.time.Time.Duration),
			v -> (_d.value = (v : T_durationValue):stdgo.time.Time.Duration)).value.string() : GoString);
	}

	@:keep
	@:pointer
	static public function get(____:T_durationValue, _d:Pointer<T_durationValue>):AnyInterface {
		return Go.toInterface(Go.asInterface((_d.value : stdgo.time.Time.Duration)));
	}

	@:keep
	@:pointer
	static public function set(____:T_durationValue, _d:Pointer<T_durationValue>, _s:GoString):Error {
		var __tmp__ = stdgo.time.Time.parseDuration(_s),
			_v:stdgo.time.Time.Duration = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_err != null) {
			_err = _errParse;
		};
		_d.value = (_v : T_durationValue);
		return _err;
	}
}

class T_funcValue_asInterface {
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

	var __self__:Pointer<T_funcValue>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.flag.Flag.T_funcValue_asInterface) class T_funcValue_static_extension {
	@:keep
	static public function string(_f:T_funcValue):GoString {
		return Go.str();
	}

	@:keep
	static public function set(_f:T_funcValue, _s:GoString):Error {
		return _f(_s);
	}
}
