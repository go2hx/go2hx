package stdgo.flag;
final continueOnError : ErrorHandling = stdgo._internal.flag.Flag_continueonerror.continueOnError;
final exitOnError = stdgo._internal.flag.Flag_exitonerror.exitOnError;
final panicOnError = stdgo._internal.flag.Flag_paniconerror.panicOnError;
var errHelp(get, set) : stdgo.Error;
private function get_errHelp():stdgo.Error return stdgo._internal.flag.Flag_errhelp.errHelp;
private function set_errHelp(v:stdgo.Error):stdgo.Error {
        stdgo._internal.flag.Flag_errhelp.errHelp = (v : stdgo.Error);
        return v;
    }
var commandLine(get, set) : FlagSet;
private function get_commandLine():FlagSet return stdgo._internal.flag.Flag_commandline.commandLine;
private function set_commandLine(v:FlagSet):FlagSet {
        stdgo._internal.flag.Flag_commandline.commandLine = (v : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return v;
    }
var usage(get, set) : () -> Void;
private function get_usage():() -> Void return () -> stdgo._internal.flag.Flag_usage.usage();
private function set_usage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag_usage.usage = v;
        return v;
    }
var defaultUsage(get, set) : () -> Void;
private function get_defaultUsage():() -> Void return () -> stdgo._internal.flag.Flag_defaultusage.defaultUsage();
private function set_defaultUsage(v:() -> Void):() -> Void {
        stdgo._internal.flag.Flag_defaultusage.defaultUsage = v;
        return v;
    }
