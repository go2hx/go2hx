package stdgo._internal.encoding.asn1;
class BitString_asInterface {
    @:keep
    public dynamic function rightAlign():stdgo.Slice<stdgo.GoUInt8> return __self__.value.rightAlign();
    @:keep
    public dynamic function at(_i:stdgo.GoInt):stdgo.GoInt return __self__.value.at(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.asn1.Asn1_BitString.BitString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
