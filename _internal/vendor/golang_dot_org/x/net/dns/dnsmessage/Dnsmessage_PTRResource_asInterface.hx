package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class PTRResource_asInterface {
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._pack(_msg, _compression, _compressionOff);
    @:keep
    public dynamic function _realType():_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ return __self__.value._realType();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
