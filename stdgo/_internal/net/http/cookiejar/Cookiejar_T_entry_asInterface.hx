package stdgo._internal.net.http.cookiejar;
class T_entry_asInterface {
    @:keep
    public dynamic function _pathMatch(_requestPath:stdgo.GoString):Bool return __self__.value._pathMatch(_requestPath);
    @:keep
    public dynamic function _domainMatch(_host:stdgo.GoString):Bool return __self__.value._domainMatch(_host);
    @:keep
    public dynamic function _shouldSend(_https:Bool, _host:stdgo.GoString, _path:stdgo.GoString):Bool return __self__.value._shouldSend(_https, _host, _path);
    @:keep
    public dynamic function _id():stdgo.GoString return __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.cookiejar.Cookiejar_T_entry.T_entry>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
