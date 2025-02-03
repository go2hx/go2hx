package stdgo.crypto.elliptic;
class T_p256Curve_static_extension {
    public static function _pointToAffine(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension._pointToAffine(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _pointFromAffine(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension._pointFromAffine(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _normalizeScalar(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:Array<std.UInt>):Array<std.UInt> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension._normalizeScalar(__self__, _0)) i];
    }
    public static function unmarshalCompressed(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.unmarshalCompressed(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unmarshal(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.unmarshal(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.scalarMult(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function scalarBaseMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.scalarBaseMult(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function params(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve):CurveParams {
        return stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.params(__self__);
    }
    public static function isOnCurve(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):Bool {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.isOnCurve(__self__, _0, _1);
    }
    public static function double(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.double(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function combinedMult(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:Array<std.UInt>, _3:Array<std.UInt>):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = ([for (i in _2) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _3 = ([for (i in _3) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.combinedMult(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function add(__self__:stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve.T_p256Curve, _0:stdgo._internal.math.big.Big_Int_.Int_, _1:stdgo._internal.math.big.Big_Int_.Int_, _2:stdgo._internal.math.big.Big_Int_.Int_, _3:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo._internal.math.big.Big_Int_.Int_> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_p256Curve_static_extension.T_p256Curve_static_extension.add(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
