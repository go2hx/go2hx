package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.T_p256Curve_asInterface) class T_p256Curve_static_extension {
    @:embedded
    public static function _pointToAffine( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, __0:stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__._pointToAffine(__0);
    @:embedded
    public static function _pointFromAffine( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.Nistec_P256Point.P256Point>; var _1 : stdgo.Error; } return __self__._pointFromAffine(_x, _y);
    @:embedded
    public static function _normalizeScalar( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, __0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__._normalizeScalar(__0);
    @:embedded
    public static function unmarshalCompressed( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.unmarshalCompressed(__0);
    @:embedded
    public static function unmarshal( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.unmarshal(__0);
    @:embedded
    public static function scalarMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarMult(bx, by, _k);
    @:embedded
    public static function scalarBaseMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, __0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.scalarBaseMult(__0);
    @:embedded
    public static function params( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return __self__.params();
    @:embedded
    public static function isOnCurve( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return __self__.isOnCurve(_x, _y);
    @:embedded
    public static function double( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.double(_x, _y);
    @:embedded
    public static function combinedMult( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, px:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.combinedMult(px, py, _s1, _s2);
    @:embedded
    public static function add( __self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.add(_x1, _y1, _x2, _y2);
}
