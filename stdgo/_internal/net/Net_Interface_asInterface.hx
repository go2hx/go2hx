package stdgo._internal.net;
class Interface_asInterface {
    @:keep
    public dynamic function multicastAddrs():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_Addr.Addr>; var _1 : stdgo.Error; } return __self__.value.multicastAddrs();
    @:keep
    public dynamic function addrs():{ var _0 : stdgo.Slice<stdgo._internal.net.Net_Addr.Addr>; var _1 : stdgo.Error; } return __self__.value.addrs();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_Interface.Interface>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}