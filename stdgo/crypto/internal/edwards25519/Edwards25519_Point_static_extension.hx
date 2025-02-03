package stdgo.crypto.internal.edwards25519;
class Point_static_extension {
    static public function varTimeDoubleScalarBaseMult(_v:Point, _a:Scalar, a:Point, _b:Scalar):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _a = (_a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final a = (a : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _b = (_b : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.varTimeDoubleScalarBaseMult(_v, _a, a, _b);
    }
    static public function scalarMult(_v:Point, _x:Scalar, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.scalarMult(_v, _x, _q);
    }
    static public function scalarBaseMult(_v:Point, _x:Scalar):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _x = (_x : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.scalarBaseMult(_v, _x);
    }
    static public function equal(_v:Point, _u:Point):StdTypes.Int {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.equal(_v, _u);
    }
    static public function negate(_v:Point, _p:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.negate(_v, _p);
    }
    static public function subtract(_v:Point, _p:Point, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.subtract(_v, _p, _q);
    }
    static public function add(_v:Point, _p:Point, _q:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.add(_v, _p, _q);
    }
    static public function _fromP2(_v:Point, _p:T_projP2):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension._fromP2(_v, _p);
    }
    static public function _fromP1xP1(_v:Point, _p:T_projP1xP1):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension._fromP1xP1(_v, _p);
    }
    static public function setBytes(_v:Point, _x:Array<std.UInt>):stdgo.Tuple<Point, stdgo.Error> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _x = ([for (i in _x) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.setBytes(_v, _x);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bytes(_v:Point, _buf:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _buf = (_buf : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension._bytes(_v, _buf)) i];
    }
    static public function bytes(_v:Point):Array<std.UInt> {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return [for (i in stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.bytes(_v)) i];
    }
    static public function set(_v:Point, _u:Point):Point {
        final _v = (_v : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        final _u = (_u : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>);
        return stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point_static_extension.Point_static_extension.set(_v, _u);
    }
}
