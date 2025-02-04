package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.T_p256Curve_asInterface) class T_p256Curve_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _pointToAffine( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__._pointToAffine(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pointFromAffine( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>; var _1 : stdgo.Error; } return @:_5 __self__._pointFromAffine(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _normalizeScalar( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__._normalizeScalar(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshalCompressed( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.unmarshalCompressed(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshal( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.unmarshal(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function scalarMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarMult(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.scalarBaseMult(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function params( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:_5 __self__.params();
    @:embedded
    @:embeddededffieldsffun
    public static function isOnCurve( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return @:_5 __self__.isOnCurve(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function double( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.double(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function combinedMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.combinedMult(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function add( __self__:stdgo._internal.crypto.elliptic.Elliptic_t_p256curve.T_p256Curve, _0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _3:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:_5 __self__.add(_0, _1, _2, _3);
}
