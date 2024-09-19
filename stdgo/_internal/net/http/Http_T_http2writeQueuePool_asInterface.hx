package stdgo._internal.net.http;
class T_http2writeQueuePool_asInterface {
    @:keep
    public dynamic function _get():stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> return __self__.value._get();
    @:keep
    public dynamic function _put(_q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>):Void __self__.value._put(_q);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
