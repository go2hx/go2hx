package stdgo._internal.net.http;
class T_http2StreamError_asInterface {
    @:keep
    @:tdfield
    public dynamic function as(_target:stdgo.AnyInterface):Bool return @:_0 __self__.value.as(_target);
    @:keep
    @:tdfield
    public dynamic function _staysWithinBuffer(_max:stdgo.GoInt):Bool return @:_0 __self__.value._staysWithinBuffer(_max);
    @:keep
    @:tdfield
    public dynamic function _writeFrame(_ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error return @:_0 __self__.value._writeFrame(_ctx);
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2StreamErrorPointer.T_http2StreamErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
