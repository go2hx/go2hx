package stdgo._internal.net.http;
class T_http2FrameWriteRequest_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function consume(_n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _2 : stdgo.GoInt; } return @:_0 __self__.value.consume(_n);
    @:keep
    @:tdfield
    public dynamic function dataSize():stdgo.GoInt return @:_0 __self__.value.dataSize();
    @:keep
    @:tdfield
    public dynamic function streamID():stdgo.GoUInt32 return @:_0 __self__.value.streamID();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2framewriterequestpointer.T_http2FrameWriteRequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
