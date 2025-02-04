package stdgo._internal.net.http.httputil;
class T_maxLatencyWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _stop():Void @:_0 __self__.value._stop();
    @:keep
    @:tdfield
    public dynamic function _delayedFlush():Void @:_0 __self__.value._delayedFlush();
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriterpointer.T_maxLatencyWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
