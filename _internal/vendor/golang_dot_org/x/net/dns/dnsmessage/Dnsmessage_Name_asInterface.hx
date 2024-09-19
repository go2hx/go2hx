package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class Name_asInterface {
    @:keep
    public dynamic function _unpackCompressed(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _allowCompression:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._unpackCompressed(_msg, _off, _allowCompression);
    @:keep
    public dynamic function _unpack(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._unpack(_msg, _off);
    @:keep
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._pack(_msg, _compression, _compressionOff);
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
