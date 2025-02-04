package stdgo._internal.net;
class IPNet_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function network():stdgo.GoString return @:_0 __self__.value.network();
    @:keep
    @:tdfield
    public dynamic function contains(_ip:stdgo._internal.net.Net_ip.IP):Bool return @:_0 __self__.value.contains(_ip);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_ipnetpointer.IPNetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
