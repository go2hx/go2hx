package stdgo._internal.net;
class IP_asInterface {
    @:keep
    @:tdfield
    public dynamic function equal(_x:stdgo._internal.net.Net_ip.IP):Bool return @:_0 __self__.value.equal(_x);
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function mask(_mask:stdgo._internal.net.Net_ipmask.IPMask):stdgo._internal.net.Net_ip.IP return @:_0 __self__.value.mask(_mask);
    @:keep
    @:tdfield
    public dynamic function defaultMask():stdgo._internal.net.Net_ipmask.IPMask return @:_0 __self__.value.defaultMask();
    @:keep
    @:tdfield
    public dynamic function to16():stdgo._internal.net.Net_ip.IP return @:_0 __self__.value.to16();
    @:keep
    @:tdfield
    public dynamic function to4():stdgo._internal.net.Net_ip.IP return @:_0 __self__.value.to4();
    @:keep
    @:tdfield
    public dynamic function isGlobalUnicast():Bool return @:_0 __self__.value.isGlobalUnicast();
    @:keep
    @:tdfield
    public dynamic function isLinkLocalUnicast():Bool return @:_0 __self__.value.isLinkLocalUnicast();
    @:keep
    @:tdfield
    public dynamic function isLinkLocalMulticast():Bool return @:_0 __self__.value.isLinkLocalMulticast();
    @:keep
    @:tdfield
    public dynamic function isInterfaceLocalMulticast():Bool return @:_0 __self__.value.isInterfaceLocalMulticast();
    @:keep
    @:tdfield
    public dynamic function isMulticast():Bool return @:_0 __self__.value.isMulticast();
    @:keep
    @:tdfield
    public dynamic function isPrivate():Bool return @:_0 __self__.value.isPrivate();
    @:keep
    @:tdfield
    public dynamic function isLoopback():Bool return @:_0 __self__.value.isLoopback();
    @:keep
    @:tdfield
    public dynamic function isUnspecified():Bool return @:_0 __self__.value.isUnspecified();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_ippointer.IPPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
