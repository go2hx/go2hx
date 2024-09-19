package stdgo._internal.net.http;
class T_http2stream_asInterface {
    @:keep
    public dynamic function _processTrailerHeaders(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error return __self__.value._processTrailerHeaders(_f);
    @:keep
    public dynamic function _onWriteTimeout():Void __self__.value._onWriteTimeout();
    @:keep
    public dynamic function _onReadTimeout():Void __self__.value._onReadTimeout();
    @:keep
    public dynamic function _copyTrailersToHandlerRequest():Void __self__.value._copyTrailersToHandlerRequest();
    @:keep
    public dynamic function _endStream():Void __self__.value._endStream();
    @:keep
    public dynamic function _isPushed():Bool return __self__.value._isPushed();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
