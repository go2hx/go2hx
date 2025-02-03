package stdgo.crypto.internal.nistec;
class P384Point_static_extension {
    static public function scalarBaseMult(_p:P384Point, _scalar:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P384Point):haxe.ds.Vector<T_p384Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P384Point, _q:P384Point, _scalar:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P384Point, _p1:P384Point, _p2:P384Point, _cond:StdTypes.Int):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P384Point, _p:P384Point):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P384Point, _p1:P384Point, _p2:P384Point):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P384Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P384Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P384Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P384Point, _b:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P384Point, _q:P384Point):P384Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P384Point):P384Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_P384Point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_P384Point_static_extension.P384Point_static_extension.setGenerator(_p);
    }
}
