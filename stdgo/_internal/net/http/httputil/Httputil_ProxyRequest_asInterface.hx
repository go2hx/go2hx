package stdgo._internal.net.http.httputil;
class ProxyRequest_asInterface {
    @:keep
    public dynamic function setXForwarded():Void __self__.value.setXForwarded();
    @:keep
    public dynamic function setURL(_target:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):Void __self__.value.setURL(_target);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
