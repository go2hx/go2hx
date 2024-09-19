package stdgo._internal.net;
class IP_asInterface {
    @:keep
    public dynamic function equal(_x:stdgo._internal.net.Net_IP.IP):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function mask(_mask:stdgo._internal.net.Net_IPMask.IPMask):stdgo._internal.net.Net_IP.IP return __self__.value.mask(_mask);
    @:keep
    public dynamic function defaultMask():stdgo._internal.net.Net_IPMask.IPMask return __self__.value.defaultMask();
    @:keep
    public dynamic function to16():stdgo._internal.net.Net_IP.IP return __self__.value.to16();
    @:keep
    public dynamic function to4():stdgo._internal.net.Net_IP.IP return __self__.value.to4();
    @:keep
    public dynamic function isGlobalUnicast():Bool return __self__.value.isGlobalUnicast();
    @:keep
    public dynamic function isLinkLocalUnicast():Bool return __self__.value.isLinkLocalUnicast();
    @:keep
    public dynamic function isLinkLocalMulticast():Bool return __self__.value.isLinkLocalMulticast();
    @:keep
    public dynamic function isInterfaceLocalMulticast():Bool return __self__.value.isInterfaceLocalMulticast();
    @:keep
    public dynamic function isMulticast():Bool return __self__.value.isMulticast();
    @:keep
    public dynamic function isPrivate():Bool return __self__.value.isPrivate();
    @:keep
    public dynamic function isLoopback():Bool return __self__.value.isLoopback();
    @:keep
    public dynamic function isUnspecified():Bool return __self__.value.isUnspecified();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_IP.IP>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
