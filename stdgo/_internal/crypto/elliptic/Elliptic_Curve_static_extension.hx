package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep class Curve_static_extension {
    @:interfacetypeffun
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.scalarBaseMult(_k);
    @:interfacetypeffun
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.scalarMult(_x1, _y1, _k);
    @:interfacetypeffun
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.double(_x1, _y1);
    @:interfacetypeffun
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return t.add(_x1, _y1, _x2, _y2);
    @:interfacetypeffun
    static public function isOnCurve(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return t.isOnCurve(_x, _y);
    @:interfacetypeffun
    static public function params(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return t.params();
}
