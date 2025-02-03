package stdgo.crypto.elliptic;
class T_nistCurve_static_extension {
    static public function unmarshalCompressed(_curve:T_nistCurve<Dynamic>, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.unmarshalCompressed(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshal(_curve:T_nistCurve<Dynamic>, _data:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.unmarshal(_curve, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function combinedMult(_curve:T_nistCurve<Dynamic>, px:stdgo._internal.math.big.Big_Int_.Int_, py:stdgo._internal.math.big.Big_Int_.Int_, _s1:Array<std.UInt>, _s2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final px = (px : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final py = (py : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _s1 = ([for (i in _s1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s2 = ([for (i in _s2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.combinedMult(_curve, px, py, _s1, _s2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarBaseMult(_curve:T_nistCurve<Dynamic>, _scalar:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.scalarBaseMult(_curve, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(_curve:T_nistCurve<Dynamic>, bx:stdgo._internal.math.big.Big_Int_.Int_, by:stdgo._internal.math.big.Big_Int_.Int_, _scalar:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final bx = (bx : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final by = (by : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.scalarMult(_curve, bx, by, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _normalizeScalar(_curve:T_nistCurve<Dynamic>, _scalar:Array<std.UInt>):Array<std.UInt> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension._normalizeScalar(_curve, _scalar)) i];
    }
    static public function double(_curve:T_nistCurve<Dynamic>, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.double(_curve, _x1, _y1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function add(_curve:T_nistCurve<Dynamic>, _x1:stdgo._internal.math.big.Big_Int_.Int_, _y1:stdgo._internal.math.big.Big_Int_.Int_, _x2:stdgo._internal.math.big.Big_Int_.Int_, _y2:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _x1 = (_x1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y1 = (_y1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _x2 = (_x2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y2 = (_y2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.add(_curve, _x1, _y1, _x2, _y2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pointToAffine(_curve:T_nistCurve<Dynamic>, _p:Dynamic):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension._pointToAffine(_curve, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _pointFromAffine(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension._pointFromAffine(_curve, _x, _y);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isOnCurve(_curve:T_nistCurve<Dynamic>, _x:stdgo._internal.math.big.Big_Int_.Int_, _y:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        final _x = (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _y = (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.isOnCurve(_curve, _x, _y);
    }
    static public function params(_curve:T_nistCurve<Dynamic>):CurveParams {
        final _curve = (_curve : stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve.T_nistCurve<Dynamic>>);
        return stdgo._internal.crypto.elliptic.Elliptic_T_nistCurve_static_extension.T_nistCurve_static_extension.params(_curve);
    }
}
