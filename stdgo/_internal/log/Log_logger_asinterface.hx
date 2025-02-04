package stdgo._internal.log;
class Logger_asInterface {
    @:keep
    @:tdfield
    public dynamic function writer():stdgo._internal.io.Io_writer.Writer return @:_0 __self__.value.writer();
    @:keep
    @:tdfield
    public dynamic function setPrefix(_prefix:stdgo.GoString):Void @:_0 __self__.value.setPrefix(_prefix);
    @:keep
    @:tdfield
    public dynamic function prefix():stdgo.GoString return @:_0 __self__.value.prefix();
    @:keep
    @:tdfield
    public dynamic function setFlags(_flag:stdgo.GoInt):Void @:_0 __self__.value.setFlags(_flag);
    @:keep
    @:tdfield
    public dynamic function flags():stdgo.GoInt return @:_0 __self__.value.flags();
    @:keep
    @:tdfield
    public dynamic function panicln(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.panicln(..._v);
    @:keep
    @:tdfield
    public dynamic function panicf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.panicf(_format, ..._v);
    @:keep
    @:tdfield
    public dynamic function panic(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.panic(..._v);
    @:keep
    @:tdfield
    public dynamic function fatalln(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.fatalln(..._v);
    @:keep
    @:tdfield
    public dynamic function fatalf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.fatalf(_format, ..._v);
    @:keep
    @:tdfield
    public dynamic function fatal(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.fatal(..._v);
    @:keep
    @:tdfield
    public dynamic function println(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.println(..._v);
    @:keep
    @:tdfield
    public dynamic function printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.printf(_format, ..._v);
    @:keep
    @:tdfield
    public dynamic function print(_v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value.print(..._v);
    @:keep
    @:tdfield
    public dynamic function _output(_pc:stdgo.GoUIntptr, _calldepth:stdgo.GoInt, _appendOutput:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._output(_pc, _calldepth, _appendOutput);
    @:keep
    @:tdfield
    public dynamic function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error return @:_0 __self__.value.output(_calldepth, _s);
    @:keep
    @:tdfield
    public dynamic function setOutput(_w:stdgo._internal.io.Io_writer.Writer):Void @:_0 __self__.value.setOutput(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.log.Log_loggerpointer.LoggerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
