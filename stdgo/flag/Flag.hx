package stdgo.flag;
final continueOnError : stdgo._internal.flag.Flag.ErrorHandling = stdgo._internal.flag.Flag.continueOnError;
final exitOnError = stdgo._internal.flag.Flag.exitOnError;
final panicOnError = stdgo._internal.flag.Flag.panicOnError;
var errHelp(get, set) : stdgo.Error;
private function get_errHelp():stdgo.Error return stdgo._internal.flag.Flag.errHelp;
private function set_errHelp(v:stdgo.Error):stdgo.Error {
        stdgo._internal.flag.Flag.errHelp = v;
        return v;
    }
var commandLine(get, set) : stdgo._internal.flag.Flag.FlagSet;
private function get_commandLine():stdgo._internal.flag.Flag.FlagSet return stdgo._internal.flag.Flag.commandLine;
private function set_commandLine(v:stdgo._internal.flag.Flag.FlagSet):stdgo._internal.flag.Flag.FlagSet {
        stdgo._internal.flag.Flag.commandLine = v;
        return v;
    }
var usage(get, set) : () -> Void;
private function get_usage():() -> Void return () -> stdgo._internal.flag.Flag.usage();
private function set_usage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag.usage = v;
        return v;
    }
var defaultUsage(get, set) : () -> Void;
private function get_defaultUsage():() -> Void return () -> stdgo._internal.flag.Flag.defaultUsage();
private function set_defaultUsage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag.defaultUsage = v;
        return v;
    }