@:dox(hide) class T_boolFlag_static_extension {
    static public function isBoolFlag(t:stdgo._internal.flag.Flag_t_boolflag.T_boolFlag):Bool {
        return stdgo._internal.flag.Flag_t_boolflag_static_extension.T_boolFlag_static_extension.isBoolFlag(t);
    }
}
@:dox(hide) @:forward abstract T_boolFlag(stdgo._internal.flag.Flag_t_boolflag.T_boolFlag) from stdgo._internal.flag.Flag_t_boolflag.T_boolFlag to stdgo._internal.flag.Flag_t_boolflag.T_boolFlag {
    @:from
    static function fromHaxeInterface(x:{ function isBoolFlag():Bool; }):T_boolFlag {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_boolFlag = { isBoolFlag : () -> x.isBoolFlag(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Value_static_extension {
    static public function set(t:stdgo._internal.flag.Flag_value.Value, _0:String):stdgo.Error {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.flag.Flag_value_static_extension.Value_static_extension.set(t, _0);
    }
    static public function string(t:stdgo._internal.flag.Flag_value.Value):String {
        return stdgo._internal.flag.Flag_value_static_extension.Value_static_extension.string(t);
    }
}
@:forward abstract Value(stdgo._internal.flag.Flag_value.Value) from stdgo._internal.flag.Flag_value.Value to stdgo._internal.flag.Flag_value.Value {
    @:from
    static function fromHaxeInterface(x:{ function string():String; function set(_0:String):stdgo.Error; }):Value {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Value = { string : () -> x.string(), set : _0 -> x.set(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Getter_static_extension {
    static public function get(t:stdgo._internal.flag.Flag_getter.Getter):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_getter_static_extension.Getter_static_extension.get(t);
    }
}
@:forward abstract Getter(stdgo._internal.flag.Flag_getter.Getter) from stdgo._internal.flag.Flag_getter.Getter to stdgo._internal.flag.Flag_getter.Getter {
    @:from
    static function fromHaxeInterface(x:{ function get():stdgo.AnyInterface; }):Getter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Getter = { get : () -> x.get(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.flag.Flag.T_textValue_static_extension) @:dox(hide) abstract T_textValue(stdgo._internal.flag.Flag_t_textvalue.T_textValue) from stdgo._internal.flag.Flag_t_textvalue.T_textValue to stdgo._internal.flag.Flag_t_textvalue.T_textValue {
    public var _p(get, set) : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler;
    function get__p():stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler return this._p;
    function set__p(v:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler):stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler {
        this._p = v;
        return v;
    }
    public function new(?_p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler) this = new stdgo._internal.flag.Flag_t_textvalue.T_textValue(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.flag.Flag.FlagSet_static_extension) abstract FlagSet(stdgo._internal.flag.Flag_flagset.FlagSet) from stdgo._internal.flag.Flag_flagset.FlagSet to stdgo._internal.flag.Flag_flagset.FlagSet {
    public var usage(get, set) : () -> Void;
    function get_usage():() -> Void return () -> this.usage();
    function set_usage(v:() -> Void):() -> Void {
        this.usage = v;
        return v;
    }
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _parsed(get, set) : Bool;
    function get__parsed():Bool return this._parsed;
    function set__parsed(v:Bool):Bool {
        this._parsed = v;
        return v;
    }
    public var _actual(get, set) : Map<String, Flag_>;
    function get__actual():Map<String, Flag_> return {
        final __obj__:Map<String, Flag_> = [];
        for (key => value in this._actual) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__actual(v:Map<String, Flag_>):Map<String, Flag_> {
        this._actual = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
            };
            __obj__;
        };
        return v;
    }
    public var _formal(get, set) : Map<String, Flag_>;
    function get__formal():Map<String, Flag_> return {
        final __obj__:Map<String, Flag_> = [];
        for (key => value in this._formal) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__formal(v:Map<String, Flag_>):Map<String, Flag_> {
        this._formal = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
            };
            __obj__;
        };
        return v;
    }
    public var _args(get, set) : Array<String>;
    function get__args():Array<String> return [for (i in this._args) i];
    function set__args(v:Array<String>):Array<String> {
        this._args = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _errorHandling(get, set) : ErrorHandling;
    function get__errorHandling():ErrorHandling return this._errorHandling;
    function set__errorHandling(v:ErrorHandling):ErrorHandling {
        this._errorHandling = v;
        return v;
    }
    public var _output(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__output():stdgo._internal.io.Io_writer.Writer return this._output;
    function set__output(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._output = v;
        return v;
    }
    public var _undef(get, set) : Map<String, String>;
    function get__undef():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._undef) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__undef(v:Map<String, String>):Map<String, String> {
        this._undef = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return v;
    }
    public function new(?usage:() -> Void, ?_name:String, ?_parsed:Bool, ?_actual:Map<String, Flag_>, ?_formal:Map<String, Flag_>, ?_args:Array<String>, ?_errorHandling:ErrorHandling, ?_output:stdgo._internal.io.Io_writer.Writer, ?_undef:Map<String, String>) this = new stdgo._internal.flag.Flag_flagset.FlagSet(usage, (_name : stdgo.GoString), _parsed, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
        for (key => value in _actual) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
        };
        __obj__;
    }, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
        for (key => value in _formal) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
        };
        __obj__;
    }, ([for (i in _args) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), _errorHandling, _output, {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _undef) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.flag.Flag.Flag_static_extension) abstract Flag_(stdgo._internal.flag.Flag_flag.Flag) from stdgo._internal.flag.Flag_flag.Flag to stdgo._internal.flag.Flag_flag.Flag {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var usage(get, set) : String;
    function get_usage():String return this.usage;
    function set_usage(v:String):String {
        this.usage = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public var defValue(get, set) : String;
    function get_defValue():String return this.defValue;
    function set_defValue(v:String):String {
        this.defValue = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?usage:String, ?value:Value, ?defValue:String) this = new stdgo._internal.flag.Flag_flag.Flag((name : stdgo.GoString), (usage : stdgo.GoString), value, (defValue : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_boolValue = stdgo._internal.flag.Flag_t_boolvalue.T_boolValue;
@:dox(hide) typedef T_intValue = stdgo._internal.flag.Flag_t_intvalue.T_intValue;
@:dox(hide) typedef T_int64Value = stdgo._internal.flag.Flag_t_int64value.T_int64Value;
@:dox(hide) typedef T_uintValue = stdgo._internal.flag.Flag_t_uintvalue.T_uintValue;
@:dox(hide) typedef T_uint64Value = stdgo._internal.flag.Flag_t_uint64value.T_uint64Value;
@:dox(hide) typedef T_stringValue = stdgo._internal.flag.Flag_t_stringvalue.T_stringValue;
@:dox(hide) typedef T_float64Value = stdgo._internal.flag.Flag_t_float64value.T_float64Value;
@:dox(hide) typedef T_durationValue = stdgo._internal.flag.Flag_t_durationvalue.T_durationValue;
@:dox(hide) typedef T_funcValue = stdgo._internal.flag.Flag_t_funcvalue.T_funcValue;
@:dox(hide) typedef T_boolFuncValue = stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue;
typedef ErrorHandling = stdgo._internal.flag.Flag_errorhandling.ErrorHandling;
@:dox(hide) typedef T_textValuePointer = stdgo._internal.flag.Flag_t_textvaluepointer.T_textValuePointer;
@:dox(hide) class T_textValue_static_extension {
    static public function string(_v:T_textValue):String {
        return stdgo._internal.flag.Flag_t_textvalue_static_extension.T_textValue_static_extension.string(_v);
    }
    static public function get(_v:T_textValue):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_textvalue_static_extension.T_textValue_static_extension.get(_v);
    }
    static public function set(_v:T_textValue, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_textvalue_static_extension.T_textValue_static_extension.set(_v, _s);
    }
}
typedef FlagSetPointer = stdgo._internal.flag.Flag_flagsetpointer.FlagSetPointer;
class FlagSet_static_extension {
    static public function init(_f:FlagSet, _name:String, _errorHandling:ErrorHandling):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.init(_f, _name, _errorHandling);
    }
    static public function parsed(_f:FlagSet):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.parsed(_f);
    }
    static public function parse(_f:FlagSet, _arguments:Array<String>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _arguments = ([for (i in _arguments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.parse(_f, _arguments);
    }
    static public function _parseOne(_f:FlagSet):stdgo.Tuple<Bool, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return {
            final obj = stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._parseOne(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _usage(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._usage(_f);
    }
    static public function _failf(_f:FlagSet, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._failf(_f, _format, ...[for (i in _a) i]);
    }
    static public function _sprintf(_f:FlagSet, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._sprintf(_f, _format, ...[for (i in _a) i]);
    }
    static public function var_(_f:FlagSet, _value:Value, _name:String, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.var_(_f, _value, _name, _usage);
    }
    static public function boolFunc(_f:FlagSet, _name:String, _usage:String, _fn:String -> stdgo.Error):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.boolFunc(_f, _name, _usage, _fn);
    }
    static public function func(_f:FlagSet, _name:String, _usage:String, _fn:String -> stdgo.Error):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.func(_f, _name, _usage, _fn);
    }
    static public function textVar(_f:FlagSet, _p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:String, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.textVar(_f, _p, _name, _value, _usage);
    }
    static public function duration(_f:FlagSet, _name:String, _value:stdgo._internal.time.Time_duration.Duration, _usage:String):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.duration(_f, _name, _value, _usage);
    }
    static public function durationVar(_f:FlagSet, _p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:String, _value:stdgo._internal.time.Time_duration.Duration, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.durationVar(_f, _p, _name, _value, _usage);
    }
    static public function float64(_f:FlagSet, _name:String, _value:StdTypes.Float, _usage:String):stdgo.Pointer<StdTypes.Float> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.float64(_f, _name, _value, _usage);
    }
    static public function float64Var(_f:FlagSet, _p:stdgo.Pointer<StdTypes.Float>, _name:String, _value:StdTypes.Float, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.float64Var(_f, _p, _name, _value, _usage);
    }
    static public function string(_f:FlagSet, _name:String, _value:String, _usage:String):stdgo.Pointer<String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.string(_f, _name, _value, _usage);
    }
    static public function stringVar(_f:FlagSet, _p:stdgo.Pointer<String>, _name:String, _value:String, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.stringVar(_f, _p, _name, _value, _usage);
    }
    static public function uint64(_f:FlagSet, _name:String, _value:haxe.UInt64, _usage:String):stdgo.Pointer<haxe.UInt64> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.uint64(_f, _name, _value, _usage);
    }
    static public function uint64Var(_f:FlagSet, _p:stdgo.Pointer<haxe.UInt64>, _name:String, _value:haxe.UInt64, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.uint64Var(_f, _p, _name, _value, _usage);
    }
    static public function uint(_f:FlagSet, _name:String, _value:std.UInt, _usage:String):stdgo.Pointer<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.uint(_f, _name, _value, _usage);
    }
    static public function uintVar(_f:FlagSet, _p:stdgo.Pointer<std.UInt>, _name:String, _value:std.UInt, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.uintVar(_f, _p, _name, _value, _usage);
    }
    static public function int64(_f:FlagSet, _name:String, _value:haxe.Int64, _usage:String):stdgo.Pointer<haxe.Int64> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.int64(_f, _name, _value, _usage);
    }
    static public function int64Var(_f:FlagSet, _p:stdgo.Pointer<haxe.Int64>, _name:String, _value:haxe.Int64, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.int64Var(_f, _p, _name, _value, _usage);
    }
    static public function int_(_f:FlagSet, _name:String, _value:StdTypes.Int, _usage:String):stdgo.Pointer<StdTypes.Int> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.int_(_f, _name, _value, _usage);
    }
    static public function intVar(_f:FlagSet, _p:stdgo.Pointer<StdTypes.Int>, _name:String, _value:StdTypes.Int, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.intVar(_f, _p, _name, _value, _usage);
    }
    static public function bool_(_f:FlagSet, _name:String, _value:Bool, _usage:String):stdgo.Pointer<Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.bool_(_f, _name, _value, _usage);
    }
    static public function boolVar(_f:FlagSet, _p:stdgo.Pointer<Bool>, _name:String, _value:Bool, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.boolVar(_f, _p, _name, _value, _usage);
    }
    static public function args(_f:FlagSet):Array<String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return [for (i in stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.args(_f)) i];
    }
    static public function nArg(_f:FlagSet):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.nArg(_f);
    }
    static public function arg(_f:FlagSet, _i:StdTypes.Int):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.arg(_f, _i);
    }
    static public function nFlag(_f:FlagSet):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.nFlag(_f);
    }
    static public function _defaultUsage(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._defaultUsage(_f);
    }
    static public function printDefaults(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.printDefaults(_f);
    }
    static public function _set(_f:FlagSet, _name:String, _value:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension._set(_f, _name, _value);
    }
    static public function set(_f:FlagSet, _name:String, _value:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.set(_f, _name, _value);
    }
    static public function lookup(_f:FlagSet, _name:String):Flag_ {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.lookup(_f, _name);
    }
    static public function visit(_f:FlagSet, _fn:Flag_ -> Void):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _fn = _fn;
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.visit(_f, _fn);
    }
    static public function visitAll(_f:FlagSet, _fn:Flag_ -> Void):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        final _fn = _fn;
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.visitAll(_f, _fn);
    }
    static public function setOutput(_f:FlagSet, _output:stdgo._internal.io.Io_writer.Writer):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.setOutput(_f, _output);
    }
    static public function errorHandling(_f:FlagSet):ErrorHandling {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.errorHandling(_f);
    }
    static public function name(_f:FlagSet):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.name(_f);
    }
    static public function output(_f:FlagSet):stdgo._internal.io.Io_writer.Writer {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>);
        return stdgo._internal.flag.Flag_flagset_static_extension.FlagSet_static_extension.output(_f);
    }
}
typedef FlagPointer = stdgo._internal.flag.Flag_flagpointer.FlagPointer;
class Flag_static_extension {

}
@:dox(hide) typedef T_boolValuePointer = stdgo._internal.flag.Flag_t_boolvaluepointer.T_boolValuePointer;
@:dox(hide) class T_boolValue_static_extension {
    static public function isBoolFlag(_b:stdgo.Pointer<T_boolValue>):Bool {
        return stdgo._internal.flag.Flag_t_boolvalue_static_extension.T_boolValue_static_extension.isBoolFlag(_b);
    }
    static public function string(_b:stdgo.Pointer<T_boolValue>):String {
        return stdgo._internal.flag.Flag_t_boolvalue_static_extension.T_boolValue_static_extension.string(_b);
    }
    static public function get(_b:stdgo.Pointer<T_boolValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_boolvalue_static_extension.T_boolValue_static_extension.get(_b);
    }
    static public function set(_b:stdgo.Pointer<T_boolValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_boolvalue_static_extension.T_boolValue_static_extension.set(_b, _s);
    }
}
@:dox(hide) typedef T_intValuePointer = stdgo._internal.flag.Flag_t_intvaluepointer.T_intValuePointer;
@:dox(hide) class T_intValue_static_extension {
    static public function string(_i:stdgo.Pointer<T_intValue>):String {
        return stdgo._internal.flag.Flag_t_intvalue_static_extension.T_intValue_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_intValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_intvalue_static_extension.T_intValue_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_intValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_intvalue_static_extension.T_intValue_static_extension.set(_i, _s);
    }
}
@:dox(hide) typedef T_int64ValuePointer = stdgo._internal.flag.Flag_t_int64valuepointer.T_int64ValuePointer;
@:dox(hide) class T_int64Value_static_extension {
    static public function string(_i:stdgo.Pointer<T_int64Value>):String {
        return stdgo._internal.flag.Flag_t_int64value_static_extension.T_int64Value_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_int64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_int64value_static_extension.T_int64Value_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_int64Value>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_int64value_static_extension.T_int64Value_static_extension.set(_i, _s);
    }
}
@:dox(hide) typedef T_uintValuePointer = stdgo._internal.flag.Flag_t_uintvaluepointer.T_uintValuePointer;
@:dox(hide) class T_uintValue_static_extension {
    static public function string(_i:stdgo.Pointer<T_uintValue>):String {
        return stdgo._internal.flag.Flag_t_uintvalue_static_extension.T_uintValue_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_uintValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_uintvalue_static_extension.T_uintValue_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_uintValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_uintvalue_static_extension.T_uintValue_static_extension.set(_i, _s);
    }
}
@:dox(hide) typedef T_uint64ValuePointer = stdgo._internal.flag.Flag_t_uint64valuepointer.T_uint64ValuePointer;
@:dox(hide) class T_uint64Value_static_extension {
    static public function string(_i:stdgo.Pointer<T_uint64Value>):String {
        return stdgo._internal.flag.Flag_t_uint64value_static_extension.T_uint64Value_static_extension.string(_i);
    }
    static public function get(_i:stdgo.Pointer<T_uint64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_uint64value_static_extension.T_uint64Value_static_extension.get(_i);
    }
    static public function set(_i:stdgo.Pointer<T_uint64Value>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_uint64value_static_extension.T_uint64Value_static_extension.set(_i, _s);
    }
}
@:dox(hide) typedef T_stringValuePointer = stdgo._internal.flag.Flag_t_stringvaluepointer.T_stringValuePointer;
@:dox(hide) class T_stringValue_static_extension {
    static public function string(_s:stdgo.Pointer<T_stringValue>):String {
        return stdgo._internal.flag.Flag_t_stringvalue_static_extension.T_stringValue_static_extension.string(_s);
    }
    static public function get(_s:stdgo.Pointer<T_stringValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_stringvalue_static_extension.T_stringValue_static_extension.get(_s);
    }
    static public function set(_s:stdgo.Pointer<T_stringValue>, _val:String):stdgo.Error {
        final _val = (_val : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_stringvalue_static_extension.T_stringValue_static_extension.set(_s, _val);
    }
}
@:dox(hide) typedef T_float64ValuePointer = stdgo._internal.flag.Flag_t_float64valuepointer.T_float64ValuePointer;
@:dox(hide) class T_float64Value_static_extension {
    static public function string(_f:stdgo.Pointer<T_float64Value>):String {
        return stdgo._internal.flag.Flag_t_float64value_static_extension.T_float64Value_static_extension.string(_f);
    }
    static public function get(_f:stdgo.Pointer<T_float64Value>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_float64value_static_extension.T_float64Value_static_extension.get(_f);
    }
    static public function set(_f:stdgo.Pointer<T_float64Value>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_float64value_static_extension.T_float64Value_static_extension.set(_f, _s);
    }
}
@:dox(hide) typedef T_durationValuePointer = stdgo._internal.flag.Flag_t_durationvaluepointer.T_durationValuePointer;
@:dox(hide) class T_durationValue_static_extension {
    static public function string(_d:stdgo.Pointer<T_durationValue>):String {
        return stdgo._internal.flag.Flag_t_durationvalue_static_extension.T_durationValue_static_extension.string(_d);
    }
    static public function get(_d:stdgo.Pointer<T_durationValue>):stdgo.AnyInterface {
        return stdgo._internal.flag.Flag_t_durationvalue_static_extension.T_durationValue_static_extension.get(_d);
    }
    static public function set(_d:stdgo.Pointer<T_durationValue>, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_durationvalue_static_extension.T_durationValue_static_extension.set(_d, _s);
    }
}
@:dox(hide) typedef T_funcValuePointer = stdgo._internal.flag.Flag_t_funcvaluepointer.T_funcValuePointer;
@:dox(hide) class T_funcValue_static_extension {
    static public function string(_f:T_funcValue):String {
        return stdgo._internal.flag.Flag_t_funcvalue_static_extension.T_funcValue_static_extension.string(_f);
    }
    static public function set(_f:T_funcValue, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_funcvalue_static_extension.T_funcValue_static_extension.set(_f, _s);
    }
}
@:dox(hide) typedef T_boolFuncValuePointer = stdgo._internal.flag.Flag_t_boolfuncvaluepointer.T_boolFuncValuePointer;
@:dox(hide) class T_boolFuncValue_static_extension {
    static public function isBoolFlag(_f:T_boolFuncValue):Bool {
        return stdgo._internal.flag.Flag_t_boolfuncvalue_static_extension.T_boolFuncValue_static_extension.isBoolFlag(_f);
    }
    static public function string(_f:T_boolFuncValue):String {
        return stdgo._internal.flag.Flag_t_boolfuncvalue_static_extension.T_boolFuncValue_static_extension.string(_f);
    }
    static public function set(_f:T_boolFuncValue, _s:String):stdgo.Error {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.flag.Flag_t_boolfuncvalue_static_extension.T_boolFuncValue_static_extension.set(_f, _s);
    }
}
typedef ErrorHandlingPointer = stdgo._internal.flag.Flag_errorhandlingpointer.ErrorHandlingPointer;
class ErrorHandling_static_extension {

}
/**
    * 
    * Package flag implements command-line flag parsing.
    * 
    * # Usage
    * 
    * Define flags using flag.String(), Bool(), Int(), etc.
    * 
    * This declares an integer flag, -n, stored in the pointer nFlag, with type *int:
    * 
    * 	import "flag"
    * 	var nFlag = flag.Int("n", 1234, "help message for flag n")
    * 
    * If you like, you can bind the flag to a variable using the Var() functions.
    * 
    * 	var flagvar int
    * 	func init() {
    * 		flag.IntVar(&flagvar, "flagname", 1234, "help message for flagname")
    * 	}
    * 
    * Or you can create custom flags that satisfy the Value interface (with
    * pointer receivers) and couple them to flag parsing by
    * 
    * 	flag.Var(&flagVal, "name", "help message for flagname")
    * 
    * For such flags, the default value is just the initial value of the variable.
    * 
    * After all flags are defined, call
    * 
    * 	flag.Parse()
    * 
    * to parse the command line into the defined flags.
    * 
    * Flags may then be used directly. If you're using the flags themselves,
    * they are all pointers; if you bind to variables, they're values.
    * 
    * 	fmt.Println("ip has value ", *ip)
    * 	fmt.Println("flagvar has value ", flagvar)
    * 
    * After parsing, the arguments following the flags are available as the
    * slice flag.Args() or individually as flag.Arg(i).
    * The arguments are indexed from 0 through flag.NArg()-1.
    * 
    * # Command line flag syntax
    * 
    * The following forms are permitted:
    * 
    * 	-flag
    * 	--flag   // double dashes are also permitted
    * 	-flag=x
    * 	-flag x  // non-boolean flags only
    * 
    * One or two dashes may be used; they are equivalent.
    * The last form is not permitted for boolean flags because the
    * meaning of the command
    * 
    * 	cmd -x *
    * 
    * where * is a Unix shell wildcard, will change if there is a file
    * called 0, false, etc. You must use the -flag=false form to turn
    * off a boolean flag.
    * 
    * Flag parsing stops just before the first non-flag argument
    * ("-" is a non-flag argument) or after the terminator "--".
    * 
    * Integer flags accept 1234, 0664, 0x1234 and may be negative.
    * Boolean flags may be:
    * 
    * 	1, 0, t, f, T, F, true, false, TRUE, FALSE, True, False
    * 
    * Duration flags accept any input valid for time.ParseDuration.
    * 
    * The default set of command-line flags is controlled by
    * top-level functions.  The FlagSet type allows one to define
    * independent sets of flags, such as to implement subcommands
    * in a command-line interface. The methods of FlagSet are
    * analogous to the top-level functions for the command-line
    * flag set.
    * 
**/
class Flag {
    /**
        * ResetForTesting clears all flag state and sets the usage function as directed.
        * After calling ResetForTesting, parse errors in flag handling will not
        * exit the program.
    **/
    static public inline function resetForTesting(_usage:() -> Void):Void {
        final _usage = _usage;
        stdgo._internal.flag.Flag_resetfortesting.resetForTesting(_usage);
    }
    /**
        * VisitAll visits the command-line flags in lexicographical order, calling
        * fn for each. It visits all flags, even those not set.
    **/
    static public inline function visitAll(_fn:Flag_ -> Void):Void {
        final _fn = _fn;
        stdgo._internal.flag.Flag_visitall.visitAll(_fn);
    }
    /**
        * Visit visits the command-line flags in lexicographical order, calling fn
        * for each. It visits only those flags that have been set.
    **/
    static public inline function visit(_fn:Flag_ -> Void):Void {
        final _fn = _fn;
        stdgo._internal.flag.Flag_visit.visit(_fn);
    }
    /**
        * Lookup returns the Flag structure of the named command-line flag,
        * returning nil if none exists.
    **/
    static public inline function lookup(_name:String):Flag_ {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_lookup.lookup(_name);
    }
    /**
        * Set sets the value of the named command-line flag.
    **/
    static public inline function set(_name:String, _value:String):stdgo.Error {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_set.set(_name, _value);
    }
    /**
        * UnquoteUsage extracts a back-quoted name from the usage
        * string for a flag and returns it and the un-quoted usage.
        * Given "a `name` to show" it returns ("name", "a name to show").
        * If there are no back quotes, the name is an educated guess of the
        * type of the flag's value, or the empty string if the flag is boolean.
    **/
    static public inline function unquoteUsage(_flag:Flag_):stdgo.Tuple<String, String> {
        final _flag = (_flag : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
        return {
            final obj = stdgo._internal.flag.Flag_unquoteusage.unquoteUsage(_flag);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * PrintDefaults prints, to standard error unless configured otherwise,
        * a usage message showing the default settings of all defined
        * command-line flags.
        * For an integer valued flag x, the default output has the form
        * 
        * 	-x int
        * 		usage-message-for-x (default 7)
        * 
        * The usage message will appear on a separate line for anything but
        * a bool flag with a one-byte name. For bool flags, the type is
        * omitted and if the flag name is one byte the usage message appears
        * on the same line. The parenthetical default is omitted if the
        * default is the zero value for the type. The listed type, here int,
        * can be changed by placing a back-quoted name in the flag's usage
        * string; the first such item in the message is taken to be a parameter
        * name to show in the message and the back quotes are stripped from
        * the message when displayed. For instance, given
        * 
        * 	flag.String("I", "", "search `directory` for include files")
        * 
        * the output will be
        * 
        * 	-I directory
        * 		search directory for include files.
        * 
        * To change the destination for flag messages, call CommandLine.SetOutput.
    **/
    static public inline function printDefaults():Void {
        stdgo._internal.flag.Flag_printdefaults.printDefaults();
    }
    /**
        * NFlag returns the number of command-line flags that have been set.
    **/
    static public inline function nFlag():StdTypes.Int {
        return stdgo._internal.flag.Flag_nflag.nFlag();
    }
    /**
        * Arg returns the i'th command-line argument. Arg(0) is the first remaining argument
        * after flags have been processed. Arg returns an empty string if the
        * requested element does not exist.
    **/
    static public inline function arg(_i:StdTypes.Int):String {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.flag.Flag_arg.arg(_i);
    }
    /**
        * NArg is the number of arguments remaining after flags have been processed.
    **/
    static public inline function nArg():StdTypes.Int {
        return stdgo._internal.flag.Flag_narg.nArg();
    }
    /**
        * Args returns the non-flag command-line arguments.
    **/
    static public inline function args():Array<String> {
        return [for (i in stdgo._internal.flag.Flag_args.args()) i];
    }
    /**
        * BoolVar defines a bool flag with specified name, default value, and usage string.
        * The argument p points to a bool variable in which to store the value of the flag.
    **/
    static public inline function boolVar(_p:stdgo.Pointer<Bool>, _name:String, _value:Bool, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_boolvar.boolVar(_p, _name, _value, _usage);
    }
    /**
        * Bool defines a bool flag with specified name, default value, and usage string.
        * The return value is the address of a bool variable that stores the value of the flag.
    **/
    static public inline function bool_(_name:String, _value:Bool, _usage:String):stdgo.Pointer<Bool> {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_bool_.bool_(_name, _value, _usage);
    }
    /**
        * IntVar defines an int flag with specified name, default value, and usage string.
        * The argument p points to an int variable in which to store the value of the flag.
    **/
    static public inline function intVar(_p:stdgo.Pointer<StdTypes.Int>, _name:String, _value:StdTypes.Int, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_intvar.intVar(_p, _name, _value, _usage);
    }
    /**
        * Int defines an int flag with specified name, default value, and usage string.
        * The return value is the address of an int variable that stores the value of the flag.
    **/
    static public inline function int_(_name:String, _value:StdTypes.Int, _usage:String):stdgo.Pointer<StdTypes.Int> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_int_.int_(_name, _value, _usage);
    }
    /**
        * Int64Var defines an int64 flag with specified name, default value, and usage string.
        * The argument p points to an int64 variable in which to store the value of the flag.
    **/
    static public inline function int64Var(_p:stdgo.Pointer<haxe.Int64>, _name:String, _value:haxe.Int64, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_int64var.int64Var(_p, _name, _value, _usage);
    }
    /**
        * Int64 defines an int64 flag with specified name, default value, and usage string.
        * The return value is the address of an int64 variable that stores the value of the flag.
    **/
    static public inline function int64(_name:String, _value:haxe.Int64, _usage:String):stdgo.Pointer<haxe.Int64> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_int64.int64(_name, _value, _usage);
    }
    /**
        * UintVar defines a uint flag with specified name, default value, and usage string.
        * The argument p points to a uint variable in which to store the value of the flag.
    **/
    static public inline function uintVar(_p:stdgo.Pointer<std.UInt>, _name:String, _value:std.UInt, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_uintvar.uintVar(_p, _name, _value, _usage);
    }
    /**
        * Uint defines a uint flag with specified name, default value, and usage string.
        * The return value is the address of a uint variable that stores the value of the flag.
    **/
    static public inline function uint(_name:String, _value:std.UInt, _usage:String):stdgo.Pointer<std.UInt> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_uint.uint(_name, _value, _usage);
    }
    /**
        * Uint64Var defines a uint64 flag with specified name, default value, and usage string.
        * The argument p points to a uint64 variable in which to store the value of the flag.
    **/
    static public inline function uint64Var(_p:stdgo.Pointer<haxe.UInt64>, _name:String, _value:haxe.UInt64, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_uint64var.uint64Var(_p, _name, _value, _usage);
    }
    /**
        * Uint64 defines a uint64 flag with specified name, default value, and usage string.
        * The return value is the address of a uint64 variable that stores the value of the flag.
    **/
    static public inline function uint64(_name:String, _value:haxe.UInt64, _usage:String):stdgo.Pointer<haxe.UInt64> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_uint64.uint64(_name, _value, _usage);
    }
    /**
        * StringVar defines a string flag with specified name, default value, and usage string.
        * The argument p points to a string variable in which to store the value of the flag.
    **/
    static public inline function stringVar(_p:stdgo.Pointer<String>, _name:String, _value:String, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_stringvar.stringVar(_p, _name, _value, _usage);
    }
    /**
        * String defines a string flag with specified name, default value, and usage string.
        * The return value is the address of a string variable that stores the value of the flag.
    **/
    static public inline function string(_name:String, _value:String, _usage:String):stdgo.Pointer<String> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_string.string(_name, _value, _usage);
    }
    /**
        * Float64Var defines a float64 flag with specified name, default value, and usage string.
        * The argument p points to a float64 variable in which to store the value of the flag.
    **/
    static public inline function float64Var(_p:stdgo.Pointer<StdTypes.Float>, _name:String, _value:StdTypes.Float, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_float64var.float64Var(_p, _name, _value, _usage);
    }
    /**
        * Float64 defines a float64 flag with specified name, default value, and usage string.
        * The return value is the address of a float64 variable that stores the value of the flag.
    **/
    static public inline function float64(_name:String, _value:StdTypes.Float, _usage:String):stdgo.Pointer<StdTypes.Float> {
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_float64.float64(_name, _value, _usage);
    }
    /**
        * DurationVar defines a time.Duration flag with specified name, default value, and usage string.
        * The argument p points to a time.Duration variable in which to store the value of the flag.
        * The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public inline function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:String, _value:stdgo._internal.time.Time_duration.Duration, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_durationvar.durationVar(_p, _name, _value, _usage);
    }
    /**
        * Duration defines a time.Duration flag with specified name, default value, and usage string.
        * The return value is the address of a time.Duration variable that stores the value of the flag.
        * The flag accepts a value acceptable to time.ParseDuration.
    **/
    static public inline function duration(_name:String, _value:stdgo._internal.time.Time_duration.Duration, _usage:String):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_duration.duration(_name, _value, _usage);
    }
    /**
        * TextVar defines a flag with a specified name, default value, and usage string.
        * The argument p must be a pointer to a variable that will hold the value
        * of the flag, and p must implement encoding.TextUnmarshaler.
        * If the flag is used, the flag value will be passed to p's UnmarshalText method.
        * The type of the default value must be the same as the type of p.
    **/
    static public inline function textVar(_p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:String, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_textvar.textVar(_p, _name, _value, _usage);
    }
    /**
        * Func defines a flag with the specified name and usage string.
        * Each time the flag is seen, fn is called with the value of the flag.
        * If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public inline function func(_name:String, _usage:String, _fn:String -> stdgo.Error):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_func.func(_name, _usage, _fn);
    }
    /**
        * BoolFunc defines a flag with the specified name and usage string without requiring values.
        * Each time the flag is seen, fn is called with the value of the flag.
        * If fn returns a non-nil error, it will be treated as a flag value parsing error.
    **/
    static public inline function boolFunc(_name:String, _usage:String, _fn:String -> stdgo.Error):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_boolfunc.boolFunc(_name, _usage, _fn);
    }
    /**
        * Var defines a flag with the specified name and usage string. The type and
        * value of the flag are represented by the first argument, of type Value, which
        * typically holds a user-defined implementation of Value. For instance, the
        * caller could create a flag that turns a comma-separated string into a slice
        * of strings by giving the slice the methods of Value; in particular, Set would
        * decompose the comma-separated string into the slice.
    **/
    static public inline function var_(_value:Value, _name:String, _usage:String):Void {
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_var_.var_(_value, _name, _usage);
    }
    /**
        * Parse parses the command-line flags from os.Args[1:]. Must be called
        * after all flags are defined and before flags are accessed by the program.
    **/
    static public inline function parse():Void {
        stdgo._internal.flag.Flag_parse.parse();
    }
    /**
        * Parsed reports whether the command-line flags have been parsed.
    **/
    static public inline function parsed():Bool {
        return stdgo._internal.flag.Flag_parsed.parsed();
    }
    /**
        * NewFlagSet returns a new, empty flag set with the specified name and
        * error handling property. If the name is not empty, it will be printed
        * in the default usage message and in error messages.
    **/
    static public inline function newFlagSet(_name:String, _errorHandling:ErrorHandling):FlagSet {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_newflagset.newFlagSet(_name, _errorHandling);
    }
}
