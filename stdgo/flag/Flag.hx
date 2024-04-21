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
final continueOnError : stdgo._internal.flag.Flag.ErrorHandling = stdgo._internal.flag.Flag.continueOnError;
final exitOnError = stdgo._internal.flag.Flag.exitOnError;
final panicOnError = stdgo._internal.flag.Flag.panicOnError;
var errHelp(get, set) : stdgo.Error;
function get_errHelp():stdgo.Error return stdgo._internal.flag.Flag.errHelp;
function set_errHelp(v:stdgo.Error):stdgo.Error return stdgo._internal.flag.Flag.errHelp = v;
var commandLine(get, set) : stdgo._internal.flag.Flag.FlagSet;
function get_commandLine():stdgo._internal.flag.Flag.FlagSet return stdgo._internal.flag.Flag.commandLine;
function set_commandLine(v:stdgo._internal.flag.Flag.FlagSet):stdgo._internal.flag.Flag.FlagSet return stdgo._internal.flag.Flag.commandLine = v;
var usage(get, set) : () -> Void;
function get_usage():() -> Void return stdgo._internal.flag.Flag.usage;
function set_usage(v:() -> Void):() -> Void return stdgo._internal.flag.Flag.usage = v;
var defaultUsage(get, set) : () -> Void;
function get_defaultUsage():() -> Void return stdgo._internal.flag.Flag.defaultUsage;
function set_defaultUsage(v:() -> Void):() -> Void return stdgo._internal.flag.Flag.defaultUsage = v;
@:invalid typedef T_boolFlag_static_extension = Dynamic;
typedef T_boolFlag = stdgo._internal.flag.Flag.T_boolFlag;
@:invalid typedef Value_static_extension = Dynamic;
typedef Value = stdgo._internal.flag.Flag.Value;
@:invalid typedef Getter_static_extension = Dynamic;
typedef Getter = stdgo._internal.flag.Flag.Getter;
@:invalid typedef T_textValue = Dynamic;
@:invalid typedef FlagSet = Dynamic;
@:invalid typedef Flag = Dynamic;
typedef T_boolValue = stdgo._internal.flag.Flag.T_boolValue;
typedef T_intValue = stdgo._internal.flag.Flag.T_intValue;
typedef T_int64Value = stdgo._internal.flag.Flag.T_int64Value;
typedef T_uintValue = stdgo._internal.flag.Flag.T_uintValue;
typedef T_uint64Value = stdgo._internal.flag.Flag.T_uint64Value;
typedef T_stringValue = stdgo._internal.flag.Flag.T_stringValue;
typedef T_float64Value = stdgo._internal.flag.Flag.T_float64Value;
typedef T_durationValue = stdgo._internal.flag.Flag.T_durationValue;
typedef T_funcValue = stdgo._internal.flag.Flag.T_funcValue;
typedef T_boolFuncValue = stdgo._internal.flag.Flag.T_boolFuncValue;
typedef ErrorHandling = stdgo._internal.flag.Flag.ErrorHandling;
/**
    // ResetForTesting clears all flag state and sets the usage function as directed.
    // After calling ResetForTesting, parse errors in flag handling will not
    // exit the program.
**/
inline function resetForTesting(usage:() -> Void):Void throw "not implemented";
/**
    // VisitAll visits the command-line flags in lexicographical order, calling
    // fn for each. It visits all flags, even those not set.
**/
inline function visitAll(fn:stdgo.Ref<Flag> -> Void):Void throw "not implemented";
/**
    // Visit visits the command-line flags in lexicographical order, calling fn
    // for each. It visits only those flags that have been set.
**/
inline function visit(fn:stdgo.Ref<Flag> -> Void):Void throw "not implemented";
/**
    // Lookup returns the Flag structure of the named command-line flag,
    // returning nil if none exists.
**/
inline function lookup(name:String):Flag throw "not implemented";
/**
    // Set sets the value of the named command-line flag.
**/
inline function set(name:String, value:String):stdgo.Error throw "not implemented";
/**
    // UnquoteUsage extracts a back-quoted name from the usage
    // string for a flag and returns it and the un-quoted usage.
    // Given "a `name` to show" it returns ("name", "a name to show").
    // If there are no back quotes, the name is an educated guess of the
    // type of the flag's value, or the empty string if the flag is boolean.
**/
inline function unquoteUsage(flag:Flag):stdgo.Tuple<String, String> throw "not implemented";
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
inline function printDefaults():Void throw "not implemented";
/**
    // NFlag returns the number of command-line flags that have been set.
**/
inline function nflag():Int throw "not implemented";
/**
    // Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
    // after flags have been processed. Arg returns an empty string if the
    // requested element does not exist.
**/
inline function arg(i:Int):String throw "not implemented";
/**
    // NArg is the number of arguments remaining after flags have been processed.
**/
inline function narg():Int throw "not implemented";
/**
    // Args returns the non-flag command-line arguments.
**/
inline function args():Array<String> throw "not implemented";
/**
    // BoolVar defines a bool flag with specified name, default value, and usage string.
    // The argument p points to a bool variable in which to store the value of the flag.
**/
inline function boolVar(p:stdgo.Pointer<Bool>, name:String, value:Bool, usage:String):Void throw "not implemented";
/**
    // Bool defines a bool flag with specified name, default value, and usage string.
    // The return value is the address of a bool variable that stores the value of the flag.
**/
inline function bool_(name:String, value:Bool, usage:String):stdgo.Pointer<Bool> throw "not implemented";
/**
    // IntVar defines an int flag with specified name, default value, and usage string.
    // The argument p points to an int variable in which to store the value of the flag.
**/
inline function intVar(p:stdgo.Pointer<Int>, name:String, value:Int, usage:String):Void throw "not implemented";
/**
    // Int defines an int flag with specified name, default value, and usage string.
    // The return value is the address of an int variable that stores the value of the flag.
**/
inline function int_(name:String, value:Int, usage:String):stdgo.Pointer<Int> throw "not implemented";
/**
    // Int64Var defines an int64 flag with specified name, default value, and usage string.
    // The argument p points to an int64 variable in which to store the value of the flag.
**/
inline function int64Var(p:stdgo.Pointer<haxe.Int64>, name:String, value:haxe.Int64, usage:String):Void throw "not implemented";
/**
    // Int64 defines an int64 flag with specified name, default value, and usage string.
    // The return value is the address of an int64 variable that stores the value of the flag.
**/
inline function int64(name:String, value:haxe.Int64, usage:String):stdgo.Pointer<haxe.Int64> throw "not implemented";
/**
    // UintVar defines a uint flag with specified name, default value, and usage string.
    // The argument p points to a uint variable in which to store the value of the flag.
**/
inline function uintVar(p:stdgo.Pointer<UInt>, name:String, value:UInt, usage:String):Void throw "not implemented";
/**
    // Uint defines a uint flag with specified name, default value, and usage string.
    // The return value is the address of a uint variable that stores the value of the flag.
**/
inline function uint(name:String, value:UInt, usage:String):stdgo.Pointer<UInt> throw "not implemented";
/**
    // Uint64Var defines a uint64 flag with specified name, default value, and usage string.
    // The argument p points to a uint64 variable in which to store the value of the flag.
**/
inline function uint64Var(p:stdgo.Pointer<haxe.UInt64>, name:String, value:haxe.UInt64, usage:String):Void throw "not implemented";
/**
    // Uint64 defines a uint64 flag with specified name, default value, and usage string.
    // The return value is the address of a uint64 variable that stores the value of the flag.
**/
inline function uint64(name:String, value:haxe.UInt64, usage:String):stdgo.Pointer<haxe.UInt64> throw "not implemented";
/**
    // StringVar defines a string flag with specified name, default value, and usage string.
    // The argument p points to a string variable in which to store the value of the flag.
**/
inline function stringVar(p:stdgo.Pointer<String>, name:String, value:String, usage:String):Void throw "not implemented";
/**
    // String defines a string flag with specified name, default value, and usage string.
    // The return value is the address of a string variable that stores the value of the flag.
**/
inline function string(name:String, value:String, usage:String):stdgo.Pointer<String> throw "not implemented";
/**
    // Float64Var defines a float64 flag with specified name, default value, and usage string.
    // The argument p points to a float64 variable in which to store the value of the flag.
**/
inline function float64Var(p:stdgo.Pointer<Float>, name:String, value:Float, usage:String):Void throw "not implemented";
/**
    // Float64 defines a float64 flag with specified name, default value, and usage string.
    // The return value is the address of a float64 variable that stores the value of the flag.
**/
inline function float64(name:String, value:Float, usage:String):stdgo.Pointer<Float> throw "not implemented";
/**
    // DurationVar defines a time.Duration flag with specified name, default value, and usage string.
    // The argument p points to a time.Duration variable in which to store the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
inline function durationVar(p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, name:String, value:stdgo._internal.time.Time.Duration, usage:String):Void throw "not implemented";
/**
    // Duration defines a time.Duration flag with specified name, default value, and usage string.
    // The return value is the address of a time.Duration variable that stores the value of the flag.
    // The flag accepts a value acceptable to time.ParseDuration.
**/
inline function duration(name:String, value:stdgo._internal.time.Time.Duration, usage:String):stdgo.Pointer<stdgo._internal.time.Time.Duration> throw "not implemented";
/**
    // TextVar defines a flag with a specified name, default value, and usage string.
    // The argument p must be a pointer to a variable that will hold the value
    // of the flag, and p must implement encoding.TextUnmarshaler.
    // If the flag is used, the flag value will be passed to p's UnmarshalText method.
    // The type of the default value must be the same as the type of p.
**/
inline function textVar(p:stdgo._internal.encoding.Encoding.TextUnmarshaler, name:String, value:stdgo._internal.encoding.Encoding.TextMarshaler, usage:String):Void throw "not implemented";
/**
    // Func defines a flag with the specified name and usage string.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
inline function func(name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void throw "not implemented";
/**
    // BoolFunc defines a flag with the specified name and usage string without requiring values.
    // Each time the flag is seen, fn is called with the value of the flag.
    // If fn returns a non-nil error, it will be treated as a flag value parsing error.
**/
inline function boolFunc(name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void throw "not implemented";
/**
    // Var defines a flag with the specified name and usage string. The type and
    // value of the flag are represented by the first argument, of type Value, which
    // typically holds a user-defined implementation of Value. For instance, the
    // caller could create a flag that turns a comma-separated string into a slice
    // of strings by giving the slice the methods of Value; in particular, Set would
    // decompose the comma-separated string into the slice.
**/
inline function var_(value:Value, name:String, usage:String):Void throw "not implemented";
/**
    // Parse parses the command-line flags from os.Args[1:]. Must be called
    // after all flags are defined and before flags are accessed by the program.
**/
inline function parse():Void throw "not implemented";
/**
    // Parsed reports whether the command-line flags have been parsed.
**/
inline function parsed():Bool throw "not implemented";
/**
    // NewFlagSet returns a new, empty flag set with the specified name and
    // error handling property. If the name is not empty, it will be printed
    // in the default usage message and in error messages.
**/
inline function newFlagSet(name:String, errorHandling:ErrorHandling):FlagSet throw "not implemented";
@:invalid typedef T_textValue_asInterface = Dynamic;
@:invalid typedef T_textValue_static_extension = Dynamic;
@:invalid typedef FlagSet_asInterface = Dynamic;
@:invalid typedef FlagSet_static_extension = Dynamic;
@:invalid typedef T_boolValue_asInterface = Dynamic;
@:invalid typedef T_boolValue_static_extension = Dynamic;
@:invalid typedef T_intValue_asInterface = Dynamic;
@:invalid typedef T_intValue_static_extension = Dynamic;
@:invalid typedef T_int64Value_asInterface = Dynamic;
@:invalid typedef T_int64Value_static_extension = Dynamic;
@:invalid typedef T_uintValue_asInterface = Dynamic;
@:invalid typedef T_uintValue_static_extension = Dynamic;
@:invalid typedef T_uint64Value_asInterface = Dynamic;
@:invalid typedef T_uint64Value_static_extension = Dynamic;
@:invalid typedef T_stringValue_asInterface = Dynamic;
@:invalid typedef T_stringValue_static_extension = Dynamic;
@:invalid typedef T_float64Value_asInterface = Dynamic;
@:invalid typedef T_float64Value_static_extension = Dynamic;
@:invalid typedef T_durationValue_asInterface = Dynamic;
@:invalid typedef T_durationValue_static_extension = Dynamic;
@:invalid typedef T_funcValue_asInterface = Dynamic;
@:invalid typedef T_funcValue_static_extension = Dynamic;
@:invalid typedef T_boolFuncValue_asInterface = Dynamic;
@:invalid typedef T_boolFuncValue_static_extension = Dynamic;
