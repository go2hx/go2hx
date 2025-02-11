package stdgo.crypto.internal.nistec;
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P224Point_static_extension) abstract P224Point(stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point) from stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point to stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point {
    public var _x(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element;
    function get__x():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element return this._x;
    function set__x(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return v;
    }
    public var _y(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element;
    function get__y():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element return this._y;
    function set__y(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return v;
    }
    public var _z(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element;
    function get__z():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element return this._z;
    function set__z(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>);
        return v;
    }
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element, ?_y:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element, ?_z:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element.P224Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P256Point_static_extension) abstract P256Point(stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point) from stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point to stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point {
    public var _x(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element;
    function get__x():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element return this._x;
    function set__x(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return v;
    }
    public var _y(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element;
    function get__y():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element return this._y;
    function set__y(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return v;
    }
    public var _z(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element;
    function get__z():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element return this._z;
    function set__z(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>);
        return v;
    }
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element, ?_y:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element, ?_z:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P384Point_static_extension) abstract P384Point(stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point) from stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point to stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point {
    public var _x(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element;
    function get__x():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element return this._x;
    function set__x(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return v;
    }
    public var _y(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element;
    function get__y():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element return this._y;
    function set__y(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return v;
    }
    public var _z(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element;
    function get__z():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element return this._z;
    function set__z(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>);
        return v;
    }
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element, ?_y:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element, ?_z:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p384element.P384Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.internal.nistec.Nistec.P521Point_static_extension) abstract P521Point(stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point) from stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point to stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point {
    public var _x(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element;
    function get__x():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element return this._x;
    function set__x(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element {
        this._x = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return v;
    }
    public var _y(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element;
    function get__y():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element return this._y;
    function set__y(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element {
        this._y = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return v;
    }
    public var _z(get, set) : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element;
    function get__z():stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element return this._z;
    function set__z(v:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element):stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element {
        this._z = (v : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>);
        return v;
    }
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element, ?_y:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element, ?_z:stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element) this = new stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point((_x : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), (_y : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>), (_z : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element.P521Element>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_p224Table = stdgo._internal.crypto.internal.nistec.Nistec_t_p224table.T_p224Table;
@:dox(hide) typedef T_p256Table = stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table;
@:dox(hide) typedef T_p384Table = stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table;
@:dox(hide) typedef T_p521Table = stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table;
typedef P224PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p224pointpointer.P224PointPointer;
class P224Point_static_extension {
    static public function scalarBaseMult(_p:P224Point, _scalar:Array<std.UInt>):stdgo.Tuple<P224Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P224Point):haxe.ds.Vector<T_p224Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P224Point, _q:P224Point, _scalar:Array<std.UInt>):stdgo.Tuple<P224Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P224Point, _p1:P224Point, _p2:P224Point, _cond:StdTypes.Int):P224Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P224Point, _p:P224Point):P224Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P224Point, _p1:P224Point, _p2:P224Point):P224Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P224Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P224Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P224Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P224Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P224Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P224Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P224Point, _b:Array<std.UInt>):stdgo.Tuple<P224Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P224Point, _q:P224Point):P224Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P224Point):P224Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p224point_static_extension.P224Point_static_extension.setGenerator(_p);
    }
}
typedef P256PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p256pointpointer.P256PointPointer;
class P256Point_static_extension {
    static public function scalarBaseMult(_p:P256Point, _scalar:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P256Point):haxe.ds.Vector<T_p256Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P256Point, _q:P256Point, _scalar:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P256Point, _p1:P256Point, _p2:P256Point, _cond:StdTypes.Int):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P256Point, _p:P256Point):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P256Point, _p1:P256Point, _p2:P256Point):P256Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P256Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P256Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P256Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P256Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P256Point, _b:Array<std.UInt>):stdgo.Tuple<P256Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P256Point, _q:P256Point):P256Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P256Point):P256Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p256point_static_extension.P256Point_static_extension.setGenerator(_p);
    }
}
typedef P384PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p384pointpointer.P384PointPointer;
class P384Point_static_extension {
    static public function scalarBaseMult(_p:P384Point, _scalar:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P384Point):haxe.ds.Vector<T_p384Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P384Point, _q:P384Point, _scalar:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P384Point, _p1:P384Point, _p2:P384Point, _cond:StdTypes.Int):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P384Point, _p:P384Point):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P384Point, _p1:P384Point, _p2:P384Point):P384Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P384Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P384Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P384Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P384Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P384Point, _b:Array<std.UInt>):stdgo.Tuple<P384Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P384Point, _q:P384Point):P384Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P384Point):P384Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p384point_static_extension.P384Point_static_extension.setGenerator(_p);
    }
}
typedef P521PointPointer = stdgo._internal.crypto.internal.nistec.Nistec_p521pointpointer.P521PointPointer;
class P521Point_static_extension {
    static public function scalarBaseMult(_p:P521Point, _scalar:Array<std.UInt>):stdgo.Tuple<P521Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.scalarBaseMult(_p, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _generatorTable(_p:P521Point):haxe.ds.Vector<T_p521Table> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension._generatorTable(_p);
    }
    static public function scalarMult(_p:P521Point, _q:P521Point, _scalar:Array<std.UInt>):stdgo.Tuple<P521Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _scalar = ([for (i in _scalar) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.scalarMult(_p, _q, _scalar);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function select(_q:P521Point, _p1:P521Point, _p2:P521Point, _cond:StdTypes.Int):P521Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _cond = (_cond : stdgo.GoInt);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.select(_q, _p1, _p2, _cond);
    }
    static public function double(_q:P521Point, _p:P521Point):P521Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.double(_q, _p);
    }
    static public function add(_q:P521Point, _p1:P521Point, _p2:P521Point):P521Point {
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _p1 = (_p1 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _p2 = (_p2 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.add(_q, _p1, _p2);
    }
    static public function _bytesCompressed(_p:P521Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension._bytesCompressed(_p, _out)) i];
    }
    static public function bytesCompressed(_p:P521Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.bytesCompressed(_p)) i];
    }
    static public function _bytesX(_p:P521Point, _out:haxe.ds.Vector<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension._bytesX(_p, _out);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function bytesX(_p:P521Point):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.bytesX(_p);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _bytes(_p:P521Point, _out:haxe.ds.Vector<std.UInt>):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _out = (_out : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension._bytes(_p, _out)) i];
    }
    static public function bytes(_p:P521Point):Array<std.UInt> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return [for (i in stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.bytes(_p)) i];
    }
    static public function setBytes(_p:P521Point, _b:Array<std.UInt>):stdgo.Tuple<P521Point, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.setBytes(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function set(_p:P521Point, _q:P521Point):P521Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _q = (_q : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.set(_p, _q);
    }
    static public function setGenerator(_p:P521Point):P521Point {
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        return stdgo._internal.crypto.internal.nistec.Nistec_p521point_static_extension.P521Point_static_extension.setGenerator(_p);
    }
}
@:dox(hide) typedef T_p224TablePointer = stdgo._internal.crypto.internal.nistec.Nistec_t_p224tablepointer.T_p224TablePointer;
@:dox(hide) class T_p224Table_static_extension {
    static public function select(_table:T_p224Table, _p:P224Point, _n:std.UInt):Void {
        final _table = (_table : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p224table.T_p224Table>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p224point.P224Point>);
        final _n = (_n : stdgo.GoUInt8);
        stdgo._internal.crypto.internal.nistec.Nistec_t_p224table_static_extension.T_p224Table_static_extension.select(_table, _p, _n);
    }
}
@:dox(hide) typedef T_p256TablePointer = stdgo._internal.crypto.internal.nistec.Nistec_t_p256tablepointer.T_p256TablePointer;
@:dox(hide) class T_p256Table_static_extension {
    static public function select(_table:T_p256Table, _p:P256Point, _n:std.UInt):Void {
        final _table = (_table : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p256table.T_p256Table>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p256point.P256Point>);
        final _n = (_n : stdgo.GoUInt8);
        stdgo._internal.crypto.internal.nistec.Nistec_t_p256table_static_extension.T_p256Table_static_extension.select(_table, _p, _n);
    }
}
@:dox(hide) typedef T_p384TablePointer = stdgo._internal.crypto.internal.nistec.Nistec_t_p384tablepointer.T_p384TablePointer;
@:dox(hide) class T_p384Table_static_extension {
    static public function select(_table:T_p384Table, _p:P384Point, _n:std.UInt):Void {
        final _table = (_table : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p384table.T_p384Table>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p384point.P384Point>);
        final _n = (_n : stdgo.GoUInt8);
        stdgo._internal.crypto.internal.nistec.Nistec_t_p384table_static_extension.T_p384Table_static_extension.select(_table, _p, _n);
    }
}
@:dox(hide) typedef T_p521TablePointer = stdgo._internal.crypto.internal.nistec.Nistec_t_p521tablepointer.T_p521TablePointer;
@:dox(hide) class T_p521Table_static_extension {
    static public function select(_table:T_p521Table, _p:P521Point, _n:std.UInt):Void {
        final _table = (_table : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_t_p521table.T_p521Table>);
        final _p = (_p : stdgo.Ref<stdgo._internal.crypto.internal.nistec.Nistec_p521point.P521Point>);
        final _n = (_n : stdgo.GoUInt8);
        stdgo._internal.crypto.internal.nistec.Nistec_t_p521table_static_extension.T_p521Table_static_extension.select(_table, _p, _n);
    }
}
/**
    * Package nistec implements the NIST P elliptic curves from FIPS 186-4.
    * 
    * This package uses fiat-crypto or specialized assembly and Go code for its
    * backend field arithmetic (not math/big) and exposes constant-time, heap
    * allocation-free, byte slice-based safe APIs. Group operations use modern and
    * safe complete addition formulas where possible. The point at infinity is
    * handled and encoded according to SEC 1, Version 2.0, and invalid curve points
    * can't be represented.
**/
class Nistec {
    /**
        * NewP224Point returns a new P224Point representing the point at infinity point.
    **/
    static public inline function newP224Point():P224Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newp224point.newP224Point();
    }
    /**
        * NewP256Point returns a new P256Point representing the point at infinity point.
    **/
    static public inline function newP256Point():P256Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newp256point.newP256Point();
    }
    static public inline function p256OrdInverse(_k:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _k = ([for (i in _k) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.internal.nistec.Nistec_p256ordinverse.p256OrdInverse(_k);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * NewP384Point returns a new P384Point representing the point at infinity point.
    **/
    static public inline function newP384Point():P384Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newp384point.newP384Point();
    }
    /**
        * NewP521Point returns a new P521Point representing the point at infinity point.
    **/
    static public inline function newP521Point():P521Point {
        return stdgo._internal.crypto.internal.nistec.Nistec_newp521point.newP521Point();
    }
}
