package stdgo.crypto.elliptic;
class Curve_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.scalarBaseMult(t, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.scalarMult(t, _x1, _y1, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.double(t, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_, _x2:stdgo._internal.math.big.Big_Int_.Int_, _y2:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.add(t, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.isOnCurve(t, _x, _y);
    }
    static public function params(t:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve):CurveParams {
        return stdgo._internal.crypto.elliptic.Elliptic_Curve_static_extension.Curve_static_extension.params(t);
    }
}
