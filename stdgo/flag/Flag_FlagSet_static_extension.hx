package stdgo.flag;
class FlagSet_static_extension {
    static public function init(_f:FlagSet, _name:String, _errorHandling:ErrorHandling):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.init(_f, _name, _errorHandling);
    }
    static public function parsed(_f:FlagSet):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.parsed(_f);
    }
    static public function parse(_f:FlagSet, _arguments:Array<String>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _arguments = ([for (i in _arguments) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.parse(_f, _arguments);
    }
    static public function _parseOne(_f:FlagSet):stdgo.Tuple<Bool, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return {
            final obj = stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._parseOne(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _usage(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._usage(_f);
    }
    static public function _failf(_f:FlagSet, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._failf(_f, _format, ...[for (i in _a) i]);
    }
    static public function _sprintf(_f:FlagSet, _format:String, _a:haxe.Rest<stdgo.AnyInterface>):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._sprintf(_f, _format, ...[for (i in _a) i]);
    }
    static public function var_(_f:FlagSet, _value:Value, _name:String, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.var_(_f, _value, _name, _usage);
    }
    static public function boolFunc(_f:FlagSet, _name:String, _usage:String, _fn:stdgo.GoString -> stdgo.Error):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.boolFunc(_f, _name, _usage, _fn);
    }
    static public function func(_f:FlagSet, _name:String, _usage:String, _fn:stdgo.GoString -> stdgo.Error):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        final _fn = _fn;
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.func(_f, _name, _usage, _fn);
    }
    static public function textVar(_f:FlagSet, _p:stdgo._internal.encoding.Encoding_TextUnmarshaler.TextUnmarshaler, _name:String, _value:stdgo._internal.encoding.Encoding_TextMarshaler.TextMarshaler, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.textVar(_f, _p, _name, _value, _usage);
    }
    static public function duration(_f:FlagSet, _name:String, _value:stdgo._internal.time.Time_Duration.Duration, _usage:String):stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.duration(_f, _name, _value, _usage);
    }
    static public function durationVar(_f:FlagSet, _p:stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>, _name:String, _value:stdgo._internal.time.Time_Duration.Duration, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.durationVar(_f, _p, _name, _value, _usage);
    }
    static public function float64(_f:FlagSet, _name:String, _value:StdTypes.Float, _usage:String):stdgo.Pointer<StdTypes.Float> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.float64(_f, _name, _value, _usage);
    }
    static public function float64Var(_f:FlagSet, _p:stdgo.Pointer<StdTypes.Float>, _name:String, _value:StdTypes.Float, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoFloat64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.float64Var(_f, _p, _name, _value, _usage);
    }
    static public function string(_f:FlagSet, _name:String, _value:String, _usage:String):stdgo.Pointer<String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.string(_f, _name, _value, _usage);
    }
    static public function stringVar(_f:FlagSet, _p:stdgo.Pointer<String>, _name:String, _value:String, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.stringVar(_f, _p, _name, _value, _usage);
    }
    static public function uint64(_f:FlagSet, _name:String, _value:haxe.UInt64, _usage:String):stdgo.Pointer<haxe.UInt64> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.uint64(_f, _name, _value, _usage);
    }
    static public function uint64Var(_f:FlagSet, _p:stdgo.Pointer<haxe.UInt64>, _name:String, _value:haxe.UInt64, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.uint64Var(_f, _p, _name, _value, _usage);
    }
    static public function uint(_f:FlagSet, _name:String, _value:std.UInt, _usage:String):stdgo.Pointer<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.uint(_f, _name, _value, _usage);
    }
    static public function uintVar(_f:FlagSet, _p:stdgo.Pointer<std.UInt>, _name:String, _value:std.UInt, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoUInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.uintVar(_f, _p, _name, _value, _usage);
    }
    static public function int64(_f:FlagSet, _name:String, _value:haxe.Int64, _usage:String):stdgo.Pointer<haxe.Int64> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.int64(_f, _name, _value, _usage);
    }
    static public function int64Var(_f:FlagSet, _p:stdgo.Pointer<haxe.Int64>, _name:String, _value:haxe.Int64, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt64);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.int64Var(_f, _p, _name, _value, _usage);
    }
    static public function int_(_f:FlagSet, _name:String, _value:StdTypes.Int, _usage:String):stdgo.Pointer<StdTypes.Int> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.int_(_f, _name, _value, _usage);
    }
    static public function intVar(_f:FlagSet, _p:stdgo.Pointer<StdTypes.Int>, _name:String, _value:StdTypes.Int, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoInt);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.intVar(_f, _p, _name, _value, _usage);
    }
    static public function bool_(_f:FlagSet, _name:String, _value:Bool, _usage:String):stdgo.Pointer<Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.bool_(_f, _name, _value, _usage);
    }
    static public function boolVar(_f:FlagSet, _p:stdgo.Pointer<Bool>, _name:String, _value:Bool, _usage:String):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _usage = (_usage : stdgo.GoString);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.boolVar(_f, _p, _name, _value, _usage);
    }
    static public function args(_f:FlagSet):Array<String> {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return [for (i in stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.args(_f)) i];
    }
    static public function nArg(_f:FlagSet):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.nArg(_f);
    }
    static public function arg(_f:FlagSet, _i:StdTypes.Int):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.arg(_f, _i);
    }
    static public function nFlag(_f:FlagSet):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.nFlag(_f);
    }
    static public function _defaultUsage(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._defaultUsage(_f);
    }
    static public function printDefaults(_f:FlagSet):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.printDefaults(_f);
    }
    static public function _set(_f:FlagSet, _name:String, _value:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension._set(_f, _name, _value);
    }
    static public function set(_f:FlagSet, _name:String, _value:String):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.set(_f, _name, _value);
    }
    static public function lookup(_f:FlagSet, _name:String):Flag_ {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.lookup(_f, _name);
    }
    static public function visit(_f:FlagSet, _fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _fn = _fn;
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.visit(_f, _fn);
    }
    static public function visitAll(_f:FlagSet, _fn:stdgo.Ref<stdgo._internal.flag.Flag_Flag.Flag> -> Void):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        final _fn = _fn;
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.visitAll(_f, _fn);
    }
    static public function setOutput(_f:FlagSet, _output:stdgo._internal.io.Io_Writer.Writer):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.setOutput(_f, _output);
    }
    static public function errorHandling(_f:FlagSet):ErrorHandling {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.errorHandling(_f);
    }
    static public function name(_f:FlagSet):String {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.name(_f);
    }
    static public function output(_f:FlagSet):stdgo._internal.io.Io_Writer.Writer {
        final _f = (_f : stdgo.Ref<stdgo._internal.flag.Flag_FlagSet.FlagSet>);
        return stdgo._internal.flag.Flag_FlagSet_static_extension.FlagSet_static_extension.output(_f);
    }
}
