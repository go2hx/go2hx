# Module: `stdgo.flag`

[(view library index)](../stdgo.md)


# Overview



Package flag implements command\-line flag parsing.  

## Usage



Define flags using flag.String\(\), Bool\(\), Int\(\), etc.  


This declares an integer flag, \-n, stored in the pointer nFlag, with type \*int:  

```
    	import "flag"
    	var nFlag = flag.Int("n", 1234, "help message for flag n")
```

If you like, you can bind the flag to a variable using the Var\(\) functions.  

```
    	var flagvar int
    	func init() {
    		flag.IntVar(&flagvar, "flagname", 1234, "help message for flagname")
}
```

Or you can create custom flags that satisfy the Value interface \(with
pointer receivers\) and couple them to flag parsing by  

```
    	flag.Var(&flagVal, "name", "help message for flagname")
```

For such flags, the default value is just the initial value of the variable.  


After all flags are defined, call  

```
    	flag.Parse()
```

to parse the command line into the defined flags.  


Flags may then be used directly. If you're using the flags themselves,
they are all pointers; if you bind to variables, they're values.  

```
    	fmt.Println("ip has value ", *ip)
    	fmt.Println("flagvar has value ", flagvar)
```

After parsing, the arguments following the flags are available as the
slice flag.Args\(\) or individually as flag.Arg\(i\).
The arguments are indexed from 0 through flag.NArg\(\)\-1.  

## Command line flag syntax



The following forms are permitted:  

```
    	-flag
    	--flag   // double dashes are also permitted
    	-flag=x
    	-flag x  // non-boolean flags only
```

One or two dashes may be used; they are equivalent.
The last form is not permitted for boolean flags because the
meaning of the command  

```
    	cmd -x *
```

where \* is a Unix shell wildcard, will change if there is a file
called 0, false, etc. You must use the \-flag=false form to turn
off a boolean flag.  


Flag parsing stops just before the first non\-flag argument
\("\-" is a non\-flag argument\) or after the terminator "\-\-".  


Integer flags accept 1234, 0664, 0x1234 and may be negative.
Boolean flags may be:  

```
    	1, 0, t, f, T, F, true, false, TRUE, FALSE, True, False
```

Duration flags accept any input valid for time.ParseDuration.  


The default set of command\-line flags is controlled by
top\-level functions.  The FlagSet type allows one to define
independent sets of flags, such as to implement subcommands
in a command\-line interface. The methods of FlagSet are
analogous to the top\-level functions for the command\-line
flag set.  

# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function arg(i:Int):String`](<#function-arg>)

