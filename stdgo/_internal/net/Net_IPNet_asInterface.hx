package stdgo._internal.net;
class IPNet_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function network():stdgo.GoString return __self__.value.network();
    @:keep
    public dynamic function contains(_ip:stdgo._internal.net.Net_IP.IP):Bool return __self__.value.contains(_ip);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_IPNet.IPNet>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}