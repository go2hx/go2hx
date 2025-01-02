package stdgo._internal.net.http;
class T_http2stream_asInterface {
    @:keep
    @:tdfield
    public dynamic function _processTrailerHeaders(_f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame>):stdgo.Error return @:_0 __self__.value._processTrailerHeaders(_f);
    @:keep
    @:tdfield
    public dynamic function _onWriteTimeout():Void @:_0 __self__.value._onWriteTimeout();
    @:keep
    @:tdfield
    public dynamic function _onReadTimeout():Void @:_0 __self__.value._onReadTimeout();
    @:keep
    @:tdfield
    public dynamic function _copyTrailersToHandlerRequest():Void @:_0 __self__.value._copyTrailersToHandlerRequest();
    @:keep
    @:tdfield
    public dynamic function _endStream():Void @:_0 __self__.value._endStream();
    @:keep
    @:tdfield
    public dynamic function _isPushed():Bool return @:_0 __self__.value._isPushed();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2streamPointer.T_http2streamPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
