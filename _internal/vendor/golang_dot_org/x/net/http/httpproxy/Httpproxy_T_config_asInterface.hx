package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
class T_config_asInterface {
    @:keep
    public dynamic function _init():Void __self__.value._init();
    @:keep
    public dynamic function _useProxy(_addr:stdgo.GoString):Bool return __self__.value._useProxy(_addr);
    @:keep
    public dynamic function _proxyForURL(_reqURL:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return __self__.value._proxyForURL(_reqURL);
    @:embedded
    public dynamic function proxyFunc():stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return __self__.value.proxyFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_config.T_config>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
