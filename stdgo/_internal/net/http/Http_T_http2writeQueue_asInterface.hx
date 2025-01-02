package stdgo._internal.net.http;
class T_http2writeQueue_asInterface {
    @:keep
    @:tdfield
    public dynamic function _consume(_n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } return @:_0 __self__.value._consume(_n);
    @:keep
    @:tdfield
    public dynamic function _shift():stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest return @:_0 __self__.value._shift();
    @:keep
    @:tdfield
    public dynamic function _push(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void @:_0 __self__.value._push(_wr);
    @:keep
    @:tdfield
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2writeQueuePointer.T_http2writeQueuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
