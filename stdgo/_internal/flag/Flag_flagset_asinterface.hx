package stdgo._internal.flag;
class FlagSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function init(_name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling):Void @:_0 __self__.value.init(_name, _errorHandling);
    @:keep
    @:tdfield
    public dynamic function parsed():Bool return @:_0 __self__.value.parsed();
    @:keep
    @:tdfield
    public dynamic function parse(_arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error return @:_0 __self__.value.parse(_arguments);
    @:keep
    @:tdfield
    public dynamic function _parseOne():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._parseOne();
    @:keep
    @:tdfield
    public dynamic function _usage():Void @:_0 __self__.value._usage();
    @:keep
    @:tdfield
    public dynamic function _failf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_0 __self__.value._failf(_format, ..._a);
    @:keep
    @:tdfield
    public dynamic function _sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return @:_0 __self__.value._sprintf(_format, ..._a);
    @:keep
    @:tdfield
    public dynamic function var_(_value:stdgo._internal.flag.Flag_value.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void @:_0 __self__.value.var_(_value, _name, _usage);
    @:keep
    @:tdfield
    public dynamic function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void @:_0 __self__.value.boolFunc(_name, _usage, _fn);
    @:keep
    @:tdfield
    public dynamic function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void @:_0 __self__.value.func(_name, _usage, _fn);
    @:keep
    @:tdfield
    public dynamic function textVar(_p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:stdgo.GoString):Void @:_0 __self__.value.textVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> return @:_0 __self__.value.duration(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):Void @:_0 __self__.value.durationVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> return @:_0 __self__.value.float64(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void @:_0 __self__.value.float64Var(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> return @:_0 __self__.value.string(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void @:_0 __self__.value.stringVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> return @:_0 __self__.value.uint64(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void @:_0 __self__.value.uint64Var(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> return @:_0 __self__.value.uint(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void @:_0 __self__.value.uintVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> return @:_0 __self__.value.int64(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void @:_0 __self__.value.int64Var(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> return @:_0 __self__.value.int_(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void @:_0 __self__.value.intVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> return @:_0 __self__.value.bool_(_name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void @:_0 __self__.value.boolVar(_p, _name, _value, _usage);
    @:keep
    @:tdfield
    public dynamic function args():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.args();
    @:keep
    @:tdfield
    public dynamic function nArg():stdgo.GoInt return @:_0 __self__.value.nArg();
    @:keep
    @:tdfield
    public dynamic function arg(_i:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.arg(_i);
    @:keep
    @:tdfield
    public dynamic function nFlag():stdgo.GoInt return @:_0 __self__.value.nFlag();
    @:keep
    @:tdfield
    public dynamic function _defaultUsage():Void @:_0 __self__.value._defaultUsage();
    @:keep
    @:tdfield
    public dynamic function printDefaults():Void @:_0 __self__.value.printDefaults();
    @:keep
    @:tdfield
    public dynamic function _set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return @:_0 __self__.value._set(_name, _value);
    @:keep
    @:tdfield
    public dynamic function set(_name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error return @:_0 __self__.value.set(_name, _value);
    @:keep
    @:tdfield
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> return @:_0 __self__.value.lookup(_name);
    @:keep
    @:tdfield
    public dynamic function visit(_fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void @:_0 __self__.value.visit(_fn);
    @:keep
    @:tdfield
    public dynamic function visitAll(_fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void @:_0 __self__.value.visitAll(_fn);
    @:keep
    @:tdfield
    public dynamic function setOutput(_output:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value.setOutput(_output);
    @:keep
    @:tdfield
    public dynamic function errorHandling():stdgo._internal.flag.Flag_errorhandling.ErrorHandling return @:_0 __self__.value.errorHandling();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function output():stdgo._internal.io.Io_writer.Writer return @:_0 __self__.value.output();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.flag.Flag_flagsetpointer.FlagSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
