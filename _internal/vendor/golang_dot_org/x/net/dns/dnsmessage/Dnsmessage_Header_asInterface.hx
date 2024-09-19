package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class Header_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function _pack():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return __self__.value._pack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