class T_boolFlag_static_extension {
    static public function isBoolFlag(t:T_boolFlag):Bool {
        return stdgo._internal.flag.Flag.T_boolFlag_static_extension.isBoolFlag(t);
    }
}
typedef T_boolFlag = stdgo._internal.flag.Flag.T_boolFlag;
class Value_static_extension {
    static public function set(t:Value, 0:String):stdgo.Error {
        return stdgo._internal.flag.Flag.Value_static_extension.set(t, 0);
    }
    static public function string(t:Value):String {
        return stdgo._internal.flag.Flag.Value_static_extension.string(t);
    }
}
typedef Value = stdgo._internal.flag.Flag.Value;
class Getter_static_extension {
    static public function get(t:Getter):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.Getter_static_extension.get(t);
    }
}
typedef Getter = stdgo._internal.flag.Flag.Getter;
@:structInit @:private @:using(stdgo.flag.Flag.T_textValue_static_extension) abstract T_textValue(stdgo._internal.flag.Flag.T_textValue) from stdgo._internal.flag.Flag.T_textValue to stdgo._internal.flag.Flag.T_textValue {
    public var _p(get, set) : stdgo._internal.encoding.Encoding.TextUnmarshaler;
    function get__p():stdgo._internal.encoding.Encoding.TextUnmarshaler return this._p;
    function set__p(v:stdgo._internal.encoding.Encoding.TextUnmarshaler):stdgo._internal.encoding.Encoding.TextUnmarshaler {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.encoding.Encoding.TextUnmarshaler) this = new stdgo._internal.flag.Flag.T_textValue(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.flag.Flag.Flag_Set_static_extension) abstract FlagSet(stdgo._internal.flag.Flag.FlagSet) from stdgo._internal.flag.Flag.FlagSet to stdgo._internal.flag.Flag.FlagSet {
    public var usage(get, set) : () -> Void;
    function get_usage():() -> Void return () -> this.usage();
    function set_usage(v:() -> Void):() -> Void {
        this.usage = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var _parsed(get, set) : Bool;
    function get__parsed():Bool return this._parsed;
    function set__parsed(v:Bool):Bool {
        this._parsed = v;
        return v;
    }
    public var _actual(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>;
    function get__actual():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> return this._actual;
    function set__actual(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> {
        this._actual = v;
        return v;
    }
    public var _formal(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>;
    function get__formal():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> return this._formal;
    function set__formal(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>> {
        this._formal = v;
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _errorHandling(get, set) : stdgo._internal.flag.Flag.ErrorHandling;
    function get__errorHandling():stdgo._internal.flag.Flag.ErrorHandling return this._errorHandling;
    function set__errorHandling(v:stdgo._internal.flag.Flag.ErrorHandling):stdgo._internal.flag.Flag.ErrorHandling {
        this._errorHandling = v;
        return v;
    }
    public var _output(get, set) : stdgo._internal.io.Io.Writer;
    function get__output():stdgo._internal.io.Io.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._output = v;
        return v;
    }
    public var _undef(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__undef():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._undef;
    function set__undef(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._undef = v;
        return v;
    }
    public function new(?usage:() -> Void, ?_name:String, ?_parsed:Bool, ?_actual:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>, ?_formal:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag.Flag>>, ?_args:Array<String>, ?_errorHandling:stdgo._internal.flag.Flag.ErrorHandling, ?_output:stdgo._internal.io.Io.Writer, ?_undef:stdgo.GoMap<stdgo.GoString, stdgo.GoString>) this = new stdgo._internal.flag.Flag.FlagSet(usage, _name, _parsed, _actual, _formal, ([for (i in _args) i] : stdgo.Slice<stdgo.GoString>), _errorHandling, _output, _undef);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract Flag_(stdgo._internal.flag.Flag.Flag) from stdgo._internal.flag.Flag.Flag to stdgo._internal.flag.Flag.Flag {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var usage(get, set) : String;
    function get_usage():String return this.usage;
    function set_usage(v:String):String {
        this.usage = v;
        return v;
    }
    public var value(get, set) : stdgo._internal.flag.Flag.Value;
    function get_value():stdgo._internal.flag.Flag.Value return this.value;
    function set_value(v:stdgo._internal.flag.Flag.Value):stdgo._internal.flag.Flag.Value {
        this.value = v;
        return v;
    }
    public var defValue(get, set) : String;
    function get_defValue():String return this.defValue;
    function set_defValue(v:String):String {
        this.defValue = v;
        return v;
    }
    public function new(?name:String, ?usage:String, ?value:stdgo._internal.flag.Flag.Value, ?defValue:String) this = new stdgo._internal.flag.Flag.Flag(name, usage, value, defValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
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
class T_textValue_static_extension {
    static public function string(v:T_textValue):String {
        return stdgo._internal.flag.Flag.T_textValue_static_extension.string(v);
    }
    static public function get(v:T_textValue):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_textValue_static_extension.get(v);
    }
    static public function set(v:T_textValue, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_textValue_static_extension.set(v, s);
    }
}
class Flag_Set_static_extension {
    static public function init(f:FlagSet, name:String, errorHandling:ErrorHandling):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.init(f, name, errorHandling);
    }
    static public function parsed(f:FlagSet):Bool {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.parsed(f);
    }
    static public function parse(f:FlagSet, arguments:Array<String>):stdgo.Error {
        final arguments = ([for (i in arguments) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.flag.Flag.FlagSet_static_extension.parse(f, arguments);
    }
    static public function _parseOne(f:FlagSet):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.flag.Flag.FlagSet_static_extension._parseOne(f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _usage(f:FlagSet):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension._usage(f);
    }
    static public function _failf(f:FlagSet, format:String, a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        return stdgo._internal.flag.Flag.FlagSet_static_extension._failf(f, format, ...[for (i in a) i]);
    }
    static public function _sprintf(f:FlagSet, format:String, a:haxe.Rest<stdgo.AnyInterface>):String {
        return stdgo._internal.flag.Flag.FlagSet_static_extension._sprintf(f, format, ...[for (i in a) i]);
    }
    static public function var_(f:FlagSet, value:Value, name:String, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.var_(f, value, name, usage);
    }
    static public function boolFunc(f:FlagSet, name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.FlagSet_static_extension.boolFunc(f, name, usage, fn);
    }
    static public function func(f:FlagSet, name:String, usage:String, fn:stdgo.GoString -> stdgo.Error):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.FlagSet_static_extension.func(f, name, usage, fn);
    }
    static public function textVar(f:FlagSet, p:stdgo._internal.encoding.Encoding.TextUnmarshaler, name:String, value:stdgo._internal.encoding.Encoding.TextMarshaler, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.textVar(f, p, name, value, usage);
    }
    static public function duration(f:FlagSet, name:String, value:stdgo._internal.time.Time.Duration, usage:String):stdgo.Pointer<stdgo._internal.time.Time.Duration> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.duration(f, name, value, usage);
    }
    static public function durationVar(f:FlagSet, p:stdgo.Pointer<stdgo._internal.time.Time.Duration>, name:String, value:stdgo._internal.time.Time.Duration, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.durationVar(f, p, name, value, usage);
    }
    static public function float64(f:FlagSet, name:String, value:StdTypes.Float, usage:String):stdgo.Pointer<StdTypes.Float> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.float64(f, name, value, usage);
    }
    static public function float64Var(f:FlagSet, p:stdgo.Pointer<StdTypes.Float>, name:String, value:StdTypes.Float, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.float64Var(f, p, name, value, usage);
    }
    static public function string(f:FlagSet, name:String, value:String, usage:String):stdgo.Pointer<String> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.string(f, name, value, usage);
    }
    static public function stringVar(f:FlagSet, p:stdgo.Pointer<String>, name:String, value:String, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.stringVar(f, p, name, value, usage);
    }
    static public function uint64(f:FlagSet, name:String, value:haxe.UInt64, usage:String):stdgo.Pointer<haxe.UInt64> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.uint64(f, name, value, usage);
    }
    static public function uint64Var(f:FlagSet, p:stdgo.Pointer<haxe.UInt64>, name:String, value:haxe.UInt64, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.uint64Var(f, p, name, value, usage);
    }
    static public function uint(f:FlagSet, name:String, value:std.UInt, usage:String):stdgo.Pointer<std.UInt> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.uint(f, name, value, usage);
    }
    static public function uintVar(f:FlagSet, p:stdgo.Pointer<std.UInt>, name:String, value:std.UInt, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.uintVar(f, p, name, value, usage);
    }
    static public function int64(f:FlagSet, name:String, value:haxe.Int64, usage:String):stdgo.Pointer<haxe.Int64> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.int64(f, name, value, usage);
    }
    static public function int64Var(f:FlagSet, p:stdgo.Pointer<haxe.Int64>, name:String, value:haxe.Int64, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.int64Var(f, p, name, value, usage);
    }
    static public function int_(f:FlagSet, name:String, value:StdTypes.Int, usage:String):stdgo.Pointer<StdTypes.Int> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.int_(f, name, value, usage);
    }
    static public function intVar(f:FlagSet, p:stdgo.Pointer<StdTypes.Int>, name:String, value:StdTypes.Int, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.intVar(f, p, name, value, usage);
    }
    static public function bool_(f:FlagSet, name:String, value:Bool, usage:String):stdgo.Pointer<Bool> {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.bool_(f, name, value, usage);
    }
    static public function boolVar(f:FlagSet, p:stdgo.Pointer<Bool>, name:String, value:Bool, usage:String):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.boolVar(f, p, name, value, usage);
    }
    static public function args(f:FlagSet):Array<String> {
        return [for (i in stdgo._internal.flag.Flag.FlagSet_static_extension.args(f)) i];
    }
    static public function narg(f:FlagSet):StdTypes.Int {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.narg(f);
    }
    static public function arg(f:FlagSet, i:StdTypes.Int):String {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.arg(f, i);
    }
    static public function nflag(f:FlagSet):StdTypes.Int {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.nflag(f);
    }
    static public function _defaultUsage(f:FlagSet):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension._defaultUsage(f);
    }
    static public function printDefaults(f:FlagSet):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.printDefaults(f);
    }
    static public function _set(f:FlagSet, name:String, value:String):stdgo.Error {
        return stdgo._internal.flag.Flag.FlagSet_static_extension._set(f, name, value);
    }
    static public function set(f:FlagSet, name:String, value:String):stdgo.Error {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.set(f, name, value);
    }
    static public function lookup(f:FlagSet, name:String):Flag_ {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.lookup(f, name);
    }
    static public function visit(f:FlagSet, fn:stdgo.Ref<Flag> -> Void):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.FlagSet_static_extension.visit(f, fn);
    }
    static public function visitAll(f:FlagSet, fn:stdgo.Ref<Flag> -> Void):Void {
        final fn = fn;
        stdgo._internal.flag.Flag.FlagSet_static_extension.visitAll(f, fn);
    }
    static public function setOutput(f:FlagSet, output:stdgo._internal.io.Io.Writer):Void {
        stdgo._internal.flag.Flag.FlagSet_static_extension.setOutput(f, output);
    }
    static public function errorHandling(f:FlagSet):ErrorHandling {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.errorHandling(f);
    }
    static public function name(f:FlagSet):String {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.name(f);
    }
    static public function output(f:FlagSet):stdgo._internal.io.Io.Writer {
        return stdgo._internal.flag.Flag.FlagSet_static_extension.output(f);
    }
}
class T_boolValue_static_extension {
    static public function isBoolFlag(___:T_boolValue, b:stdgo.Pointer<T_boolValue>):Bool {
        return stdgo._internal.flag.Flag.T_boolValue_static_extension.isBoolFlag(___, b);
    }
    static public function string(___:T_boolValue, b:stdgo.Pointer<T_boolValue>):String {
        return stdgo._internal.flag.Flag.T_boolValue_static_extension.string(___, b);
    }
    static public function get(___:T_boolValue, b:stdgo.Pointer<T_boolValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_boolValue_static_extension.get(___, b);
    }
    static public function set(___:T_boolValue, b:stdgo.Pointer<T_boolValue>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_boolValue_static_extension.set(___, b, s);
    }
}
class T_intValue_static_extension {
    static public function string(___:T_intValue, i:stdgo.Pointer<T_intValue>):String {
        return stdgo._internal.flag.Flag.T_intValue_static_extension.string(___, i);
    }
    static public function get(___:T_intValue, i:stdgo.Pointer<T_intValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_intValue_static_extension.get(___, i);
    }
    static public function set(___:T_intValue, i:stdgo.Pointer<T_intValue>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_intValue_static_extension.set(___, i, s);
    }
}
class T_int64Value_static_extension {
    static public function string(___:T_int64Value, i:stdgo.Pointer<T_int64Value>):String {
        return stdgo._internal.flag.Flag.T_int64Value_static_extension.string(___, i);
    }
    static public function get(___:T_int64Value, i:stdgo.Pointer<T_int64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_int64Value_static_extension.get(___, i);
    }
    static public function set(___:T_int64Value, i:stdgo.Pointer<T_int64Value>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_int64Value_static_extension.set(___, i, s);
    }
}
class T_uintValue_static_extension {
    static public function string(___:T_uintValue, i:stdgo.Pointer<T_uintValue>):String {
        return stdgo._internal.flag.Flag.T_uintValue_static_extension.string(___, i);
    }
    static public function get(___:T_uintValue, i:stdgo.Pointer<T_uintValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_uintValue_static_extension.get(___, i);
    }
    static public function set(___:T_uintValue, i:stdgo.Pointer<T_uintValue>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_uintValue_static_extension.set(___, i, s);
    }
}
class T_uint64Value_static_extension {
    static public function string(___:T_uint64Value, i:stdgo.Pointer<T_uint64Value>):String {
        return stdgo._internal.flag.Flag.T_uint64Value_static_extension.string(___, i);
    }
    static public function get(___:T_uint64Value, i:stdgo.Pointer<T_uint64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_uint64Value_static_extension.get(___, i);
    }
    static public function set(___:T_uint64Value, i:stdgo.Pointer<T_uint64Value>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_uint64Value_static_extension.set(___, i, s);
    }
}
class T_stringValue_static_extension {
    static public function string(___:T_stringValue, s:stdgo.Pointer<T_stringValue>):String {
        return stdgo._internal.flag.Flag.T_stringValue_static_extension.string(___, s);
    }
    static public function get(___:T_stringValue, s:stdgo.Pointer<T_stringValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_stringValue_static_extension.get(___, s);
    }
    static public function set(___:T_stringValue, s:stdgo.Pointer<T_stringValue>, val:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_stringValue_static_extension.set(___, s, val);
    }
}
class T_float64Value_static_extension {
    static public function string(___:T_float64Value, f:stdgo.Pointer<T_float64Value>):String {
        return stdgo._internal.flag.Flag.T_float64Value_static_extension.string(___, f);
    }
    static public function get(___:T_float64Value, f:stdgo.Pointer<T_float64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_float64Value_static_extension.get(___, f);
    }
    static public function set(___:T_float64Value, f:stdgo.Pointer<T_float64Value>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_float64Value_static_extension.set(___, f, s);
    }
}
class T_durationValue_static_extension {
    static public function string(___:T_durationValue, d:stdgo.Pointer<T_durationValue>):String {
        return stdgo._internal.flag.Flag.T_durationValue_static_extension.string(___, d);
    }
    static public function get(___:T_durationValue, d:stdgo.Pointer<T_durationValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag.T_durationValue_static_extension.get(___, d);
    }
    static public function set(___:T_durationValue, d:stdgo.Pointer<T_durationValue>, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_durationValue_static_extension.set(___, d, s);
    }
}
class T_funcValue_static_extension {
    static public function string(f:T_funcValue):String {
        return stdgo._internal.flag.Flag.T_funcValue_static_extension.string(f);
    }
    static public function set(f:T_funcValue, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_funcValue_static_extension.set(f, s);
    }
}
class T_boolFuncValue_static_extension {
    static public function isBoolFlag(f:T_boolFuncValue):Bool {
        return stdgo._internal.flag.Flag.T_boolFuncValue_static_extension.isBoolFlag(f);
    }
    static public function string(f:T_boolFuncValue):String {
        return stdgo._internal.flag.Flag.T_boolFuncValue_static_extension.string(f);
    }
    static public function set(f:T_boolFuncValue, s:String):stdgo.Error {
        return stdgo._internal.flag.Flag.T_boolFuncValue_static_extension.set(f, s);
    }
}
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
    static public function lookup(name:String):Flag_ {
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
    static public function unquoteUsage(flag:Flag_):stdgo.Tuple<String, String> {
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
