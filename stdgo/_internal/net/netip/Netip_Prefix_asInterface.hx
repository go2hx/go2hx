package stdgo._internal.net.netip;
class Prefix_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function unmarshalBinary(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalBinary(_b);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalBinary();
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function appendTo(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.appendTo(_b);
    @:keep
    public dynamic function overlaps(_o:stdgo._internal.net.netip.Netip_Prefix.Prefix):Bool return __self__.value.overlaps(_o);
    @:keep
    public dynamic function contains(_ip:stdgo._internal.net.netip.Netip_Addr.Addr):Bool return __self__.value.contains(_ip);
    @:keep
    public dynamic function masked():stdgo._internal.net.netip.Netip_Prefix.Prefix return __self__.value.masked();
    @:keep
    public dynamic function isSingleIP():Bool return __self__.value.isSingleIP();
    @:keep
    public dynamic function _isZero():Bool return __self__.value._isZero();
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    @:keep
    public dynamic function bits():stdgo.GoInt return __self__.value.bits();
    @:keep
    public dynamic function addr():stdgo._internal.net.netip.Netip_Addr.Addr return __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.netip.Netip_Prefix.Prefix>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
