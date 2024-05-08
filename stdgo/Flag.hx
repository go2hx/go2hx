package stdgo;
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
private function get_errHelp():stdgo.Error return stdgo._internal.flag.Flag.errHelp;
private function set_errHelp(v:stdgo.Error):stdgo.Error return stdgo._internal.flag.Flag.errHelp = v;
var commandLine(get, set) : stdgo._internal.flag.Flag.FlagSet;
private function get_commandLine():stdgo._internal.flag.Flag.FlagSet return stdgo._internal.flag.Flag.commandLine;
private function set_commandLine(v:stdgo._internal.flag.Flag.FlagSet):stdgo._internal.flag.Flag.FlagSet return stdgo._internal.flag.Flag.commandLine = v;
var usage(get, set) : () -> Void;
private function get_usage():() -> Void return stdgo._internal.flag.Flag.usage;
private function set_usage(v:() -> Void):() -> Void return stdgo._internal.flag.Flag.usage = v;
var defaultUsage(get, set) : () -> Void;
private function get_defaultUsage():() -> Void return stdgo._internal.flag.Flag.defaultUsage;
private function set_defaultUsage(v:() -> Void):() -> Void return stdgo._internal.flag.Flag.defaultUsage = v;
@:forward @:forward.new abstract T_boolFlag_static_extension(stdgo._internal.flag.Flag.T_boolFlag_static_extension) from stdgo._internal.flag.Flag.T_boolFlag_static_extension to stdgo._internal.flag.Flag.T_boolFlag_static_extension {

}
typedef T_boolFlag = stdgo._internal.flag.Flag.T_boolFlag;
@:forward @:forward.new abstract Value_static_extension(stdgo._internal.flag.Flag.Value_static_extension) from stdgo._internal.flag.Flag.Value_static_extension to stdgo._internal.flag.Flag.Value_static_extension {

}
typedef Value = stdgo._internal.flag.Flag.Value;
@:forward @:forward.new abstract Getter_static_extension(stdgo._internal.flag.Flag.Getter_static_extension) from stdgo._internal.flag.Flag.Getter_static_extension to stdgo._internal.flag.Flag.Getter_static_extension {

}
typedef Getter = stdgo._internal.flag.Flag.Getter;
@:forward @:forward.new abstract T_textValue(stdgo._internal.flag.Flag.T_textValue) from stdgo._internal.flag.Flag.T_textValue to stdgo._internal.flag.Flag.T_textValue {

}
@:forward @:forward.new abstract FlagSet(stdgo._internal.flag.Flag.FlagSet) from stdgo._internal.flag.Flag.FlagSet to stdgo._internal.flag.Flag.FlagSet {

}
@:forward @:forward.new abstract Flag(stdgo._internal.flag.Flag.Flag) from stdgo._internal.flag.Flag.Flag to stdgo._internal.flag.Flag.Flag {

}
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
@:forward @:forward.new abstract T_textValue_asInterface(stdgo._internal.flag.Flag.T_textValue_asInterface) from stdgo._internal.flag.Flag.T_textValue_asInterface to stdgo._internal.flag.Flag.T_textValue_asInterface {

}
@:forward @:forward.new abstract T_textValue_static_extension(stdgo._internal.flag.Flag.T_textValue_static_extension) from stdgo._internal.flag.Flag.T_textValue_static_extension to stdgo._internal.flag.Flag.T_textValue_static_extension {

}
@:forward @:forward.new abstract FlagSet_asInterface(stdgo._internal.flag.Flag.FlagSet_asInterface) from stdgo._internal.flag.Flag.FlagSet_asInterface to stdgo._internal.flag.Flag.FlagSet_asInterface {

}
@:forward @:forward.new abstract FlagSet_static_extension(stdgo._internal.flag.Flag.FlagSet_static_extension) from stdgo._internal.flag.Flag.FlagSet_static_extension to stdgo._internal.flag.Flag.FlagSet_static_extension {

}
@:forward @:forward.new abstract T_boolValue_asInterface(stdgo._internal.flag.Flag.T_boolValue_asInterface) from stdgo._internal.flag.Flag.T_boolValue_asInterface to stdgo._internal.flag.Flag.T_boolValue_asInterface {

}
@:forward @:forward.new abstract T_boolValue_static_extension(stdgo._internal.flag.Flag.T_boolValue_static_extension) from stdgo._internal.flag.Flag.T_boolValue_static_extension to stdgo._internal.flag.Flag.T_boolValue_static_extension {

}
@:forward @:forward.new abstract T_intValue_asInterface(stdgo._internal.flag.Flag.T_intValue_asInterface) from stdgo._internal.flag.Flag.T_intValue_asInterface to stdgo._internal.flag.Flag.T_intValue_asInterface {

}
@:forward @:forward.new abstract T_intValue_static_extension(stdgo._internal.flag.Flag.T_intValue_static_extension) from stdgo._internal.flag.Flag.T_intValue_static_extension to stdgo._internal.flag.Flag.T_intValue_static_extension {

}
@:forward @:forward.new abstract T_int64Value_asInterface(stdgo._internal.flag.Flag.T_int64Value_asInterface) from stdgo._internal.flag.Flag.T_int64Value_asInterface to stdgo._internal.flag.Flag.T_int64Value_asInterface {

}
@:forward @:forward.new abstract T_int64Value_static_extension(stdgo._internal.flag.Flag.T_int64Value_static_extension) from stdgo._internal.flag.Flag.T_int64Value_static_extension to stdgo._internal.flag.Flag.T_int64Value_static_extension {

}
@:forward @:forward.new abstract T_uintValue_asInterface(stdgo._internal.flag.Flag.T_uintValue_asInterface) from stdgo._internal.flag.Flag.T_uintValue_asInterface to stdgo._internal.flag.Flag.T_uintValue_asInterface {

}
@:forward @:forward.new abstract T_uintValue_static_extension(stdgo._internal.flag.Flag.T_uintValue_static_extension) from stdgo._internal.flag.Flag.T_uintValue_static_extension to stdgo._internal.flag.Flag.T_uintValue_static_extension {

}
@:forward @:forward.new abstract T_uint64Value_asInterface(stdgo._internal.flag.Flag.T_uint64Value_asInterface) from stdgo._internal.flag.Flag.T_uint64Value_asInterface to stdgo._internal.flag.Flag.T_uint64Value_asInterface {

}
@:forward @:forward.new abstract T_uint64Value_static_extension(stdgo._internal.flag.Flag.T_uint64Value_static_extension) from stdgo._internal.flag.Flag.T_uint64Value_static_extension to stdgo._internal.flag.Flag.T_uint64Value_static_extension {

}
@:forward @:forward.new abstract T_stringValue_asInterface(stdgo._internal.flag.Flag.T_stringValue_asInterface) from stdgo._internal.flag.Flag.T_stringValue_asInterface to stdgo._internal.flag.Flag.T_stringValue_asInterface {

}
@:forward @:forward.new abstract T_stringValue_static_extension(stdgo._internal.flag.Flag.T_stringValue_static_extension) from stdgo._internal.flag.Flag.T_stringValue_static_extension to stdgo._internal.flag.Flag.T_stringValue_static_extension {

}
@:forward @:forward.new abstract T_float64Value_asInterface(stdgo._internal.flag.Flag.T_float64Value_asInterface) from stdgo._internal.flag.Flag.T_float64Value_asInterface to stdgo._internal.flag.Flag.T_float64Value_asInterface {

}
@:forward @:forward.new abstract T_float64Value_static_extension(stdgo._internal.flag.Flag.T_float64Value_static_extension) from stdgo._internal.flag.Flag.T_float64Value_static_extension to stdgo._internal.flag.Flag.T_float64Value_static_extension {

}
@:forward @:forward.new abstract T_durationValue_asInterface(stdgo._internal.flag.Flag.T_durationValue_asInterface) from stdgo._internal.flag.Flag.T_durationValue_asInterface to stdgo._internal.flag.Flag.T_durationValue_asInterface {

}
@:forward @:forward.new abstract T_durationValue_static_extension(stdgo._internal.flag.Flag.T_durationValue_static_extension) from stdgo._internal.flag.Flag.T_durationValue_static_extension to stdgo._internal.flag.Flag.T_durationValue_static_extension {

}
@:forward @:forward.new abstract T_funcValue_asInterface(stdgo._internal.flag.Flag.T_funcValue_asInterface) from stdgo._internal.flag.Flag.T_funcValue_asInterface to stdgo._internal.flag.Flag.T_funcValue_asInterface {

}
@:forward @:forward.new abstract T_funcValue_static_extension(stdgo._internal.flag.Flag.T_funcValue_static_extension) from stdgo._internal.flag.Flag.T_funcValue_static_extension to stdgo._internal.flag.Flag.T_funcValue_static_extension {

}
@:forward @:forward.new abstract T_boolFuncValue_asInterface(stdgo._internal.flag.Flag.T_boolFuncValue_asInterface) from stdgo._internal.flag.Flag.T_boolFuncValue_asInterface to stdgo._internal.flag.Flag.T_boolFuncValue_asInterface {

}
@:forward @:forward.new abstract T_boolFuncValue_static_extension(stdgo._internal.flag.Flag.T_boolFuncValue_static_extension) from stdgo._internal.flag.Flag.T_boolFuncValue_static_extension to stdgo._internal.flag.Flag.T_boolFuncValue_static_extension {

}
class Flag {
    /**
        ResetForTesting clears all flag state and sets the usage function as directed.
        After calling ResetForTesting, parse errors in flag handling will not
        exit the program.
    **/
    static public function resetForTesting(usage:() -> Void):Void {
        final usage = usage;
        stdgo._internal.flag.Flag.resetForTesting(usage);
    }
    /**
        VisitAll visits the command-line flags in lexicographical order, calling
        fn for each. It visits all flags, even those not set.
    **/
    static public function visitAll(fn:stdgo.Ref<Flag> -> Void):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.visitAll(fn);
    }
    /**
        Visit visits the command-line flags in lexicographical order, calling fn
        for each. It visits only those flags that have been set.
    **/
    static public function visit(fn:stdgo.Ref<Flag> -> Void):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.visit(fn);
    }
    /**
        Lookup returns the Flag structure of the named command-line flag,
        returning nil if none exists.
    **/
    static public function lookup(name:String):Flag {
        return stdgo._internal.flag.Flag.lookup(name);
    }
    /**
        Set sets the value of the named command-line flag.
    **/
    static public function set(name:String, value:String):stdgo.Error {
        return stdgo._internal.flag.Flag.set(name, value);
    }
    /**
        UnquoteUsage extracts a back-quoted name from the usage
        string for a flag and returns it and the un-quoted usage.
        Given "a `name` to show" it returns ("name", "a name to show").
        If there are no back quotes, the name is an educated guess of the
        type of the flag's value, or the empty string if the flag is boolean.
    **/
    static public function unquoteUsage(flag:Flag):stdgo.Tuple<String, String> {
        return {
            final obj = stdgo._internal.flag.Flag.unquoteUsage(flag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        PrintDefaults prints, to standard error unless configured otherwise,
        a usage message showing the default settings of all defined
        command-line flags.
        For an integer valued flag x, the default output has the form
        
        	-x int
        		usage-message-for-x (default 7)
        
        The usage message will appear on a separate line for anything but
        a bool flag with a one-byte name. For bool flags, the type is
        omitted and if the flag name is one byte the usage message appears
        on the same line. The parenthetical default is omitted if the
        default is the zero value for the type. The listed type, here int,
        can be changed by placing a back-quoted name in the flag's usage
        string; the first such item in the message is taken to be a parameter
        name to show in the message and the back quotes are stripped from
        the message when displayed. For instance, given
        
        	flag.String("I", "", "search `directory` for include files")
        
        the output will be
        
        	-I directory
        		search directory for include files.
        
        To change the destination for flag messages, call CommandLine.SetOutput.
    **/
    static public function printDefaults():Void {
        stdgo._internal.flag.Flag.printDefaults();
    }
    /**
        NFlag returns the number of command-line flags that have been set.
    **/
    static public function nflag():StdTypes.Int {
        return stdgo._internal.flag.Flag.nflag();
    }
    /**
        Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
        after flags have been processed. Arg returns an empty string if the
        requested element does not exist.
    **/
    static public function arg(i:StdTypes.Int):String {
        return stdgo._internal.flag.Flag.arg(i);
    }
    /**
        NArg is the number of arguments remaining after flags have been processed.
    **/
    static public function narg():StdTypes.Int {
        return stdgo._internal.flag.Flag.narg();
    }
    /**
        Args returns the non-flag command-line arguments.
    **/
    static public function args():Array<String> {
        return [for (i in stdgo._internal.flag.Flag.args()) i];
    }
    /**
        BoolVar defines a bool flag with specified name, default value, and usage string.
        The argument p points to a bool variable in which to store the value of the flag.
    **/
    static public function boolVar(p:stdgo.Pointer<Bool>, name:String, value:Bool, usage:String):Void {
        stdgo._internal.flag.Flag.boolVar(p, name, value, usage);
    }
    /**
        Bool defines a bool flag with specified name, default value, and usage string.
        The return value is the address of a bool variable that stores the value of the flag.
    **/
    static public function bool_(name:String, value:Bool, usage:String):stdgo.Pointer<Bool> {
        return stdgo._internal.flag.Flag.bool_(name, value, usage);
    }
    /**
        IntVar defines an int flag with specified name, default value, and usage string.
        The argument p points to an int variable in which to store the value of the flag.
    **/
    static public function intVar(p:stdgo.Pointer<StdTypes.Int>, name:String, value:StdTypes.Int, usage:String):Void {
        stdgo._internal.flag.Flag.intVar(p, name, value, usage);
    }
    /**
        Int defines an int flag with specified name, default value, and usage string.
        The return value is the address of an int variable that stores the value of the flag.
    **/
    static public function int_(name:String, value:StdTypes.Int, usage:String):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.flag.Flag.int_(name, value, usage);
    }
    /**
        Int64Var defines an int64 flag with specified name, default value, and usage string.
        The argument p points to an int64 variable in which to store the value of the flag.
    **/
    static public function int64Var(p:stdgo.Pointer<haxe.Int64>, name:String, value:haxe.Int64, usage:String):Void {
        stdgo._internal.flag.Flag.int64Var(p, name, value, usage);
    }
    /**
        Int64 defines an int64 flag with specified name, default value, and usage string.
        The return value is the address of an int64 variable that stores the value of the flag.
    **/
    static public function int64(name:String, value:haxe.Int64, usage:String):stdgo.Pointer<haxe.Int64> {
        return stdgo._internal.flag.Flag.int64(name, value, usage);
    }
    /**
        UintVar defines a uint flag with specified name, default value, and usage string.
        The argument p points to a uint variable in which to store the value of the flag.
    **/
    static public function uintVar(p:stdgo.Pointer<std.UInt>, name:String, value:std.UInt, usage:String):Void {
        stdgo._internal.flag.Flag.uintVar(p, name, value, usage);
    }
    /**
        Uint defines a uint flag with specified name, default value, and usage string.
        The return value is the address of a uint variable that stores the value of the flag.
    **/
    static public function uint(name:String, value:std.UInt, usage:String):stdgo.Pointer<std.UInt> {
        return stdgo._internal.flag.Flag.uint(name, value, usage);
    }
    /**
        Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    static public function uint64Var(p:stdgo.Pointer<haxe.UInt64>, name:String, value:haxe.UInt64, usage:String):Void {
        stdgo._internal.flag.Flag.uint64Var(p, name, value, usage);
    }
    /**
        Uint64 defines a uint64 flag with specified name, default value, and usage string.
        The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    static public function uint64(name:String, value:haxe.UInt64, usage:String):stdgo.Pointer<haxe.UInt64> {
        return stdgo._internal.flag.Flag.uint64(name, value, usage);
    }
    /**
        StringVar defines a string flag with specified name, default value, and usage string.
        The argument p points to a string variable in which to store the value of the flag.
    **/
    static public function stringVar(p:stdgo.Pointer<String>, name:String, value:String, usage:String):Void {
        stdgo._internal.flag.Flag.stringVar(p, name, value, usage);
    }
    /**
        String defines a string flag with specified name, default value, and usage string.
        The return value is the address of a string variable that stores the value of the flag.
    **/
    static public function string(name:String, value:String, usage:String):stdgo.Pointer<String> {
        return stdgo._internal.flag.Flag.string(name, value, usage);
    }
    /**
        Float64Var defines a float64 flag with specified name, default value, and usage string.
        The argument p points to a float64 variable in which to store the value of the flag.
    **/
    static public function float64Var(p:stdgo.Pointer<StdTypes.Float>, name:String, value:StdTypes.Float, usage:String):Void {
        stdgo._internal.flag.Flag.float64Var(p, name, value, usage);
    }
    /**
        Float64 defines a float64 flag with specified name, default value, and usage string.
        The return value is the address of a float64 variable that stores the value of the flag.
    **/
    static public function float64(name:String, value:StdTypes.Float, usage:String):stdgo.Pointer<StdTypes.Float> {
        return stdgo._internal.flag.Flag.float64(name, value, usage);
    }
    /**
        DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        The argument p points to a time.Duration variable in which to store the value of the flag.
        The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public function durationVar(p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, name:String, value:stdgo._internal.time.Time.Duration, usage:String):Void {
        stdgo._internal.flag.Flag.durationVar(p, name, value, usage);
    }
    /**
        Duration defines a time.Duration flag with specified name, default value, and usage string.
        The return value is the address of a time.Duration variable that stores the value of the flag.
        The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public function duration(name:String, value:stdgo._internal.time.Time.Duration, usage:String):stdgo.Pointer<stdgo._internal.time.Time.Duration> {
        return stdgo._internal.flag.Flag.duration(name, value, usage);
    }
    /**
        TextVar defines a flag with a specified name, default value, and usage string.
        The argument p must be a pointer to a variable that will hold the value
        of the flag, and p must implement encoding.TextUnmarshaler.
        If the flag is used, the flag value will be passed to p's UnmarshalText method.
        The type of the default value must be the same as the type of p.
    **/
    static public function textVar(p:stdgo._internal.encoding.Encoding.TextUnmarshaler, name:String, value:stdgo._internal.encoding.Encoding.TextMarshaler, usage:String):Void {
        stdgo._internal.flag.Flag.textVar(p, name, value, usage);
    }
    /**
        Func defines a flag with the specified name and usage string.
        Each time the flag is seen, fn is called with the value of the flag.
        If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public function func(name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.func(name, usage, fn);
    }
    /**
        BoolFunc defines a flag with the specified name and usage string without requiring values.
        Each time the flag is seen, fn is called with the value of the flag.
        If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public function boolFunc(name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.boolFunc(name, usage, fn);
    }
    /**
        Var defines a flag with the specified name and usage string. The type and
        value of the flag are represented by the first argument, of type Value, which
        typically holds a user-defined implementation of Value. For instance, the
        caller could create a flag that turns a comma-separated string into a slice
        of strings by giving the slice the methods of Value; in particular, Set would
        decompose the comma-separated string into the slice.
    **/
    static public function var_(value:Value, name:String, usage:String):Void {
        stdgo._internal.flag.Flag.var_(value, name, usage);
    }
    /**
        Parse parses the command-line flags from os.Args[1:]. Must be called
        after all flags are defined and before flags are accessed by the program.
    **/
    static public function parse():Void {
        stdgo._internal.flag.Flag.parse();
    }
    /**
        Parsed reports whether the command-line flags have been parsed.
    **/
    static public function parsed():Bool {
        return stdgo._internal.flag.Flag.parsed();
    }
    /**
        NewFlagSet returns a new, empty flag set with the specified name and
        error handling property. If the name is not empty, it will be printed
        in the default usage message and in error messages.
    **/
    static public function newFlagSet(name:String, errorHandling:ErrorHandling):FlagSet {
        return stdgo._internal.flag.Flag.newFlagSet(name, errorHandling);
    }
}
