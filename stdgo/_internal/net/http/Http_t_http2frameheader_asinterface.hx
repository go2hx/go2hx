package stdgo._internal.net.http;
class T_http2FrameHeader_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function header():stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader return @:_0 __self__.value.header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2frameheaderpointer.T_http2FrameHeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
