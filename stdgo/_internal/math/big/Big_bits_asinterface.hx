package stdgo._internal.math.big;
class Bits_asInterface {
    @:keep
    @:tdfield
    public dynamic function float_():stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_0 __self__.value.float_();
    @:keep
    @:tdfield
    public dynamic function _round(_prec:stdgo.GoUInt, _mode:stdgo._internal.math.big.Big_roundingmode.RoundingMode):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_0 __self__.value._round(_prec, _mode);
    @:keep
    @:tdfield
    public dynamic function _norm():stdgo._internal.math.big.Big_bits.Bits return @:_0 __self__.value._norm();
    @:keep
    @:tdfield
    public dynamic function _mul(_y:stdgo._internal.math.big.Big_bits.Bits):stdgo._internal.math.big.Big_bits.Bits return @:_0 __self__.value._mul(_y);
    @:keep
    @:tdfield
    public dynamic function _add(_y:stdgo._internal.math.big.Big_bits.Bits):stdgo._internal.math.big.Big_bits.Bits return @:_0 __self__.value._add(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_bitspointer.BitsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
