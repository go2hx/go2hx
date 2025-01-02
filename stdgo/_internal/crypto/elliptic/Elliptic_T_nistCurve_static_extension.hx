package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalCompressed<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function unmarshal<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function combinedMult<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, px:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function scalarBaseMult<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function scalarMult<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function _normalizeScalar<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function double<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function add<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function _pointToAffine<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _p:Dynamic):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function _pointFromAffine<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : Dynamic; var _1 : stdgo.Error; } throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function isOnCurve<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool throw "generic function is not supported";
    @:keep
    @:tdfield
    static public function params<Dynamic>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> throw "generic function is not supported";
}
