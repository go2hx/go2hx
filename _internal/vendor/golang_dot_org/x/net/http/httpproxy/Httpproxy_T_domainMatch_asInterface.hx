package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
class T_domainMatch_asInterface {
    @:keep
    public dynamic function _match(_host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_IP.IP):Bool return __self__.value._match(_host, _port, _ip);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_domainMatch.T_domainMatch>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
