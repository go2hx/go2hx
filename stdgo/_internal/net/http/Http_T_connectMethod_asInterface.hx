package stdgo._internal.net.http;
class T_connectMethod_asInterface {
    @:keep
    @:tdfield
    public dynamic function _tlsHost():stdgo.GoString return @:_0 __self__.value._tlsHost();
    @:keep
    @:tdfield
    public dynamic function _addr():stdgo.GoString return @:_0 __self__.value._addr();
    @:keep
    @:tdfield
    public dynamic function _scheme():stdgo.GoString return @:_0 __self__.value._scheme();
    @:keep
    @:tdfield
    public dynamic function _key():stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey return @:_0 __self__.value._key();
    @:keep
    @:tdfield
    public dynamic function _proxyAuth():stdgo.GoString return @:_0 __self__.value._proxyAuth();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_connectMethodPointer.T_connectMethodPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
