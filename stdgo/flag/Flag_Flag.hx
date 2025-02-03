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
class Flag {
    /**
        ResetForTesting clears all flag state and sets the usage function as directed.
        After calling ResetForTesting, parse errors in flag handling will not
        exit the program.
    **/
    static public inline function resetForTesting(_usage:() -> Void):Void {
        final _usage = _usage;
        stdgo._internal.flag.Flag_resetForTesting.resetForTesting(_usage);
    }
    /**
        VisitAll visits the command-line flags in lexicographical order, calling
        fn for each. It visits all flags, even those not set.
    **/
    static public inline function visitAll(_fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        final _fn = _fn;
        stdgo._internal.flag.Flag_visitAll.visitAll(_fn);
    }
    /**
        Visit visits the command-line flags in lexicographical order, calling fn
        for each. It visits only those flags that have been set.
    **/
    static public inline function visit(_fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        final _fn = _fn;
        stdgo._internal.flag.Flag_visit.visit(_fn);
    }
    /**
        Lookup returns the Flag structure of the named command-line flag,
        returning nil if none exists.
    **/
    static public inline function lookup(_name:String):Flag_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_lookup.lookup(_name);
    }
    /**
        Set sets the value of the named command-line flag.
    **/
    static public inline function set(_name:String, _value:String):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_set.set(_name, _value);
    }
    /**
        UnquoteUsage extracts a back-quoted name from the usage
        string for a flag and returns it and the un-quoted usage.
        Given "a `name` to show" it returns ("name", "a name to show").
        If there are no back quotes, the name is an educated guess of the
        type of the flag's value, or the empty string if the flag is boolean.
    **/
    static public inline function unquoteUsage(_flag:Flag_):stdgo.Tuple<String, String> {
        final _flag = (_flag : stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag>);
        return {
            final obj = stdgo._internal.flag.Flag_unquoteUsage.unquoteUsage(_flag);
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
    static public inline function printDefaults():Void {
        stdgo._internal.flag.Flag_printDefaults.printDefaults();
    }
    /**
        NFlag returns the number of command-line flags that have been set.
    **/
    static public inline function nFlag():StdTypes.Int {
        return stdgo._internal.flag.Flag_nFlag.nFlag();
    }
    /**
        Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
        after flags have been processed. Arg returns an empty string if the
        requested element does not exist.
    **/
    static public inline function arg(_i:StdTypes.Int):String {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.flag.Flag_arg.arg(_i);
    }
    /**
        NArg is the number of arguments remaining after flags have been processed.
    **/
    static public inline function nArg():StdTypes.Int {
        return stdgo._internal.flag.Flag_nArg.nArg();
    }
    /**
        Args returns the non-flag command-line arguments.
    **/
    static public inline function args():Array<String> {
        return [for (i in stdgo._internal.flag.Flag_args.args()) i];
    }
    /**
        BoolVar defines a bool flag with specified name, default value, and usage string.
        The argument p points to a bool variable in which to store the value of the flag.
    **/
    static public inline function boolVar(_p:stdgo.Pointer<Bool>, _name:String, _value:Bool, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_boolVar.boolVar(_p, _name, _value, _usage);
    }
    /**
        Bool defines a bool flag with specified name, default value, and usage string.
        The return value is the address of a bool variable that stores the value of the flag.
    **/
    static public inline function bool_(_name:String, _value:Bool, _usage:String):stdgo.Pointer<Bool> {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_bool_.bool_(_name, _value, _usage);
    }
    /**
        IntVar defines an int flag with specified name, default value, and usage string.
        The argument p points to an int variable in which to store the value of the flag.
    **/
    static public inline function intVar(_p:stdgo.Pointer<StdTypes.Int>, _name:String, _value:StdTypes.Int, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_intVar.intVar(_p, _name, _value, _usage);
    }
    /**
        Int defines an int flag with specified name, default value, and usage string.
        The return value is the address of an int variable that stores the value of the flag.
    **/
    static public inline function int_(_name:String, _value:StdTypes.Int, _usage:String):stdgo.Pointer<StdTypes.Int> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_int_.int_(_name, _value, _usage);
    }
    /**
        Int64Var defines an int64 flag with specified name, default value, and usage string.
        The argument p points to an int64 variable in which to store the value of the flag.
    **/
    static public inline function int64Var(_p:stdgo.Pointer<haxe.Int64>, _name:String, _value:haxe.Int64, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_int64Var.int64Var(_p, _name, _value, _usage);
    }
    /**
        Int64 defines an int64 flag with specified name, default value, and usage string.
        The return value is the address of an int64 variable that stores the value of the flag.
    **/
    static public inline function int64(_name:String, _value:haxe.Int64, _usage:String):stdgo.Pointer<haxe.Int64> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_int64.int64(_name, _value, _usage);
    }
    /**
        UintVar defines a uint flag with specified name, default value, and usage string.
        The argument p points to a uint variable in which to store the value of the flag.
    **/
    static public inline function uintVar(_p:stdgo.Pointer<std.UInt>, _name:String, _value:std.UInt, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_uintVar.uintVar(_p, _name, _value, _usage);
    }
    /**
        Uint defines a uint flag with specified name, default value, and usage string.
        The return value is the address of a uint variable that stores the value of the flag.
    **/
    static public inline function uint(_name:String, _value:std.UInt, _usage:String):stdgo.Pointer<std.UInt> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_uint.uint(_name, _value, _usage);
    }
    /**
        Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    static public inline function uint64Var(_p:stdgo.Pointer<haxe.UInt64>, _name:String, _value:haxe.UInt64, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_uint64Var.uint64Var(_p, _name, _value, _usage);
    }
    /**
        Uint64 defines a uint64 flag with specified name, default value, and usage string.
        The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    static public inline function uint64(_name:String, _value:haxe.UInt64, _usage:String):stdgo.Pointer<haxe.UInt64> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_uint64.uint64(_name, _value, _usage);
    }
    /**
        StringVar defines a string flag with specified name, default value, and usage string.
        The argument p points to a string variable in which to store the value of the flag.
    **/
    static public inline function stringVar(_p:stdgo.Pointer<String>, _name:String, _value:String, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_stringVar.stringVar(_p, _name, _value, _usage);
    }
    /**
        String defines a string flag with specified name, default value, and usage string.
        The return value is the address of a string variable that stores the value of the flag.
    **/
    static public inline function string(_name:String, _value:String, _usage:String):stdgo.Pointer<String> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_string.string(_name, _value, _usage);
    }
    /**
        Float64Var defines a float64 flag with specified name, default value, and usage string.
        The argument p points to a float64 variable in which to store the value of the flag.
    **/
    static public inline function float64Var(_p:stdgo.Pointer<StdTypes.Float>, _name:String, _value:StdTypes.Float, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_float64Var.float64Var(_p, _name, _value, _usage);
    }
    /**
        Float64 defines a float64 flag with specified name, default value, and usage string.
        The return value is the address of a float64 variable that stores the value of the flag.
    **/
    static public inline function float64(_name:String, _value:StdTypes.Float, _usage:String):stdgo.Pointer<StdTypes.Float> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_float64.float64(_name, _value, _usage);
    }
    /**
        DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        The argument p points to a time.Duration variable in which to store the value of the flag.
        The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public inline function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>, _name:String, _value:stdgo._internal.time.Time_Duration.Duration, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_durationVar.durationVar(_p, _name, _value, _usage);
    }
    /**
        Duration defines a time.Duration flag with specified name, default value, and usage string.
        The return value is the address of a time.Duration variable that stores the value of the flag.
        The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public inline function duration(_name:String, _value:stdgo._internal.time.Time_Duration.Duration, _usage:String):stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration> {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_duration.duration(_name, _value, _usage);
    }
    /**
        TextVar defines a flag with a specified name, default value, and usage string.
        The argument p must be a pointer to a variable that will hold the value
        of the flag, and p must implement encoding.TextUnmarshaler.
        If the flag is used, the flag value will be passed to p's UnmarshalText method.
        The type of the default value must be the same as the type of p.
    **/
    static public inline function textVar(_p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _name:String, _value:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_textVar.textVar(_p, _name, _value, _usage);
    }
    /**
        Func defines a flag with the specified name and usage string.
        Each time the flag is seen, fn is called with the value of the flag.
        If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public inline function func(_name:String, _usage:String, _fn:stdgo.GoString -> stdgo.Error):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_func.func(_name, _usage, _fn);
    }
    /**
        BoolFunc defines a flag with the specified name and usage string without requiring values.
        Each time the flag is seen, fn is called with the value of the flag.
        If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public inline function boolFunc(_name:String, _usage:String, _fn:stdgo.GoString -> stdgo.Error):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_boolFunc.boolFunc(_name, _usage, _fn);
    }
    /**
        Var defines a flag with the specified name and usage string. The type and
        value of the flag are represented by the first argument, of type Value, which
        typically holds a user-defined implementation of Value. For instance, the
        caller could create a flag that turns a comma-separated string into a slice
        of strings by giving the slice the methods of Value; in particular, Set would
        decompose the comma-separated string into the slice.
    **/
    static public inline function var_(_value:Value, _name:String, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_var_.var_(_value, _name, _usage);
    }
    /**
        Parse parses the command-line flags from os.Args[1:]. Must be called
        after all flags are defined and before flags are accessed by the program.
    **/
    static public inline function parse():Void {
        stdgo._internal.flag.Flag_parse.parse();
    }
    /**
        Parsed reports whether the command-line flags have been parsed.
    **/
    static public inline function parsed():Bool {
        return stdgo._internal.flag.Flag_parsed.parsed();
    }
    /**
        NewFlagSet returns a new, empty flag set with the specified name and
        error handling property. If the name is not empty, it will be printed
        in the default usage message and in error messages.
    **/
    static public inline function newFlagSet(_name:String, _errorHandling:ErrorHandling):FlagSet {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_newFlagSet.newFlagSet(_name, _errorHandling);
    }
}
