package stdgo.crypto.elliptic;
class CurveParams_static_extension {
    static public function scalarBaseMult(_curve:CurveParams, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.scalarBaseMult(_curve, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(_curve:CurveParams, bx:stdgo._internal.math.big.Big_Int_.Int_, by:stdgo._internal.math.big.Big_Int_.Int_, _k:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final bx = (bx : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final by = (by : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.scalarMult(_curve, bx, by, _k);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _doubleJacobian(_curve:CurveParams, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_, _z:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension._doubleJacobian(_curve, _x, _y, _z);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function double(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.double(_curve, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _addJacobian(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_, _z1:stdgo._internal.math.big.Big_Int_.Int_, _x2:stdgo._internal.math.big.Big_Int_.Int_, _y2:stdgo._internal.math.big.Big_Int_.Int_, _z2:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple.Tuple3<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _z1 = (_z1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _z2 = (_z2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension._addJacobian(_curve, _x1, _y1, _z1, _x2, _y2, _z2);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function add(_curve:CurveParams, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_, _x2:stdgo._internal.math.big.Big_Int_.Int_, _y2:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.add(_curve, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _affineFromJacobian(_curve:CurveParams, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_, _z:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _z = (_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension._affineFromJacobian(_curve, _x, _y, _z);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(_curve:CurveParams, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.isOnCurve(_curve, _x, _y);
    }
    static public function _polynomial(_curve:CurveParams, _x:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension._polynomial(_curve, _x);
    }
    static public function params(_curve:CurveParams):CurveParams {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>);
        return stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension.params(_curve);
    }
}
