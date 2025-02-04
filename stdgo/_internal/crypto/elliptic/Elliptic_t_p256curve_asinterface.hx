package stdgo._internal.crypto.elliptic;
class T_p256Curve_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pointToAffine(_0:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value._pointToAffine(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pointFromAffine(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:_0 __self__.value._pointFromAffine(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _normalizeScalar(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._normalizeScalar(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unmarshalCompressed(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.unmarshalCompressed(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.unmarshal(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function scalarMult(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.scalarMult(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.scalarBaseMult(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:_0 __self__.value.params();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isOnCurve(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return @:_0 __self__.value.isOnCurve(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function double(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.double(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function combinedMult(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.combinedMult(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function add(_0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_0 __self__.value.add(_0, _1, _2, _3);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.elliptic.Elliptic_t_p256curvepointer.T_p256CurvePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
