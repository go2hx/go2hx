package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class T_header_asInterface {
    @:keep
    public dynamic function _header():_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header return __self__.value._header();
    @:keep
    public dynamic function _unpack(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._unpack(_msg, _off);
    @:keep
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._pack(_msg);
    @:keep
    public dynamic function _count(_sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.GoUInt16 return __self__.value._count(_sec);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
