package stdgo._internal.crypto.ecdsa;
class T_nistCurve_asInterface<Point> {
    @:keep
    @:tdfield
    public var _pointToAffine : (_p:Dynamic) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Error; };
    @:keep
    @:tdfield
    public var _pointFromAffine : (_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : Dynamic; var _1 : stdgo.Error; };
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurvepointer.T_nistCurvePointer<Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
