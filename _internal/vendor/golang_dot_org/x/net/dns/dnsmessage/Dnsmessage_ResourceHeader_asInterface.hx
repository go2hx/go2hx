package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class ResourceHeader_asInterface {
    @:keep
    public dynamic function extendedRCode(_rcode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode):_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode return __self__.value.extendedRCode(_rcode);
    @:keep
    public dynamic function dnssecallowed():Bool return __self__.value.dnssecallowed();
    @:keep
    public dynamic function setEDNS0(_udpPayloadLen:stdgo.GoInt, _extRCode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode, _dnssecOK:Bool):stdgo.Error return __self__.value.setEDNS0(_udpPayloadLen, _extRCode, _dnssecOK);
    @:keep
    public dynamic function _fixLen(_msg:stdgo.Slice<stdgo.GoUInt8>, _lenOff:stdgo.GoInt, _preLen:stdgo.GoInt):stdgo.Error return __self__.value._fixLen(_msg, _lenOff, _preLen);
    @:keep
    public dynamic function _unpack(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._unpack(_msg, _off);
    @:keep
    public dynamic function _pack(_oldMsg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._pack(_oldMsg, _compression, _compressionOff);
    @:keep
    public dynamic function goString():stdgo.GoString return __self__.value.goString();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
