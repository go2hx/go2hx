package stdgo._internal.net;
class T_bufferedPipe_asInterface {
    @:keep
    @:tdfield
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.setWriteDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.setReadDeadline(_t);
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_b);
    @:keep
    @:tdfield
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_bufferedpipepointer.T_bufferedPipePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
