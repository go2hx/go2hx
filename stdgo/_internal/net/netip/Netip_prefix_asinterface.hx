package stdgo._internal.net.netip;
class Prefix_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_b);
    @:keep
    @:tdfield
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function appendTo(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendTo(_b);
    @:keep
    @:tdfield
    public dynamic function overlaps(_o:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool return @:_0 __self__.value.overlaps(_o);
    @:keep
    @:tdfield
    public dynamic function contains(_ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool return @:_0 __self__.value.contains(_ip);
    @:keep
    @:tdfield
    public dynamic function masked():stdgo._internal.net.netip.Netip_prefix.Prefix return @:_0 __self__.value.masked();
    @:keep
    @:tdfield
    public dynamic function isSingleIP():Bool return @:_0 __self__.value.isSingleIP();
    @:keep
    @:tdfield
    public dynamic function _isZero():Bool return @:_0 __self__.value._isZero();
    @:keep
    @:tdfield
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    @:keep
    @:tdfield
    public dynamic function bits():stdgo.GoInt return @:_0 __self__.value.bits();
    @:keep
    @:tdfield
    public dynamic function addr():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.netip.Netip_prefixpointer.PrefixPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
