package stdgo.crypto.internal.nistec;
class P256Point_static_extension {
    static public function scalarBaseMult(_p:P256Point, _scalar:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P256Point):haxe.ds.Vector<T_p256Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P256Point, _q:P256Point, _scalar:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P256Point, _p1:P256Point, _p2:P256Point, _cond:StdTypes.Int):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P256Point, _p:P256Point):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P256Point, _p1:P256Point, _p2:P256Point):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P256Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P256Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P256Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P256Point, _b:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P256Point, _q:P256Point):P256Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P256Point):P256Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P256Point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P256Point_static_extension.P256Point_static_extension.setGenerator(_p);
    }
}
