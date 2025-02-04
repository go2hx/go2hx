package stdgo._internal.net.http.cookiejar;
class T_entry_asInterface {
    @:keep
    @:tdfield
    public dynamic function _pathMatch(_requestPath:stdgo.GoString):Bool return @:_0 __self__.value._pathMatch(_requestPath);
    @:keep
    @:tdfield
    public dynamic function _domainMatch(_host:stdgo.GoString):Bool return @:_0 __self__.value._domainMatch(_host);
    @:keep
    @:tdfield
    public dynamic function _shouldSend(_https:Bool, _host:stdgo.GoString, _path:stdgo.GoString):Bool return @:_0 __self__.value._shouldSend(_https, _host, _path);
    @:keep
    @:tdfield
    public dynamic function _id():stdgo.GoString return @:_0 __self__.value._id();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.cookiejar.Cookiejar_t_entrypointer.T_entryPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