- [`function args():Array<String>`](<#function-args>)

- [`function boolFunc(name:String, usage:String, fn:()):Void`](<#function-boolfunc>)

- [`function boolVar(p:stdgo.Pointer<Bool>, name:String, value:Bool, usage:String):Void`](<#function-boolvar>)

- [`function bool_(name:String, value:Bool, usage:String):stdgo.Pointer<Bool>`](<#function-bool_>)

- [`function defaultUsage():Void`](<#function-defaultusage>)

- [`function duration(name:String, value:stdgo._internal.time.Duration, usage:String):stdgo.Pointer<stdgo._internal.time.Duration>`](<#function-duration>)

- [`function durationVar(p:stdgo.Pointer<stdgo._internal.time.Duration>, name:String, value:stdgo._internal.time.Duration, usage:String):Void`](<#function-durationvar>)

- [`function float64(name:String, value:Float, usage:String):stdgo.Pointer<Float>`](<#function-float64>)

- [`function float64Var(p:stdgo.Pointer<Float>, name:String, value:Float, usage:String):Void`](<#function-float64var>)

- [`function func(name:String, usage:String, fn:()):Void`](<#function-func>)

- [`function get_commandLine():stdgo._internal.flag.FlagSet`](<#function-get_commandline>)

- [`function get_defaultUsage():():Void`](<#function-get_defaultusage>)

- [`function get_errHelp():stdgo.Error`](<#function-get_errhelp>)

- [`function get_usage():():Void`](<#function-get_usage>)

- [`function int64(name:String, value:haxe.Int64, usage:String):stdgo.Pointer<haxe.Int64>`](<#function-int64>)

- [`function int64Var(p:stdgo.Pointer<haxe.Int64>, name:String, value:haxe.Int64, usage:String):Void`](<#function-int64var>)

- [`function intVar(p:stdgo.Pointer<Int>, name:String, value:Int, usage:String):Void`](<#function-intvar>)

- [`function int_(name:String, value:Int, usage:String):stdgo.Pointer<Int>`](<#function-int_>)

- [`function lookup(name:String):stdgo.flag.Flag`](<#function-lookup>)

- [`function narg():Int`](<#function-narg>)

- [`function newFlagSet(name:String, errorHandling:stdgo.flag.ErrorHandling):stdgo.flag.FlagSet`](<#function-newflagset>)

- [`function nflag():Int`](<#function-nflag>)

- [`function parse():Void`](<#function-parse>)

- [`function parsed():Bool`](<#function-parsed>)

- [`function printDefaults():Void`](<#function-printdefaults>)

- [`function resetForTesting(usage:():Void):Void`](<#function-resetfortesting>)

- [`function set(name:String, value:String):stdgo.Error`](<#function-set>)

- [`function set_commandLine(v:stdgo._internal.flag.FlagSet):stdgo._internal.flag.FlagSet`](<#function-set_commandline>)

- [`function set_defaultUsage(v:():Void):():Void`](<#function-set_defaultusage>)

- [`function set_errHelp(v:stdgo.Error):stdgo.Error`](<#function-set_errhelp>)

- [`function set_usage(v:():Void):():Void`](<#function-set_usage>)

- [`function string(name:String, value:String, usage:String):stdgo.Pointer<String>`](<#function-string>)

- [`function stringVar(p:stdgo.Pointer<String>, name:String, value:String, usage:String):Void`](<#function-stringvar>)

- [`function textVar(p:stdgo._internal.encoding.TextUnmarshaler, name:String, value:stdgo._internal.encoding.TextMarshaler, usage:String):Void`](<#function-textvar>)

- [`function uint(name:String, value:UInt, usage:String):stdgo.Pointer<UInt>`](<#function-uint>)

- [`function uint64(name:String, value:haxe.UInt64, usage:String):stdgo.Pointer<haxe.UInt64>`](<#function-uint64>)

- [`function uint64Var(p:stdgo.Pointer<haxe.UInt64>, name:String, value:haxe.UInt64, usage:String):Void`](<#function-uint64var>)

- [`function uintVar(p:stdgo.Pointer<UInt>, name:String, value:UInt, usage:String):Void`](<#function-uintvar>)

- [`function unquoteUsage(flag:stdgo.flag.Flag):stdgo.Tuple<String, String>`](<#function-unquoteusage>)

- [`function usage():Void`](<#function-usage>)

- [`function var_(value:stdgo.flag.Value, name:String, usage:String):Void`](<#function-var_>)

- [`function visit(fn:()):Void`](<#function-visit>)

- [`function visitAll(fn:()):Void`](<#function-visitall>)

- [typedef ErrorHandling](<#typedef-errorhandling>)

- [typedef Flag](<#typedef-flag>)

- [typedef FlagSet](<#typedef-flagset>)

- [typedef FlagSet\_asInterface](<#typedef-flagset_asinterface>)

- [typedef FlagSet\_static\_extension](<#typedef-flagset_static_extension>)

- [typedef Getter](<#typedef-getter>)

- [typedef Getter\_static\_extension](<#typedef-getter_static_extension>)

- [typedef T\_boolFlag](<#typedef-t_boolflag>)

- [typedef T\_boolFlag\_static\_extension](<#typedef-t_boolflag_static_extension>)

- [typedef T\_boolFuncValue](<#typedef-t_boolfuncvalue>)

- [typedef T\_boolFuncValue\_asInterface](<#typedef-t_boolfuncvalue_asinterface>)

- [typedef T\_boolFuncValue\_static\_extension](<#typedef-t_boolfuncvalue_static_extension>)

- [typedef T\_boolValue](<#typedef-t_boolvalue>)

- [typedef T\_boolValue\_asInterface](<#typedef-t_boolvalue_asinterface>)

- [typedef T\_boolValue\_static\_extension](<#typedef-t_boolvalue_static_extension>)

- [typedef T\_durationValue](<#typedef-t_durationvalue>)

- [typedef T\_durationValue\_asInterface](<#typedef-t_durationvalue_asinterface>)

- [typedef T\_durationValue\_static\_extension](<#typedef-t_durationvalue_static_extension>)

- [typedef T\_float64Value](<#typedef-t_float64value>)

- [typedef T\_float64Value\_asInterface](<#typedef-t_float64value_asinterface>)

- [typedef T\_float64Value\_static\_extension](<#typedef-t_float64value_static_extension>)

- [typedef T\_funcValue](<#typedef-t_funcvalue>)

- [typedef T\_funcValue\_asInterface](<#typedef-t_funcvalue_asinterface>)

- [typedef T\_funcValue\_static\_extension](<#typedef-t_funcvalue_static_extension>)

- [typedef T\_int64Value](<#typedef-t_int64value>)

- [typedef T\_int64Value\_asInterface](<#typedef-t_int64value_asinterface>)

- [typedef T\_int64Value\_static\_extension](<#typedef-t_int64value_static_extension>)

- [typedef T\_intValue](<#typedef-t_intvalue>)

- [typedef T\_intValue\_asInterface](<#typedef-t_intvalue_asinterface>)

- [typedef T\_intValue\_static\_extension](<#typedef-t_intvalue_static_extension>)

- [typedef T\_stringValue](<#typedef-t_stringvalue>)

- [typedef T\_stringValue\_asInterface](<#typedef-t_stringvalue_asinterface>)

- [typedef T\_stringValue\_static\_extension](<#typedef-t_stringvalue_static_extension>)

- [typedef T\_textValue](<#typedef-t_textvalue>)

- [typedef T\_textValue\_asInterface](<#typedef-t_textvalue_asinterface>)

- [typedef T\_textValue\_static\_extension](<#typedef-t_textvalue_static_extension>)

- [typedef T\_uint64Value](<#typedef-t_uint64value>)

- [typedef T\_uint64Value\_asInterface](<#typedef-t_uint64value_asinterface>)

- [typedef T\_uint64Value\_static\_extension](<#typedef-t_uint64value_static_extension>)

- [typedef T\_uintValue](<#typedef-t_uintvalue>)

- [typedef T\_uintValue\_asInterface](<#typedef-t_uintvalue_asinterface>)

- [typedef T\_uintValue\_static\_extension](<#typedef-t_uintvalue_static_extension>)

- [typedef Value](<#typedef-value>)

- [typedef Value\_static\_extension](<#typedef-value_static_extension>)

# Constants


```haxe
import stdgo.flag.Flag
```


```haxe
final continueOnError:stdgo._internal.flag.ErrorHandling = stdgo._internal.flag.Flag.continueOnError
```


```haxe
final exitOnError:stdgo._internal.flag.ErrorHandling = stdgo._internal.flag.Flag.exitOnError
```


```haxe
final panicOnError:stdgo._internal.flag.ErrorHandling = stdgo._internal.flag.Flag.panicOnError
```


# Variables


```haxe
import stdgo.flag.Flag
```


```haxe
var commandLine:stdgo._internal.flag.FlagSet
```


```haxe
var errHelp:stdgo.Error
```


# Functions


```haxe
import stdgo.flag.Flag
```


## function arg


```haxe
function arg(i:Int):String
```



Arg returns the i'th command\-line argument. Arg\(0\) is the first remaining argument
after flags have been processed. Arg returns an empty string if the
requested element does not exist.  

[\(view code\)](<./Flag.hx#L189>)


## function args


```haxe
function args():Array<String>
```



Args returns the non\-flag command\-line arguments.  

[\(view code\)](<./Flag.hx#L197>)


## function boolFunc


```haxe
function boolFunc(name:String, usage:String, fn:()):Void
```



BoolFunc defines a flag with the specified name and usage string without requiring values.
Each time the flag is seen, fn is called with the value of the flag.
If fn returns a non\-nil error, it will be treated as a flag value parsing error.  

[\(view code\)](<./Flag.hx#L299>)


## function boolVar


```haxe
function boolVar(p:stdgo.Pointer<Bool>, name:String, value:Bool, usage:String):Void
```



BoolVar defines a bool flag with specified name, default value, and usage string.
The argument p points to a bool variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L202>)


## function bool\_


```haxe
function bool_(name:String, value:Bool, usage:String):stdgo.Pointer<Bool>
```



Bool defines a bool flag with specified name, default value, and usage string.
The return value is the address of a bool variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L207>)


## function defaultUsage


```haxe
function defaultUsage():Void
```


[\(view code\)](<./Flag.hx>)


## function duration


```haxe
function duration(name:String, value:stdgo._internal.time.Duration, usage:String):stdgo.Pointer<stdgo._internal.time.Duration>
```



Duration defines a time.Duration flag with specified name, default value, and usage string.
The return value is the address of a time.Duration variable that stores the value of the flag.
The flag accepts a value acceptable to time.ParseDuration.  

[\(view code\)](<./Flag.hx#L279>)


## function durationVar


```haxe
function durationVar(p:stdgo.Pointer<stdgo._internal.time.Duration>, name:String, value:stdgo._internal.time.Duration, usage:String):Void
```



DurationVar defines a time.Duration flag with specified name, default value, and usage string.
The argument p points to a time.Duration variable in which to store the value of the flag.
The flag accepts a value acceptable to time.ParseDuration.  

[\(view code\)](<./Flag.hx#L273>)


## function float64


```haxe
function float64(name:String, value:Float, usage:String):stdgo.Pointer<Float>
```



Float64 defines a float64 flag with specified name, default value, and usage string.
The return value is the address of a float64 variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L267>)


## function float64Var


```haxe
function float64Var(p:stdgo.Pointer<Float>, name:String, value:Float, usage:String):Void
```



Float64Var defines a float64 flag with specified name, default value, and usage string.
The argument p points to a float64 variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L262>)


## function func


```haxe
function func(name:String, usage:String, fn:()):Void
```



Func defines a flag with the specified name and usage string.
Each time the flag is seen, fn is called with the value of the flag.
If fn returns a non\-nil error, it will be treated as a flag value parsing error.  

[\(view code\)](<./Flag.hx#L293>)


## function get\_commandLine


```haxe
function get_commandLine():stdgo._internal.flag.FlagSet
```


[\(view code\)](<./Flag.hx#L90>)


## function get\_defaultUsage


```haxe
function get_defaultUsage():():Void
```


[\(view code\)](<./Flag.hx#L96>)


## function get\_errHelp


```haxe
function get_errHelp():stdgo.Error
```


[\(view code\)](<./Flag.hx#L87>)


## function get\_usage


```haxe
function get_usage():():Void
```


[\(view code\)](<./Flag.hx#L93>)


## function int64


```haxe
function int64(name:String, value:haxe.Int64, usage:String):stdgo.Pointer<haxe.Int64>
```



Int64 defines an int64 flag with specified name, default value, and usage string.
The return value is the address of an int64 variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L227>)


## function int64Var


```haxe
function int64Var(p:stdgo.Pointer<haxe.Int64>, name:String, value:haxe.Int64, usage:String):Void
```



Int64Var defines an int64 flag with specified name, default value, and usage string.
The argument p points to an int64 variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L222>)


## function intVar


```haxe
function intVar(p:stdgo.Pointer<Int>, name:String, value:Int, usage:String):Void
```



IntVar defines an int flag with specified name, default value, and usage string.
The argument p points to an int variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L212>)


## function int\_


```haxe
function int_(name:String, value:Int, usage:String):stdgo.Pointer<Int>
```



Int defines an int flag with specified name, default value, and usage string.
The return value is the address of an int variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L217>)


## function lookup


```haxe
function lookup(name:String):stdgo.flag.Flag
```



Lookup returns the Flag structure of the named command\-line flag,
returning nil if none exists.  

[\(view code\)](<./Flag.hx#L138>)


## function narg


```haxe
function narg():Int
```



NArg is the number of arguments remaining after flags have been processed.  

[\(view code\)](<./Flag.hx#L193>)


## function newFlagSet


```haxe
function newFlagSet(name:String, errorHandling:stdgo.flag.ErrorHandling):stdgo.flag.FlagSet
```



NewFlagSet returns a new, empty flag set with the specified name and
error handling property. If the name is not empty, it will be printed
in the default usage message and in error messages.  

[\(view code\)](<./Flag.hx#L323>)


## function nflag


```haxe
function nflag():Int
```



NFlag returns the number of command\-line flags that have been set.  

[\(view code\)](<./Flag.hx#L183>)


## function parse


```haxe
function parse():Void
```



Parse parses the command\-line flags from os.Args\[1:\]. Must be called
after all flags are defined and before flags are accessed by the program.  

[\(view code\)](<./Flag.hx#L313>)


## function parsed


```haxe
function parsed():Bool
```



Parsed reports whether the command\-line flags have been parsed.  

[\(view code\)](<./Flag.hx#L317>)


## function printDefaults


```haxe
function printDefaults():Void
```



PrintDefaults prints, to standard error unless configured otherwise,
a usage message showing the default settings of all defined
command\-line flags.
For an integer valued flag x, the default output has the form  

```
	-x int
		usage-message-for-x (default 7)
```

The usage message will appear on a separate line for anything but
a bool flag with a one\-byte name. For bool flags, the type is
omitted and if the flag name is one byte the usage message appears
on the same line. The parenthetical default is omitted if the
default is the zero value for the type. The listed type, here int,
can be changed by placing a back\-quoted name in the flag's usage
string; the first such item in the message is taken to be a parameter
name to show in the message and the back quotes are stripped from
the message when displayed. For instance, given  

```
	flag.String("I", "", "search `directory` for include files")
```

the output will be  

```
	-I directory
		search directory for include files.
```

To change the destination for flag messages, call CommandLine.SetOutput.  

[\(view code\)](<./Flag.hx#L179>)


## function resetForTesting


```haxe
function resetForTesting(usage:():Void):Void
```



ResetForTesting clears all flag state and sets the usage function as directed.
After calling ResetForTesting, parse errors in flag handling will not
exit the program.  

[\(view code\)](<./Flag.hx#L123>)


## function set


```haxe
function set(name:String, value:String):stdgo.Error
```



Set sets the value of the named command\-line flag.  

[\(view code\)](<./Flag.hx#L142>)


## function set\_commandLine


```haxe
function set_commandLine(v:stdgo._internal.flag.FlagSet):stdgo._internal.flag.FlagSet
```


[\(view code\)](<./Flag.hx#L91>)


## function set\_defaultUsage


```haxe
function set_defaultUsage(v:():Void):():Void
```


[\(view code\)](<./Flag.hx#L97>)


## function set\_errHelp


```haxe
function set_errHelp(v:stdgo.Error):stdgo.Error
```


[\(view code\)](<./Flag.hx#L88>)


## function set\_usage


```haxe
function set_usage(v:():Void):():Void
```


[\(view code\)](<./Flag.hx#L94>)


## function string


```haxe
function string(name:String, value:String, usage:String):stdgo.Pointer<String>
```



String defines a string flag with specified name, default value, and usage string.
The return value is the address of a string variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L257>)


## function stringVar


```haxe
function stringVar(p:stdgo.Pointer<String>, name:String, value:String, usage:String):Void
```



StringVar defines a string flag with specified name, default value, and usage string.
The argument p points to a string variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L252>)


## function textVar


```haxe
function textVar(p:stdgo._internal.encoding.TextUnmarshaler, name:String, value:stdgo._internal.encoding.TextMarshaler, usage:String):Void
```



TextVar defines a flag with a specified name, default value, and usage string.
The argument p must be a pointer to a variable that will hold the value
of the flag, and p must implement encoding.TextUnmarshaler.
If the flag is used, the flag value will be passed to p's UnmarshalText method.
The type of the default value must be the same as the type of p.  

[\(view code\)](<./Flag.hx#L287>)


## function uint


```haxe
function uint(name:String, value:UInt, usage:String):stdgo.Pointer<UInt>
```



Uint defines a uint flag with specified name, default value, and usage string.
The return value is the address of a uint variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L237>)


## function uint64


```haxe
function uint64(name:String, value:haxe.UInt64, usage:String):stdgo.Pointer<haxe.UInt64>
```



Uint64 defines a uint64 flag with specified name, default value, and usage string.
The return value is the address of a uint64 variable that stores the value of the flag.  

[\(view code\)](<./Flag.hx#L247>)


## function uint64Var


```haxe
function uint64Var(p:stdgo.Pointer<haxe.UInt64>, name:String, value:haxe.UInt64, usage:String):Void
```



Uint64Var defines a uint64 flag with specified name, default value, and usage string.
The argument p points to a uint64 variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L242>)


## function uintVar


```haxe
function uintVar(p:stdgo.Pointer<UInt>, name:String, value:UInt, usage:String):Void
```



UintVar defines a uint flag with specified name, default value, and usage string.
The argument p points to a uint variable in which to store the value of the flag.  

[\(view code\)](<./Flag.hx#L232>)


## function unquoteUsage


```haxe
function unquoteUsage(flag:stdgo.flag.Flag):stdgo.Tuple<String, String>
```



UnquoteUsage extracts a back\-quoted name from the usage
string for a flag and returns it and the un\-quoted usage.
Given "a \`name\` to show" it returns \("name", "a name to show"\).
If there are no back quotes, the name is an educated guess of the
type of the flag's value, or the empty string if the flag is boolean.  

[\(view code\)](<./Flag.hx#L150>)


## function usage


```haxe
function usage():Void
```


[\(view code\)](<./Flag.hx>)


## function var\_


```haxe
function var_(value:stdgo.flag.Value, name:String, usage:String):Void
```



Var defines a flag with the specified name and usage string. The type and
value of the flag are represented by the first argument, of type Value, which
typically holds a user\-defined implementation of Value. For instance, the
caller could create a flag that turns a comma\-separated string into a slice
of strings by giving the slice the methods of Value; in particular, Set would
decompose the comma\-separated string into the slice.  

[\(view code\)](<./Flag.hx#L308>)


## function visit


```haxe
function visit(fn:()):Void
```



Visit visits the command\-line flags in lexicographical order, calling fn
for each. It visits only those flags that have been set.  

[\(view code\)](<./Flag.hx#L133>)


## function visitAll


```haxe
function visitAll(fn:()):Void
```



VisitAll visits the command\-line flags in lexicographical order, calling
fn for each. It visits all flags, even those not set.  

[\(view code\)](<./Flag.hx#L128>)


# Typedefs


```haxe
import stdgo.flag.*
```


## typedef ErrorHandling


```haxe
typedef ErrorHandling = stdgo._internal.flag.ErrorHandling;
```


## typedef Flag


```haxe
typedef Flag = Dynamic;
```


## typedef FlagSet


```haxe
typedef FlagSet = Dynamic;
```


## typedef FlagSet\_asInterface


```haxe
typedef FlagSet_asInterface = Dynamic;
```


## typedef FlagSet\_static\_extension


```haxe
typedef FlagSet_static_extension = Dynamic;
```


## typedef Getter


```haxe
typedef Getter = stdgo._internal.flag.Getter;
```


## typedef Getter\_static\_extension


```haxe
typedef Getter_static_extension = Dynamic;
```


## typedef T\_boolFlag


```haxe
typedef T_boolFlag = stdgo._internal.flag.T_boolFlag;
```


## typedef T\_boolFlag\_static\_extension


```haxe
typedef T_boolFlag_static_extension = Dynamic;
```


## typedef T\_boolFuncValue


```haxe
typedef T_boolFuncValue = stdgo._internal.flag.T_boolFuncValue;
```


## typedef T\_boolFuncValue\_asInterface


```haxe
typedef T_boolFuncValue_asInterface = Dynamic;
```


## typedef T\_boolFuncValue\_static\_extension


```haxe
typedef T_boolFuncValue_static_extension = Dynamic;
```


## typedef T\_boolValue


```haxe
typedef T_boolValue = stdgo._internal.flag.T_boolValue;
```


## typedef T\_boolValue\_asInterface


```haxe
typedef T_boolValue_asInterface = Dynamic;
```


## typedef T\_boolValue\_static\_extension


```haxe
typedef T_boolValue_static_extension = Dynamic;
```


## typedef T\_durationValue


```haxe
typedef T_durationValue = stdgo._internal.flag.T_durationValue;
```


## typedef T\_durationValue\_asInterface


```haxe
typedef T_durationValue_asInterface = Dynamic;
```


## typedef T\_durationValue\_static\_extension


```haxe
typedef T_durationValue_static_extension = Dynamic;
```


## typedef T\_float64Value


```haxe
typedef T_float64Value = stdgo._internal.flag.T_float64Value;
```


## typedef T\_float64Value\_asInterface


```haxe
typedef T_float64Value_asInterface = Dynamic;
```


## typedef T\_float64Value\_static\_extension


```haxe
typedef T_float64Value_static_extension = Dynamic;
```


## typedef T\_funcValue


```haxe
typedef T_funcValue = stdgo._internal.flag.T_funcValue;
```


## typedef T\_funcValue\_asInterface


```haxe
typedef T_funcValue_asInterface = Dynamic;
```


## typedef T\_funcValue\_static\_extension


```haxe
typedef T_funcValue_static_extension = Dynamic;
```


## typedef T\_int64Value


```haxe
typedef T_int64Value = stdgo._internal.flag.T_int64Value;
```


## typedef T\_int64Value\_asInterface


```haxe
typedef T_int64Value_asInterface = Dynamic;
```


## typedef T\_int64Value\_static\_extension


```haxe
typedef T_int64Value_static_extension = Dynamic;
```


## typedef T\_intValue


```haxe
typedef T_intValue = stdgo._internal.flag.T_intValue;
```


## typedef T\_intValue\_asInterface


```haxe
typedef T_intValue_asInterface = Dynamic;
```


## typedef T\_intValue\_static\_extension


```haxe
typedef T_intValue_static_extension = Dynamic;
```


## typedef T\_stringValue


```haxe
typedef T_stringValue = stdgo._internal.flag.T_stringValue;
```


## typedef T\_stringValue\_asInterface


```haxe
typedef T_stringValue_asInterface = Dynamic;
```


## typedef T\_stringValue\_static\_extension


```haxe
typedef T_stringValue_static_extension = Dynamic;
```


## typedef T\_textValue


```haxe
typedef T_textValue = Dynamic;
```


## typedef T\_textValue\_asInterface


```haxe
typedef T_textValue_asInterface = Dynamic;
```


## typedef T\_textValue\_static\_extension


```haxe
typedef T_textValue_static_extension = Dynamic;
```


## typedef T\_uint64Value


```haxe
typedef T_uint64Value = stdgo._internal.flag.T_uint64Value;
```


## typedef T\_uint64Value\_asInterface


```haxe
typedef T_uint64Value_asInterface = Dynamic;
```


## typedef T\_uint64Value\_static\_extension


```haxe
typedef T_uint64Value_static_extension = Dynamic;
```


## typedef T\_uintValue


```haxe
typedef T_uintValue = stdgo._internal.flag.T_uintValue;
```


## typedef T\_uintValue\_asInterface


```haxe
typedef T_uintValue_asInterface = Dynamic;
```


## typedef T\_uintValue\_static\_extension


```haxe
typedef T_uintValue_static_extension = Dynamic;
```


## typedef Value


```haxe
typedef Value = stdgo._internal.flag.Value;
```


## typedef Value\_static\_extension


```haxe
typedef Value_static_extension = Dynamic;
```


