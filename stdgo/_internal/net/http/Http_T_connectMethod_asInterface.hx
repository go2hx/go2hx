package stdgo._internal.net.http;
class T_connectMethod_asInterface {
    @:keep
    public dynamic function _tlsHost():stdgo.GoString return __self__.value._tlsHost();
    @:keep
    public dynamic function _addr():stdgo.GoString return __self__.value._addr();
    @:keep
    public dynamic function _scheme():stdgo.GoString return __self__.value._scheme();
    @:keep
    public dynamic function _key():stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey return __self__.value._key();
    @:keep
    public dynamic function _proxyAuth():stdgo.GoString return __self__.value._proxyAuth();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
