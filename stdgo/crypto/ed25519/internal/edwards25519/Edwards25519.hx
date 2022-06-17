package stdgo.crypto.ed25519.internal.edwards25519;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _feOne : Ref<crypto.ed25519.internal.edwards25519.field.Field.Element> = new crypto.ed25519.internal.edwards25519.field.Field.Element().one();
var _d : Ref<crypto.ed25519.internal.edwards25519.field.Field.Element> = new crypto.ed25519.internal.edwards25519.field.Field.Element().setBytes(((new Slice<GoByte>(
((163 : GoUInt8)),
((120 : GoUInt8)),
((89 : GoUInt8)),
((19 : GoUInt8)),
((202 : GoUInt8)),
((77 : GoUInt8)),
((235 : GoUInt8)),
((117 : GoUInt8)),
((171 : GoUInt8)),
((216 : GoUInt8)),
((65 : GoUInt8)),
((65 : GoUInt8)),
((77 : GoUInt8)),
((10 : GoUInt8)),
((112 : GoUInt8)),
((0 : GoUInt8)),
((152 : GoUInt8)),
((232 : GoUInt8)),
((121 : GoUInt8)),
((119 : GoUInt8)),
((121 : GoUInt8)),
((64 : GoUInt8)),
((199 : GoUInt8)),
((140 : GoUInt8)),
((115 : GoUInt8)),
((254 : GoUInt8)),
((111 : GoUInt8)),
((43 : GoUInt8)),
((238 : GoUInt8)),
((108 : GoUInt8)),
((3 : GoUInt8)),
((82 : GoUInt8))) : Slice<GoByte>)));
var _identity = __tmp__3._0;
var _generator = __tmp__5._0;
var _d2 : Ref<crypto.ed25519.internal.edwards25519.field.Field.Element> = new crypto.ed25519.internal.edwards25519.field.Field.Element().add(_d, _d);
var _scZero : Scalar = ((new Scalar(((new GoArray<GoUInt8>(
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : GoArray<GoByte>))) : Scalar));
var _scOne : Scalar = ((new Scalar(((new GoArray<GoUInt8>(
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : GoArray<GoByte>))) : Scalar));
var _scMinusOne : Scalar = ((new Scalar(((new GoArray<GoUInt8>(
((236 : GoUInt8)),
((211 : GoUInt8)),
((245 : GoUInt8)),
((92 : GoUInt8)),
((26 : GoUInt8)),
((99 : GoUInt8)),
((18 : GoUInt8)),
((88 : GoUInt8)),
((214 : GoUInt8)),
((156 : GoUInt8)),
((247 : GoUInt8)),
((162 : GoUInt8)),
((222 : GoUInt8)),
((249 : GoUInt8)),
((222 : GoUInt8)),
((20 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((16 : GoUInt8))) : GoArray<GoByte>))) : Scalar));
var __tmp__3 = new Point().setBytes(((new Slice<GoByte>(
((1 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8)),
((0 : GoUInt8))) : Slice<GoByte>)));
var _4 = __tmp__3._1;
var __tmp__5 = new Point().setBytes(((new Slice<GoByte>(
((88 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8)),
((102 : GoUInt8))) : Slice<GoByte>)));
var _6 = __tmp__5._1;
var _basepointTablePrecomp : T__struct_0 = new T__struct_0();
var _basepointNafTablePrecomp : T__struct_1 = new T__struct_1();
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_projP1xP1_static_extension) class T_projP1xP1 {
    public var x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t:crypto.ed25519.internal.edwards25519.field.Field.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
        if (t != null) this.t = t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projP1xP1(x, y, z, t);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_projP2_static_extension) class T_projP2 {
    public var x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projP2(x, y, z);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.Point_static_extension) class Point {
    public var _x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _t : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _2 : T_incomparable = new T_incomparable();
    public function new(?_x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_t:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_2:T_incomparable) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
        if (_t != null) this._t = _t;
        if (_2 != null) this._2 = _2;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Point(_x, _y, _z, _t, _2);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_projCached_static_extension) class T_projCached {
    public var yplusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var yminusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t2d : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t2d:crypto.ed25519.internal.edwards25519.field.Field.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (z != null) this.z = z;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projCached(yplusX, yminusX, z, t2d);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_affineCached_static_extension) class T_affineCached {
    public var yplusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var yminusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t2d : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t2d:crypto.ed25519.internal.edwards25519.field.Field.Element) {
        if (yplusX != null) this.yplusX = yplusX;
        if (yminusX != null) this.yminusX = yminusX;
        if (t2d != null) this.t2d = t2d;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.Scalar_static_extension) class Scalar {
    public var _s : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
    public function new(?_s:GoArray<GoUInt8>) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Scalar(_s);
    }
}
@:structInit @:local class T__struct_0 {
    public var _table : GoArray<T_affineLookupTable> = new GoArray<T_affineLookupTable>(...[for (i in 0 ... 32) new T_affineLookupTable()]);
    public var _initOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public function toString():String return "{" + Go.string(_table) + " " + Go.string(_initOnce) + "}";
    public function new(?_table:GoArray<T_affineLookupTable>, ?_initOnce:stdgo.sync.Sync.Once, ?toString) {
        if (_table != null) this._table = _table;
        if (_initOnce != null) this._initOnce = _initOnce;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_table, _initOnce);
    }
}
@:structInit @:local class T__struct_1 {
    public var _table : T_nafLookupTable8 = new T_nafLookupTable8();
    public var _initOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public function toString():String return "{" + Go.string(_table) + " " + Go.string(_initOnce) + "}";
    public function new(?_table:T_nafLookupTable8, ?_initOnce:stdgo.sync.Sync.Once, ?toString) {
        if (_table != null) this._table = _table;
        if (_initOnce != null) this._initOnce = _initOnce;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_table, _initOnce);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_projLookupTable_static_extension) class T_projLookupTable {
    public var _points : GoArray<T_projCached> = new GoArray<T_projCached>(...[for (i in 0 ... 8) new T_projCached()]);
    public function new(?_points:GoArray<T_projCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projLookupTable(_points);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_affineLookupTable_static_extension) class T_affineLookupTable {
    public var _points : GoArray<T_affineCached> = new GoArray<T_affineCached>(...[for (i in 0 ... 8) new T_affineCached()]);
    public function new(?_points:GoArray<T_affineCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_affineLookupTable(_points);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_nafLookupTable5_static_extension) class T_nafLookupTable5 {
    public var _points : GoArray<T_projCached> = new GoArray<T_projCached>(...[for (i in 0 ... 8) new T_projCached()]);
    public function new(?_points:GoArray<T_projCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable5(_points);
    }
}
@:structInit @:using(crypto.ed25519.internal.edwards25519.Edwards25519.T_nafLookupTable8_static_extension) class T_nafLookupTable8 {
    public var _points : GoArray<T_affineCached> = new GoArray<T_affineCached>(...[for (i in 0 ... 64) new T_affineCached()]);
    public function new(?_points:GoArray<T_affineCached>) {
        if (_points != null) this._points = _points;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable8(_points);
    }
}
@:named typedef T_incomparable = GoArray<() -> Void>;
function _checkInitialized(_points:haxe.Rest<Point>):Void {
        var _points = new Slice<Point>(..._points);
        for (_0 => _p in _points) {
            if ((_p._x == (((new crypto.ed25519.internal.edwards25519.field.Field.Element() : crypto.ed25519.internal.edwards25519.field.Field.Element)))) && (_p._y == (((new crypto.ed25519.internal.edwards25519.field.Field.Element() : crypto.ed25519.internal.edwards25519.field.Field.Element))))) {
                throw Go.toInterface(((("edwards25519: use of uninitialized Point" : GoString))));
            };
        };
    }
/**
    // NewIdentityPoint returns a new Point set to the identity.
**/
function newIdentityPoint():Point {
        return new Point().set(_identity);
    }
/**
    // NewGeneratorPoint returns a new Point set to the canonical generator.
**/
function newGeneratorPoint():Point {
        return new Point().set(_generator);
    }
function _copyFieldElement(_buf:GoArray<GoByte>, _v:crypto.ed25519.internal.edwards25519.field.Field.Element):Slice<GoByte> {
        Go.copySlice(((_buf.__slice__(0) : Slice<GoUInt8>)), _v.bytes());
        return ((_buf.__slice__(0) : Slice<GoUInt8>));
    }
/**
    // NewScalar returns a new zero Scalar.
**/
function newScalar():Scalar {
        return ((new Scalar() : Scalar));
    }
/**
    // isReduced returns whether the given scalar is reduced modulo l.
**/
function _isReduced(_s:Scalar):Bool {
        {
            var _i:GoInt = ((31 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if ((_s._s != null ? _s._s[_i] : ((0 : GoUInt8))) > (_scMinusOne._s != null ? _scMinusOne._s[_i] : ((0 : GoUInt8)))) {
                    return false;
                } else if ((_s._s != null ? _s._s[_i] : ((0 : GoUInt8))) < (_scMinusOne._s != null ? _scMinusOne._s[_i] : ((0 : GoUInt8)))) {
                    return true;
                };
            });
        };
        return true;
    }
function _load3(_in:Slice<GoByte>):GoInt64 {
        var _r:GoInt64 = (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt64));
        _r = _r | ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((8 : GoUnTypedInt)));
        _r = _r | ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((16 : GoUnTypedInt)));
        return _r;
    }
function _load4(_in:Slice<GoByte>):GoInt64 {
        var _r:GoInt64 = (((_in != null ? _in[((0 : GoInt))] : ((0 : GoUInt8))) : GoInt64));
        _r = _r | ((((_in != null ? _in[((1 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((8 : GoUnTypedInt)));
        _r = _r | ((((_in != null ? _in[((2 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((16 : GoUnTypedInt)));
        _r = _r | ((((_in != null ? _in[((3 : GoInt))] : ((0 : GoUInt8))) : GoInt64)) << ((24 : GoUnTypedInt)));
        return _r;
    }
/**
    // Input:
    //   a[0]+256*a[1]+...+256^31*a[31] = a
    //   b[0]+256*b[1]+...+256^31*b[31] = b
    //   c[0]+256*c[1]+...+256^31*c[31] = c
    //
    // Output:
    //   s[0]+256*s[1]+...+256^31*s[31] = (ab+c) mod l
    //   where l = 2^252 + 27742317777372353535851937790883648493.
**/
function _scMulAdd(_s:GoArray<GoByte>, _a:GoArray<GoByte>, _b:GoArray<GoByte>, _c:GoArray<GoByte>):Void {
        var _a0:GoInt64 = ((2097151 : GoInt64)) & _load3(((_a.__slice__(0) : Slice<GoUInt8>)));
        var _a1:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_a.__slice__(((2 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _a2:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_a.__slice__(((5 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _a3:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_a.__slice__(((7 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _a4:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_a.__slice__(((10 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _a5:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_a.__slice__(((13 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _a6:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_a.__slice__(((15 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _a7:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_a.__slice__(((18 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        var _a8:GoInt64 = ((2097151 : GoInt64)) & _load3(((_a.__slice__(((21 : GoInt))) : Slice<GoUInt8>)));
        var _a9:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_a.__slice__(((23 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _a10:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_a.__slice__(((26 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _a11:GoInt64 = (_load4(((_a.__slice__(((28 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _b0:GoInt64 = ((2097151 : GoInt64)) & _load3(((_b.__slice__(0) : Slice<GoUInt8>)));
        var _b1:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_b.__slice__(((2 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _b2:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_b.__slice__(((5 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _b3:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_b.__slice__(((7 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _b4:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_b.__slice__(((10 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _b5:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_b.__slice__(((13 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _b6:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_b.__slice__(((15 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _b7:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_b.__slice__(((18 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        var _b8:GoInt64 = ((2097151 : GoInt64)) & _load3(((_b.__slice__(((21 : GoInt))) : Slice<GoUInt8>)));
        var _b9:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_b.__slice__(((23 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _b10:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_b.__slice__(((26 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _b11:GoInt64 = (_load4(((_b.__slice__(((28 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _c0:GoInt64 = ((2097151 : GoInt64)) & _load3(((_c.__slice__(0) : Slice<GoUInt8>)));
        var _c1:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_c.__slice__(((2 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _c2:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_c.__slice__(((5 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _c3:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_c.__slice__(((7 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _c4:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_c.__slice__(((10 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _c5:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_c.__slice__(((13 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _c6:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_c.__slice__(((15 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _c7:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_c.__slice__(((18 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        var _c8:GoInt64 = ((2097151 : GoInt64)) & _load3(((_c.__slice__(((21 : GoInt))) : Slice<GoUInt8>)));
        var _c9:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_c.__slice__(((23 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _c10:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_c.__slice__(((26 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _c11:GoInt64 = (_load4(((_c.__slice__(((28 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0 ... 23) ((0 : GoInt64))]);
        var _s0:GoInt64 = _c0 + (_a0 * _b0);
        var _s1:GoInt64 = (_c1 + (_a0 * _b1)) + (_a1 * _b0);
        var _s2:GoInt64 = ((_c2 + (_a0 * _b2)) + (_a1 * _b1)) + (_a2 * _b0);
        var _s3:GoInt64 = (((_c3 + (_a0 * _b3)) + (_a1 * _b2)) + (_a2 * _b1)) + (_a3 * _b0);
        var _s4:GoInt64 = ((((_c4 + (_a0 * _b4)) + (_a1 * _b3)) + (_a2 * _b2)) + (_a3 * _b1)) + (_a4 * _b0);
        var _s5:GoInt64 = (((((_c5 + (_a0 * _b5)) + (_a1 * _b4)) + (_a2 * _b3)) + (_a3 * _b2)) + (_a4 * _b1)) + (_a5 * _b0);
        var _s6:GoInt64 = ((((((_c6 + (_a0 * _b6)) + (_a1 * _b5)) + (_a2 * _b4)) + (_a3 * _b3)) + (_a4 * _b2)) + (_a5 * _b1)) + (_a6 * _b0);
        var _s7:GoInt64 = (((((((_c7 + (_a0 * _b7)) + (_a1 * _b6)) + (_a2 * _b5)) + (_a3 * _b4)) + (_a4 * _b3)) + (_a5 * _b2)) + (_a6 * _b1)) + (_a7 * _b0);
        var _s8:GoInt64 = ((((((((_c8 + (_a0 * _b8)) + (_a1 * _b7)) + (_a2 * _b6)) + (_a3 * _b5)) + (_a4 * _b4)) + (_a5 * _b3)) + (_a6 * _b2)) + (_a7 * _b1)) + (_a8 * _b0);
        var _s9:GoInt64 = (((((((((_c9 + (_a0 * _b9)) + (_a1 * _b8)) + (_a2 * _b7)) + (_a3 * _b6)) + (_a4 * _b5)) + (_a5 * _b4)) + (_a6 * _b3)) + (_a7 * _b2)) + (_a8 * _b1)) + (_a9 * _b0);
        var _s10:GoInt64 = ((((((((((_c10 + (_a0 * _b10)) + (_a1 * _b9)) + (_a2 * _b8)) + (_a3 * _b7)) + (_a4 * _b6)) + (_a5 * _b5)) + (_a6 * _b4)) + (_a7 * _b3)) + (_a8 * _b2)) + (_a9 * _b1)) + (_a10 * _b0);
        var _s11:GoInt64 = (((((((((((_c11 + (_a0 * _b11)) + (_a1 * _b10)) + (_a2 * _b9)) + (_a3 * _b8)) + (_a4 * _b7)) + (_a5 * _b6)) + (_a6 * _b5)) + (_a7 * _b4)) + (_a8 * _b3)) + (_a9 * _b2)) + (_a10 * _b1)) + (_a11 * _b0);
        var _s12:GoInt64 = ((((((((((_a1 * _b11) + (_a2 * _b10)) + (_a3 * _b9)) + (_a4 * _b8)) + (_a5 * _b7)) + (_a6 * _b6)) + (_a7 * _b5)) + (_a8 * _b4)) + (_a9 * _b3)) + (_a10 * _b2)) + (_a11 * _b1);
        var _s13:GoInt64 = (((((((((_a2 * _b11) + (_a3 * _b10)) + (_a4 * _b9)) + (_a5 * _b8)) + (_a6 * _b7)) + (_a7 * _b6)) + (_a8 * _b5)) + (_a9 * _b4)) + (_a10 * _b3)) + (_a11 * _b2);
        var _s14:GoInt64 = ((((((((_a3 * _b11) + (_a4 * _b10)) + (_a5 * _b9)) + (_a6 * _b8)) + (_a7 * _b7)) + (_a8 * _b6)) + (_a9 * _b5)) + (_a10 * _b4)) + (_a11 * _b3);
        var _s15:GoInt64 = (((((((_a4 * _b11) + (_a5 * _b10)) + (_a6 * _b9)) + (_a7 * _b8)) + (_a8 * _b7)) + (_a9 * _b6)) + (_a10 * _b5)) + (_a11 * _b4);
        var _s16:GoInt64 = ((((((_a5 * _b11) + (_a6 * _b10)) + (_a7 * _b9)) + (_a8 * _b8)) + (_a9 * _b7)) + (_a10 * _b6)) + (_a11 * _b5);
        var _s17:GoInt64 = (((((_a6 * _b11) + (_a7 * _b10)) + (_a8 * _b9)) + (_a9 * _b8)) + (_a10 * _b7)) + (_a11 * _b6);
        var _s18:GoInt64 = ((((_a7 * _b11) + (_a8 * _b10)) + (_a9 * _b9)) + (_a10 * _b8)) + (_a11 * _b7);
        var _s19:GoInt64 = (((_a8 * _b11) + (_a9 * _b10)) + (_a10 * _b9)) + (_a11 * _b8);
        var _s20:GoInt64 = ((_a9 * _b11) + (_a10 * _b10)) + (_a11 * _b9);
        var _s21:GoInt64 = (_a10 * _b11) + (_a11 * _b10);
        var _s22:GoInt64 = _a11 * _b11;
        var _s23:GoInt64 = ((((0 : GoInt64)) : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = (_s0 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = (_s2 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = (_s4 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = (_s6 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = (_s8 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = (_s10 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((12 : GoInt))] = (_s12 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s13 = _s13 + ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))));
        _s12 = _s12 - ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((14 : GoInt))] = (_s14 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s15 = _s15 + ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))));
        _s14 = _s14 - ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((16 : GoInt))] = (_s16 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s17 = _s17 + ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))));
        _s16 = _s16 - ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((18 : GoInt))] = (_s18 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s19 = _s19 + ((_carry != null ? _carry[((18 : GoInt))] : ((0 : GoInt64))));
        _s18 = _s18 - ((_carry != null ? _carry[((18 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((20 : GoInt))] = (_s20 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s21 = _s21 + ((_carry != null ? _carry[((20 : GoInt))] : ((0 : GoInt64))));
        _s20 = _s20 - ((_carry != null ? _carry[((20 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((22 : GoInt))] = (_s22 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s23 = _s23 + ((_carry != null ? _carry[((22 : GoInt))] : ((0 : GoInt64))));
        _s22 = _s22 - ((_carry != null ? _carry[((22 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = (_s1 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = (_s3 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = (_s5 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = (_s7 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = (_s9 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = (_s11 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((13 : GoInt))] = (_s13 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s14 = _s14 + ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))));
        _s13 = _s13 - ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((15 : GoInt))] = (_s15 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s16 = _s16 + ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))));
        _s15 = _s15 - ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((17 : GoInt))] = (_s17 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s18 = _s18 + ((_carry != null ? _carry[((17 : GoInt))] : ((0 : GoInt64))));
        _s17 = _s17 - ((_carry != null ? _carry[((17 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((19 : GoInt))] = (_s19 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s20 = _s20 + ((_carry != null ? _carry[((19 : GoInt))] : ((0 : GoInt64))));
        _s19 = _s19 - ((_carry != null ? _carry[((19 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((21 : GoInt))] = (_s21 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s22 = _s22 + ((_carry != null ? _carry[((21 : GoInt))] : ((0 : GoInt64))));
        _s21 = _s21 - ((_carry != null ? _carry[((21 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_s23 * ((666643 : GoInt64)));
        _s12 = _s12 + (_s23 * ((470296 : GoInt64)));
        _s13 = _s13 + (_s23 * ((654183 : GoInt64)));
        _s14 = _s14 - (_s23 * ((997805 : GoInt64)));
        _s15 = _s15 + (_s23 * ((136657 : GoInt64)));
        _s16 = _s16 - (_s23 * ((683901 : GoInt64)));
        _s23 = ((0 : GoInt64));
        _s10 = _s10 + (_s22 * ((666643 : GoInt64)));
        _s11 = _s11 + (_s22 * ((470296 : GoInt64)));
        _s12 = _s12 + (_s22 * ((654183 : GoInt64)));
        _s13 = _s13 - (_s22 * ((997805 : GoInt64)));
        _s14 = _s14 + (_s22 * ((136657 : GoInt64)));
        _s15 = _s15 - (_s22 * ((683901 : GoInt64)));
        _s22 = ((0 : GoInt64));
        _s9 = _s9 + (_s21 * ((666643 : GoInt64)));
        _s10 = _s10 + (_s21 * ((470296 : GoInt64)));
        _s11 = _s11 + (_s21 * ((654183 : GoInt64)));
        _s12 = _s12 - (_s21 * ((997805 : GoInt64)));
        _s13 = _s13 + (_s21 * ((136657 : GoInt64)));
        _s14 = _s14 - (_s21 * ((683901 : GoInt64)));
        _s21 = ((0 : GoInt64));
        _s8 = _s8 + (_s20 * ((666643 : GoInt64)));
        _s9 = _s9 + (_s20 * ((470296 : GoInt64)));
        _s10 = _s10 + (_s20 * ((654183 : GoInt64)));
        _s11 = _s11 - (_s20 * ((997805 : GoInt64)));
        _s12 = _s12 + (_s20 * ((136657 : GoInt64)));
        _s13 = _s13 - (_s20 * ((683901 : GoInt64)));
        _s20 = ((0 : GoInt64));
        _s7 = _s7 + (_s19 * ((666643 : GoInt64)));
        _s8 = _s8 + (_s19 * ((470296 : GoInt64)));
        _s9 = _s9 + (_s19 * ((654183 : GoInt64)));
        _s10 = _s10 - (_s19 * ((997805 : GoInt64)));
        _s11 = _s11 + (_s19 * ((136657 : GoInt64)));
        _s12 = _s12 - (_s19 * ((683901 : GoInt64)));
        _s19 = ((0 : GoInt64));
        _s6 = _s6 + (_s18 * ((666643 : GoInt64)));
        _s7 = _s7 + (_s18 * ((470296 : GoInt64)));
        _s8 = _s8 + (_s18 * ((654183 : GoInt64)));
        _s9 = _s9 - (_s18 * ((997805 : GoInt64)));
        _s10 = _s10 + (_s18 * ((136657 : GoInt64)));
        _s11 = _s11 - (_s18 * ((683901 : GoInt64)));
        _s18 = ((0 : GoInt64));
        if (_carry != null) _carry[((6 : GoInt))] = (_s6 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = (_s8 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = (_s10 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((12 : GoInt))] = (_s12 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s13 = _s13 + ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))));
        _s12 = _s12 - ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((14 : GoInt))] = (_s14 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s15 = _s15 + ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))));
        _s14 = _s14 - ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((16 : GoInt))] = (_s16 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s17 = _s17 + ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))));
        _s16 = _s16 - ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = (_s7 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = (_s9 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = (_s11 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((13 : GoInt))] = (_s13 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s14 = _s14 + ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))));
        _s13 = _s13 - ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((15 : GoInt))] = (_s15 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s16 = _s16 + ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))));
        _s15 = _s15 - ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_s17 * ((666643 : GoInt64)));
        _s6 = _s6 + (_s17 * ((470296 : GoInt64)));
        _s7 = _s7 + (_s17 * ((654183 : GoInt64)));
        _s8 = _s8 - (_s17 * ((997805 : GoInt64)));
        _s9 = _s9 + (_s17 * ((136657 : GoInt64)));
        _s10 = _s10 - (_s17 * ((683901 : GoInt64)));
        _s17 = ((0 : GoInt64));
        _s4 = _s4 + (_s16 * ((666643 : GoInt64)));
        _s5 = _s5 + (_s16 * ((470296 : GoInt64)));
        _s6 = _s6 + (_s16 * ((654183 : GoInt64)));
        _s7 = _s7 - (_s16 * ((997805 : GoInt64)));
        _s8 = _s8 + (_s16 * ((136657 : GoInt64)));
        _s9 = _s9 - (_s16 * ((683901 : GoInt64)));
        _s16 = ((0 : GoInt64));
        _s3 = _s3 + (_s15 * ((666643 : GoInt64)));
        _s4 = _s4 + (_s15 * ((470296 : GoInt64)));
        _s5 = _s5 + (_s15 * ((654183 : GoInt64)));
        _s6 = _s6 - (_s15 * ((997805 : GoInt64)));
        _s7 = _s7 + (_s15 * ((136657 : GoInt64)));
        _s8 = _s8 - (_s15 * ((683901 : GoInt64)));
        _s15 = ((0 : GoInt64));
        _s2 = _s2 + (_s14 * ((666643 : GoInt64)));
        _s3 = _s3 + (_s14 * ((470296 : GoInt64)));
        _s4 = _s4 + (_s14 * ((654183 : GoInt64)));
        _s5 = _s5 - (_s14 * ((997805 : GoInt64)));
        _s6 = _s6 + (_s14 * ((136657 : GoInt64)));
        _s7 = _s7 - (_s14 * ((683901 : GoInt64)));
        _s14 = ((0 : GoInt64));
        _s1 = _s1 + (_s13 * ((666643 : GoInt64)));
        _s2 = _s2 + (_s13 * ((470296 : GoInt64)));
        _s3 = _s3 + (_s13 * ((654183 : GoInt64)));
        _s4 = _s4 - (_s13 * ((997805 : GoInt64)));
        _s5 = _s5 + (_s13 * ((136657 : GoInt64)));
        _s6 = _s6 - (_s13 * ((683901 : GoInt64)));
        _s13 = ((0 : GoInt64));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = (_s0 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = (_s2 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = (_s4 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = (_s6 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = (_s8 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = (_s10 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = (_s1 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = (_s3 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = (_s5 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = (_s7 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = (_s9 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = (_s11 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = _s0 >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = _s1 >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = _s2 >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = _s3 >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = _s4 >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = _s5 >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = _s6 >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = _s7 >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = _s8 >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = _s9 >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = _s10 >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = _s11 >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = _s0 >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = _s1 >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = _s2 >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = _s3 >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = _s4 >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = _s5 >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = _s6 >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = _s7 >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = _s8 >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = _s9 >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = _s10 >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_s != null) _s[((0 : GoInt))] = (((_s0 >> ((0 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((1 : GoInt))] = (((_s0 >> ((8 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((2 : GoInt))] = ((((_s0 >> ((16 : GoUnTypedInt))) | (_s1 << ((5 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((3 : GoInt))] = (((_s1 >> ((3 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((4 : GoInt))] = (((_s1 >> ((11 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((5 : GoInt))] = ((((_s1 >> ((19 : GoUnTypedInt))) | (_s2 << ((2 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((6 : GoInt))] = (((_s2 >> ((6 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((7 : GoInt))] = ((((_s2 >> ((14 : GoUnTypedInt))) | (_s3 << ((7 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((8 : GoInt))] = (((_s3 >> ((1 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((9 : GoInt))] = (((_s3 >> ((9 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((10 : GoInt))] = ((((_s3 >> ((17 : GoUnTypedInt))) | (_s4 << ((4 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((11 : GoInt))] = (((_s4 >> ((4 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((12 : GoInt))] = (((_s4 >> ((12 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((13 : GoInt))] = ((((_s4 >> ((20 : GoUnTypedInt))) | (_s5 << ((1 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((14 : GoInt))] = (((_s5 >> ((7 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((15 : GoInt))] = ((((_s5 >> ((15 : GoUnTypedInt))) | (_s6 << ((6 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((16 : GoInt))] = (((_s6 >> ((2 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((17 : GoInt))] = (((_s6 >> ((10 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((18 : GoInt))] = ((((_s6 >> ((18 : GoUnTypedInt))) | (_s7 << ((3 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((19 : GoInt))] = (((_s7 >> ((5 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((20 : GoInt))] = (((_s7 >> ((13 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((21 : GoInt))] = (((_s8 >> ((0 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((22 : GoInt))] = (((_s8 >> ((8 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((23 : GoInt))] = ((((_s8 >> ((16 : GoUnTypedInt))) | (_s9 << ((5 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((24 : GoInt))] = (((_s9 >> ((3 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((25 : GoInt))] = (((_s9 >> ((11 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((26 : GoInt))] = ((((_s9 >> ((19 : GoUnTypedInt))) | (_s10 << ((2 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((27 : GoInt))] = (((_s10 >> ((6 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((28 : GoInt))] = ((((_s10 >> ((14 : GoUnTypedInt))) | (_s11 << ((7 : GoUnTypedInt)))) : GoByte));
        if (_s != null) _s[((29 : GoInt))] = (((_s11 >> ((1 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((30 : GoInt))] = (((_s11 >> ((9 : GoUnTypedInt))) : GoByte));
        if (_s != null) _s[((31 : GoInt))] = (((_s11 >> ((17 : GoUnTypedInt))) : GoByte));
    }
/**
    // Input:
    //   s[0]+256*s[1]+...+256^63*s[63] = s
    //
    // Output:
    //   s[0]+256*s[1]+...+256^31*s[31] = s mod l
    //   where l = 2^252 + 27742317777372353535851937790883648493.
**/
function _scReduce(_out:GoArray<GoByte>, _s:GoArray<GoByte>):Void {
        var _s0:GoInt64 = ((2097151 : GoInt64)) & _load3(((_s.__slice__(0) : Slice<GoUInt8>)));
        var _s1:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((2 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _s2:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((5 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _s3:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((7 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _s4:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((10 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _s5:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((13 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _s6:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((15 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _s7:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((18 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        var _s8:GoInt64 = ((2097151 : GoInt64)) & _load3(((_s.__slice__(((21 : GoInt))) : Slice<GoUInt8>)));
        var _s9:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((23 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _s10:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((26 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _s11:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((28 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _s12:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((31 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _s13:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((34 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _s14:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((36 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _s15:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((39 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        var _s16:GoInt64 = ((2097151 : GoInt64)) & _load3(((_s.__slice__(((42 : GoInt))) : Slice<GoUInt8>)));
        var _s17:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((44 : GoInt))) : Slice<GoUInt8>))) >> ((5 : GoUnTypedInt)));
        var _s18:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((47 : GoInt))) : Slice<GoUInt8>))) >> ((2 : GoUnTypedInt)));
        var _s19:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((49 : GoInt))) : Slice<GoUInt8>))) >> ((7 : GoUnTypedInt)));
        var _s20:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((52 : GoInt))) : Slice<GoUInt8>))) >> ((4 : GoUnTypedInt)));
        var _s21:GoInt64 = ((2097151 : GoInt64)) & (_load3(((_s.__slice__(((55 : GoInt))) : Slice<GoUInt8>))) >> ((1 : GoUnTypedInt)));
        var _s22:GoInt64 = ((2097151 : GoInt64)) & (_load4(((_s.__slice__(((57 : GoInt))) : Slice<GoUInt8>))) >> ((6 : GoUnTypedInt)));
        var _s23:GoInt64 = (_load4(((_s.__slice__(((60 : GoInt))) : Slice<GoUInt8>))) >> ((3 : GoUnTypedInt)));
        _s11 = _s11 + (_s23 * ((666643 : GoInt64)));
        _s12 = _s12 + (_s23 * ((470296 : GoInt64)));
        _s13 = _s13 + (_s23 * ((654183 : GoInt64)));
        _s14 = _s14 - (_s23 * ((997805 : GoInt64)));
        _s15 = _s15 + (_s23 * ((136657 : GoInt64)));
        _s16 = _s16 - (_s23 * ((683901 : GoInt64)));
        _s23 = ((0 : GoInt64));
        _s10 = _s10 + (_s22 * ((666643 : GoInt64)));
        _s11 = _s11 + (_s22 * ((470296 : GoInt64)));
        _s12 = _s12 + (_s22 * ((654183 : GoInt64)));
        _s13 = _s13 - (_s22 * ((997805 : GoInt64)));
        _s14 = _s14 + (_s22 * ((136657 : GoInt64)));
        _s15 = _s15 - (_s22 * ((683901 : GoInt64)));
        _s22 = ((0 : GoInt64));
        _s9 = _s9 + (_s21 * ((666643 : GoInt64)));
        _s10 = _s10 + (_s21 * ((470296 : GoInt64)));
        _s11 = _s11 + (_s21 * ((654183 : GoInt64)));
        _s12 = _s12 - (_s21 * ((997805 : GoInt64)));
        _s13 = _s13 + (_s21 * ((136657 : GoInt64)));
        _s14 = _s14 - (_s21 * ((683901 : GoInt64)));
        _s21 = ((0 : GoInt64));
        _s8 = _s8 + (_s20 * ((666643 : GoInt64)));
        _s9 = _s9 + (_s20 * ((470296 : GoInt64)));
        _s10 = _s10 + (_s20 * ((654183 : GoInt64)));
        _s11 = _s11 - (_s20 * ((997805 : GoInt64)));
        _s12 = _s12 + (_s20 * ((136657 : GoInt64)));
        _s13 = _s13 - (_s20 * ((683901 : GoInt64)));
        _s20 = ((0 : GoInt64));
        _s7 = _s7 + (_s19 * ((666643 : GoInt64)));
        _s8 = _s8 + (_s19 * ((470296 : GoInt64)));
        _s9 = _s9 + (_s19 * ((654183 : GoInt64)));
        _s10 = _s10 - (_s19 * ((997805 : GoInt64)));
        _s11 = _s11 + (_s19 * ((136657 : GoInt64)));
        _s12 = _s12 - (_s19 * ((683901 : GoInt64)));
        _s19 = ((0 : GoInt64));
        _s6 = _s6 + (_s18 * ((666643 : GoInt64)));
        _s7 = _s7 + (_s18 * ((470296 : GoInt64)));
        _s8 = _s8 + (_s18 * ((654183 : GoInt64)));
        _s9 = _s9 - (_s18 * ((997805 : GoInt64)));
        _s10 = _s10 + (_s18 * ((136657 : GoInt64)));
        _s11 = _s11 - (_s18 * ((683901 : GoInt64)));
        _s18 = ((0 : GoInt64));
        var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0 ... 17) ((0 : GoInt64))]);
        if (_carry != null) _carry[((6 : GoInt))] = (_s6 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = (_s8 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = (_s10 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((12 : GoInt))] = (_s12 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s13 = _s13 + ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))));
        _s12 = _s12 - ((_carry != null ? _carry[((12 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((14 : GoInt))] = (_s14 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s15 = _s15 + ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))));
        _s14 = _s14 - ((_carry != null ? _carry[((14 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((16 : GoInt))] = (_s16 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s17 = _s17 + ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))));
        _s16 = _s16 - ((_carry != null ? _carry[((16 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = (_s7 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = (_s9 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = (_s11 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((13 : GoInt))] = (_s13 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s14 = _s14 + ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))));
        _s13 = _s13 - ((_carry != null ? _carry[((13 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((15 : GoInt))] = (_s15 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s16 = _s16 + ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))));
        _s15 = _s15 - ((_carry != null ? _carry[((15 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_s17 * ((666643 : GoInt64)));
        _s6 = _s6 + (_s17 * ((470296 : GoInt64)));
        _s7 = _s7 + (_s17 * ((654183 : GoInt64)));
        _s8 = _s8 - (_s17 * ((997805 : GoInt64)));
        _s9 = _s9 + (_s17 * ((136657 : GoInt64)));
        _s10 = _s10 - (_s17 * ((683901 : GoInt64)));
        _s17 = ((0 : GoInt64));
        _s4 = _s4 + (_s16 * ((666643 : GoInt64)));
        _s5 = _s5 + (_s16 * ((470296 : GoInt64)));
        _s6 = _s6 + (_s16 * ((654183 : GoInt64)));
        _s7 = _s7 - (_s16 * ((997805 : GoInt64)));
        _s8 = _s8 + (_s16 * ((136657 : GoInt64)));
        _s9 = _s9 - (_s16 * ((683901 : GoInt64)));
        _s16 = ((0 : GoInt64));
        _s3 = _s3 + (_s15 * ((666643 : GoInt64)));
        _s4 = _s4 + (_s15 * ((470296 : GoInt64)));
        _s5 = _s5 + (_s15 * ((654183 : GoInt64)));
        _s6 = _s6 - (_s15 * ((997805 : GoInt64)));
        _s7 = _s7 + (_s15 * ((136657 : GoInt64)));
        _s8 = _s8 - (_s15 * ((683901 : GoInt64)));
        _s15 = ((0 : GoInt64));
        _s2 = _s2 + (_s14 * ((666643 : GoInt64)));
        _s3 = _s3 + (_s14 * ((470296 : GoInt64)));
        _s4 = _s4 + (_s14 * ((654183 : GoInt64)));
        _s5 = _s5 - (_s14 * ((997805 : GoInt64)));
        _s6 = _s6 + (_s14 * ((136657 : GoInt64)));
        _s7 = _s7 - (_s14 * ((683901 : GoInt64)));
        _s14 = ((0 : GoInt64));
        _s1 = _s1 + (_s13 * ((666643 : GoInt64)));
        _s2 = _s2 + (_s13 * ((470296 : GoInt64)));
        _s3 = _s3 + (_s13 * ((654183 : GoInt64)));
        _s4 = _s4 - (_s13 * ((997805 : GoInt64)));
        _s5 = _s5 + (_s13 * ((136657 : GoInt64)));
        _s6 = _s6 - (_s13 * ((683901 : GoInt64)));
        _s13 = ((0 : GoInt64));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = (_s0 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = (_s2 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = (_s4 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = (_s6 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = (_s8 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = (_s10 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = (_s1 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = (_s3 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = (_s5 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = (_s7 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = (_s9 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = (_s11 + ((1048576 : GoInt64))) >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = _s0 >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = _s1 >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = _s2 >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = _s3 >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = _s4 >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = _s5 >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = _s6 >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = _s7 >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = _s8 >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = _s9 >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = _s10 >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((11 : GoInt))] = _s11 >> ((21 : GoUnTypedInt));
        _s12 = _s12 + ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))));
        _s11 = _s11 - ((_carry != null ? _carry[((11 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        if (_carry != null) _carry[((0 : GoInt))] = _s0 >> ((21 : GoUnTypedInt));
        _s1 = _s1 + ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))));
        _s0 = _s0 - ((_carry != null ? _carry[((0 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((1 : GoInt))] = _s1 >> ((21 : GoUnTypedInt));
        _s2 = _s2 + ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))));
        _s1 = _s1 - ((_carry != null ? _carry[((1 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((2 : GoInt))] = _s2 >> ((21 : GoUnTypedInt));
        _s3 = _s3 + ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))));
        _s2 = _s2 - ((_carry != null ? _carry[((2 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((3 : GoInt))] = _s3 >> ((21 : GoUnTypedInt));
        _s4 = _s4 + ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))));
        _s3 = _s3 - ((_carry != null ? _carry[((3 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((4 : GoInt))] = _s4 >> ((21 : GoUnTypedInt));
        _s5 = _s5 + ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))));
        _s4 = _s4 - ((_carry != null ? _carry[((4 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((5 : GoInt))] = _s5 >> ((21 : GoUnTypedInt));
        _s6 = _s6 + ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))));
        _s5 = _s5 - ((_carry != null ? _carry[((5 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((6 : GoInt))] = _s6 >> ((21 : GoUnTypedInt));
        _s7 = _s7 + ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))));
        _s6 = _s6 - ((_carry != null ? _carry[((6 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((7 : GoInt))] = _s7 >> ((21 : GoUnTypedInt));
        _s8 = _s8 + ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))));
        _s7 = _s7 - ((_carry != null ? _carry[((7 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((8 : GoInt))] = _s8 >> ((21 : GoUnTypedInt));
        _s9 = _s9 + ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))));
        _s8 = _s8 - ((_carry != null ? _carry[((8 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((9 : GoInt))] = _s9 >> ((21 : GoUnTypedInt));
        _s10 = _s10 + ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))));
        _s9 = _s9 - ((_carry != null ? _carry[((9 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_carry != null) _carry[((10 : GoInt))] = _s10 >> ((21 : GoUnTypedInt));
        _s11 = _s11 + ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))));
        _s10 = _s10 - ((_carry != null ? _carry[((10 : GoInt))] : ((0 : GoInt64))) << ((21 : GoUnTypedInt)));
        if (_out != null) _out[((0 : GoInt))] = (((_s0 >> ((0 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((1 : GoInt))] = (((_s0 >> ((8 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((2 : GoInt))] = ((((_s0 >> ((16 : GoUnTypedInt))) | (_s1 << ((5 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((3 : GoInt))] = (((_s1 >> ((3 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((4 : GoInt))] = (((_s1 >> ((11 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((5 : GoInt))] = ((((_s1 >> ((19 : GoUnTypedInt))) | (_s2 << ((2 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((6 : GoInt))] = (((_s2 >> ((6 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((7 : GoInt))] = ((((_s2 >> ((14 : GoUnTypedInt))) | (_s3 << ((7 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((8 : GoInt))] = (((_s3 >> ((1 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((9 : GoInt))] = (((_s3 >> ((9 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((10 : GoInt))] = ((((_s3 >> ((17 : GoUnTypedInt))) | (_s4 << ((4 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((11 : GoInt))] = (((_s4 >> ((4 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((12 : GoInt))] = (((_s4 >> ((12 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((13 : GoInt))] = ((((_s4 >> ((20 : GoUnTypedInt))) | (_s5 << ((1 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((14 : GoInt))] = (((_s5 >> ((7 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((15 : GoInt))] = ((((_s5 >> ((15 : GoUnTypedInt))) | (_s6 << ((6 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((16 : GoInt))] = (((_s6 >> ((2 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((17 : GoInt))] = (((_s6 >> ((10 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((18 : GoInt))] = ((((_s6 >> ((18 : GoUnTypedInt))) | (_s7 << ((3 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((19 : GoInt))] = (((_s7 >> ((5 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((20 : GoInt))] = (((_s7 >> ((13 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((21 : GoInt))] = (((_s8 >> ((0 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((22 : GoInt))] = (((_s8 >> ((8 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((23 : GoInt))] = ((((_s8 >> ((16 : GoUnTypedInt))) | (_s9 << ((5 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((24 : GoInt))] = (((_s9 >> ((3 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((25 : GoInt))] = (((_s9 >> ((11 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((26 : GoInt))] = ((((_s9 >> ((19 : GoUnTypedInt))) | (_s10 << ((2 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((27 : GoInt))] = (((_s10 >> ((6 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((28 : GoInt))] = ((((_s10 >> ((14 : GoUnTypedInt))) | (_s11 << ((7 : GoUnTypedInt)))) : GoByte));
        if (_out != null) _out[((29 : GoInt))] = (((_s11 >> ((1 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((30 : GoInt))] = (((_s11 >> ((9 : GoUnTypedInt))) : GoByte));
        if (_out != null) _out[((31 : GoInt))] = (((_s11 >> ((17 : GoUnTypedInt))) : GoByte));
    }
/**
    // basepointTable is a set of 32 affineLookupTables, where table i is generated
    // from 256i * basepoint. It is precomputed the first time it's used.
**/
function _basepointTable():GoArray<T_affineLookupTable> {
        _basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = newGeneratorPoint();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((32 : GoInt)), _i++, {
                    (_basepointTablePrecomp._table != null ? _basepointTablePrecomp._table[_i] : new T_affineLookupTable()).fromP3(_p);
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < ((8 : GoInt)), _j++, {
                            _p.add(_p, _p);
                        });
                    };
                });
            };
        });
        return _basepointTablePrecomp._table;
    }
/**
    // basepointNafTable is the nafLookupTable8 for the basepoint.
    // It is precomputed the first time it's used.
**/
function _basepointNafTable():T_nafLookupTable8 {
        _basepointNafTablePrecomp._initOnce.do_(function():Void {
            _basepointNafTablePrecomp._table.fromP3(newGeneratorPoint());
        });
        return _basepointNafTablePrecomp._table;
    }
@:keep class T_projP1xP1_static_extension {
    @:keep
    public static function double( _v:T_projP1xP1, _p:T_projP2):T_projP1xP1 {
        var xx:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yy:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), xplusYsq:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        xx.square(_p.x);
        yy.square(_p.y);
        zz2.square(_p.z);
        zz2.add(zz2, zz2);
        xplusYsq.add(_p.x, _p.y);
        xplusYsq.square(xplusYsq);
        _v.y.add(yy, xx);
        _v.z.subtract(yy, xx);
        _v.x.subtract(xplusYsq, _v.y);
        _v.t.subtract(zz2, _v.z);
        return _v;
    }
    @:keep
    public static function subAffine( _v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), z2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(_p._y, _p._x);
        yminusX.subtract(_p._y, _p._x);
        pp.multiply(yplusX, _q.yminusX);
        mm.multiply(yminusX, _q.yplusX);
        tt2d.multiply(_p._t, _q.t2d);
        z2.add(_p._z, _p._z);
        _v.x.subtract(pp, mm);
        _v.y.add(pp, mm);
        _v.z.subtract(z2, tt2d);
        _v.t.add(z2, tt2d);
        return _v;
    }
    @:keep
    public static function addAffine( _v:T_projP1xP1, _p:Point, _q:T_affineCached):T_projP1xP1 {
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), z2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(_p._y, _p._x);
        yminusX.subtract(_p._y, _p._x);
        pp.multiply(yplusX, _q.yplusX);
        mm.multiply(yminusX, _q.yminusX);
        tt2d.multiply(_p._t, _q.t2d);
        z2.add(_p._z, _p._z);
        _v.x.subtract(pp, mm);
        _v.y.add(pp, mm);
        _v.z.add(z2, tt2d);
        _v.t.subtract(z2, tt2d);
        return _v;
    }
    @:keep
    public static function sub( _v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(_p._y, _p._x);
        yminusX.subtract(_p._y, _p._x);
        pp.multiply(yplusX, _q.yminusX);
        mm.multiply(yminusX, _q.yplusX);
        tt2d.multiply(_p._t, _q.t2d);
        zz2.multiply(_p._z, _q.z);
        zz2.add(zz2, zz2);
        _v.x.subtract(pp, mm);
        _v.y.add(pp, mm);
        _v.z.subtract(zz2, tt2d);
        _v.t.add(zz2, tt2d);
        return _v;
    }
    @:keep
    public static function add( _v:T_projP1xP1, _p:Point, _q:T_projCached):T_projP1xP1 {
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(_p._y, _p._x);
        yminusX.subtract(_p._y, _p._x);
        pp.multiply(yplusX, _q.yplusX);
        mm.multiply(yminusX, _q.yminusX);
        tt2d.multiply(_p._t, _q.t2d);
        zz2.multiply(_p._z, _q.z);
        zz2.add(zz2, zz2);
        _v.x.subtract(pp, mm);
        _v.y.add(pp, mm);
        _v.z.add(zz2, tt2d);
        _v.t.subtract(zz2, tt2d);
        return _v;
    }
}
class T_projP1xP1_wrapper {
    @:keep
    public var double : T_projP2 -> T_projP1xP1 = null;
    @:keep
    public var subAffine : (Point, T_affineCached) -> T_projP1xP1 = null;
    @:keep
    public var addAffine : (Point, T_affineCached) -> T_projP1xP1 = null;
    @:keep
    public var sub : (Point, T_projCached) -> T_projP1xP1 = null;
    @:keep
    public var add : (Point, T_projCached) -> T_projP1xP1 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_projP1xP1;
}
@:keep class T_projP2_static_extension {
    @:keep
    public static function fromP3( _v:T_projP2, _p:Point):T_projP2 {
        _v.x.set(_p._x);
        _v.y.set(_p._y);
        _v.z.set(_p._z);
        return _v;
    }
    @:keep
    public static function fromP1xP1( _v:T_projP2, _p:T_projP1xP1):T_projP2 {
        _v.x.multiply(_p.x, _p.t);
        _v.y.multiply(_p.y, _p.z);
        _v.z.multiply(_p.z, _p.t);
        return _v;
    }
    @:keep
    public static function zero( _v:T_projP2):T_projP2 {
        _v.x.zero();
        _v.y.one();
        _v.z.one();
        return _v;
    }
}
class T_projP2_wrapper {
    @:keep
    public var fromP3 : Point -> T_projP2 = null;
    @:keep
    public var fromP1xP1 : T_projP1xP1 -> T_projP2 = null;
    @:keep
    public var zero : () -> T_projP2 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_projP2;
}
@:keep class Point_static_extension {
    /**
        // VarTimeDoubleScalarBaseMult sets v = a * A + b * B, where B is the canonical
        // generator, and returns v.
        //
        // Execution time depends on the inputs.
    **/
    @:keep
    public static function varTimeDoubleScalarBaseMult( _v:Point, _a:Scalar, a:Point, _b:Scalar):Point {
        _checkInitialized(a);
        var _basepointNafTable = _basepointNafTable();
        var _aTable:T_nafLookupTable5 = new T_nafLookupTable5();
        _aTable.fromP3(a);
        var _aNaf = (_a._nonAdjacentForm(((5 : GoUInt))) == null ? null : _a._nonAdjacentForm(((5 : GoUInt))).__copy__());
        var _bNaf = (_b._nonAdjacentForm(((8 : GoUInt))) == null ? null : _b._nonAdjacentForm(((8 : GoUInt))).__copy__());
        var _i:GoInt = ((255 : GoInt));
        {
            var _j:GoInt = _i;
            Go.cfor(_j >= ((0 : GoInt)), _j--, {
                if (((_aNaf != null ? _aNaf[_j] : ((0 : GoInt8))) != ((0 : GoInt8))) || ((_bNaf != null ? _bNaf[_j] : ((0 : GoInt8))) != ((0 : GoInt8)))) {
                    break;
                };
            });
        };
        var _multA = ((new T_projCached() : T_projCached));
        var _multB = ((new T_affineCached() : T_affineCached));
        var _tmp1 = ((new T_projP1xP1() : T_projP1xP1));
        var _tmp2 = ((new T_projP2() : T_projP2));
        _tmp2.zero();
        Go.cfor(_i >= ((0 : GoInt)), _i--, {
            _tmp1.double(_tmp2);
            if ((_aNaf != null ? _aNaf[_i] : ((0 : GoInt8))) > ((0 : GoInt8))) {
                _v._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, (_aNaf != null ? _aNaf[_i] : ((0 : GoInt8))));
                _tmp1.add(_v, _multA);
            } else if ((_aNaf != null ? _aNaf[_i] : ((0 : GoInt8))) < ((0 : GoInt8))) {
                _v._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, -(_aNaf != null ? _aNaf[_i] : ((0 : GoInt8))));
                _tmp1.sub(_v, _multA);
            };
            if ((_bNaf != null ? _bNaf[_i] : ((0 : GoInt8))) > ((0 : GoInt8))) {
                _v._fromP1xP1(_tmp1);
                _basepointNafTable.selectInto(_multB, (_bNaf != null ? _bNaf[_i] : ((0 : GoInt8))));
                _tmp1.addAffine(_v, _multB);
            } else if ((_bNaf != null ? _bNaf[_i] : ((0 : GoInt8))) < ((0 : GoInt8))) {
                _v._fromP1xP1(_tmp1);
                _basepointNafTable.selectInto(_multB, -(_bNaf != null ? _bNaf[_i] : ((0 : GoInt8))));
                _tmp1.subAffine(_v, _multB);
            };
            _tmp2.fromP1xP1(_tmp1);
        });
        _v._fromP2(_tmp2);
        return _v;
    }
    /**
        // ScalarMult sets v = x * q, and returns v.
        //
        // The scalar multiplication is done in constant time.
    **/
    @:keep
    public static function scalarMult( _v:Point, _x:Scalar, _q:Point):Point {
        _checkInitialized(_q);
        var _table:T_projLookupTable = new T_projLookupTable();
        _table.fromP3(_q);
        var _digits = (_x._signedRadix16() == null ? null : _x._signedRadix16().__copy__());
        var _multiple = ((new T_projCached() : T_projCached));
        var _tmp1 = ((new T_projP1xP1() : T_projP1xP1));
        var _tmp2 = ((new T_projP2() : T_projP2));
        _table.selectInto(_multiple, (_digits != null ? _digits[((63 : GoInt))] : ((0 : GoInt8))));
        _v.set(newIdentityPoint());
        _tmp1.add(_v, _multiple);
        {
            var _i:GoInt = ((62 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _tmp2.fromP1xP1(_tmp1);
                _tmp1.double(_tmp2);
                _v._fromP1xP1(_tmp1);
                _table.selectInto(_multiple, (_digits != null ? _digits[_i] : ((0 : GoInt8))));
                _tmp1.add(_v, _multiple);
            });
        };
        _v._fromP1xP1(_tmp1);
        return _v;
    }
    /**
        // ScalarBaseMult sets v = x * B, where B is the canonical generator, and
        // returns v.
        //
        // The scalar multiplication is done in constant time.
    **/
    @:keep
    public static function scalarBaseMult( _v:Point, _x:Scalar):Point {
        var _basepointTable = _basepointTable();
        var _digits = (_x._signedRadix16() == null ? null : _x._signedRadix16().__copy__());
        var _multiple = ((new T_affineCached() : T_affineCached));
        var _tmp1 = ((new T_projP1xP1() : T_projP1xP1));
        var _tmp2 = ((new T_projP2() : T_projP2));
        _v.set(newIdentityPoint());
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i = _i + (((2 : GoInt))), {
                (_basepointTable != null ? _basepointTable[_i / ((2 : GoInt))] : new T_affineLookupTable()).selectInto(_multiple, (_digits != null ? _digits[_i] : ((0 : GoInt8))));
                _tmp1.addAffine(_v, _multiple);
                _v._fromP1xP1(_tmp1);
            });
        };
        _tmp2.fromP3(_v);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _tmp2.fromP1xP1(_tmp1);
        _tmp1.double(_tmp2);
        _v._fromP1xP1(_tmp1);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i = _i + (((2 : GoInt))), {
                (_basepointTable != null ? _basepointTable[_i / ((2 : GoInt))] : new T_affineLookupTable()).selectInto(_multiple, (_digits != null ? _digits[_i] : ((0 : GoInt8))));
                _tmp1.addAffine(_v, _multiple);
                _v._fromP1xP1(_tmp1);
            });
        };
        return _v;
    }
    /**
        // Equal returns 1 if v is equivalent to u, and 0 otherwise.
    **/
    @:keep
    public static function equal( _v:Point, _u:Point):GoInt {
        _checkInitialized(_v, _u);
        var _t1:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t3:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t4:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _t1.multiply(_v._x, _u._z);
        _t2.multiply(_u._x, _v._z);
        _t3.multiply(_v._y, _u._z);
        _t4.multiply(_u._y, _v._z);
        return _t1.equal(_t2) & _t3.equal(_t4);
    }
    /**
        // Negate sets v = -p, and returns v.
    **/
    @:keep
    public static function negate( _v:Point, _p:Point):Point {
        _checkInitialized(_p);
        _v._x.negate(_p._x);
        _v._y.set(_p._y);
        _v._z.set(_p._z);
        _v._t.negate(_p._t);
        return _v;
    }
    /**
        // Subtract sets v = p - q, and returns v.
    **/
    @:keep
    public static function subtract( _v:Point, _p:Point, _q:Point):Point {
        _checkInitialized(_p, _q);
        var _qCached = new T_projCached().fromP3(_q);
        var _result = new T_projP1xP1().sub(_p, _qCached);
        return _v._fromP1xP1(_result);
    }
    /**
        // Add sets v = p + q, and returns v.
    **/
    @:keep
    public static function add( _v:Point, _p:Point, _q:Point):Point {
        _checkInitialized(_p, _q);
        var _qCached = new T_projCached().fromP3(_q);
        var _result = new T_projP1xP1().add(_p, _qCached);
        return _v._fromP1xP1(_result);
    }
    @:keep
    public static function _fromP2( _v:Point, _p:T_projP2):Point {
        _v._x.multiply(_p.x, _p.z);
        _v._y.multiply(_p.y, _p.z);
        _v._z.square(_p.z);
        _v._t.multiply(_p.x, _p.y);
        return _v;
    }
    @:keep
    public static function _fromP1xP1( _v:Point, _p:T_projP1xP1):Point {
        _v._x.multiply(_p.x, _p.t);
        _v._y.multiply(_p.y, _p.z);
        _v._z.multiply(_p.z, _p.t);
        _v._t.multiply(_p.x, _p.y);
        return _v;
    }
    /**
        // SetBytes sets v = x, where x is a 32-byte encoding of v. If x does not
        // represent a valid point on the curve, SetBytes returns nil and an error and
        // the receiver is unchanged. Otherwise, SetBytes returns v.
        //
        // Note that SetBytes accepts all non-canonical encodings of valid points.
        // That is, it follows decoding rules that match most implementations in
        // the ecosystem rather than RFC 8032.
    **/
    @:keep
    public static function setBytes( _v:Point, _x:Slice<GoByte>):{ var _0 : Point; var _1 : Error; } {
        if ((_x != null ? _x.length : ((0 : GoInt))) != ((32 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("edwards25519: invalid point encoding length" : GoString)))) };
        };
        var _y = new crypto.ed25519.internal.edwards25519.field.Field.Element().setBytes(_x);
        var _y2 = new crypto.ed25519.internal.edwards25519.field.Field.Element().square(_y);
        var _u = new crypto.ed25519.internal.edwards25519.field.Field.Element().subtract(_y2, _feOne);
        var _vv = new crypto.ed25519.internal.edwards25519.field.Field.Element().multiply(_y2, _d);
        _vv = _vv.add(_vv, _feOne);
        var __tmp__ = new crypto.ed25519.internal.edwards25519.field.Field.Element().sqrtRatio(_u, _vv), _xx:Ref<crypto.ed25519.internal.edwards25519.field.Field.Element> = __tmp__._0, _wasSquare:GoInt = __tmp__._1;
        if (_wasSquare == ((0 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("edwards25519: invalid point encoding" : GoString)))) };
        };
        var _xxNeg = new crypto.ed25519.internal.edwards25519.field.Field.Element().negate(_xx);
        _xx = _xx.select(_xxNeg, _xx, ((((_x != null ? _x[((31 : GoInt))] : ((0 : GoUInt8))) >> ((7 : GoUnTypedInt))) : GoInt)));
        _v._x.set(_xx);
        _v._y.set(_y);
        _v._z.one();
        _v._t.multiply(_xx, _y);
        return { _0 : _v, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function _bytes( _v:Point, _buf:GoArray<GoByte>):Slice<GoByte> {
        _checkInitialized(_v);
        var _zInv:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _x:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _y:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _zInv.invert(_v._z);
        _x.multiply(_v._x, _zInv);
        _y.multiply(_v._y, _zInv);
        var _out = _copyFieldElement(_buf, _y);
        if (_out != null) (_out != null ? _out[((31 : GoInt))] : ((0 : GoUInt8))) | ((((_x.isNegative() << ((7 : GoUnTypedInt))) : GoByte)));
        return _out;
    }
    /**
        // Bytes returns the canonical 32-byte encoding of v, according to RFC 8032,
        // Section 5.1.2.
    **/
    @:keep
    public static function bytes( _v:Point):Slice<GoByte> {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        return _v._bytes(_buf);
    }
    /**
        // Set sets v = u, and returns v.
    **/
    @:keep
    public static function set( _v:Point, _u:Point):Point {
        {
            var __tmp__ = (_u == null ? null : _u.__copy__());
            _v._x = __tmp__._x;
            _v._y = __tmp__._y;
            _v._z = __tmp__._z;
            _v._t = __tmp__._t;
            _v._0 = __tmp__._0;
        };
        return _v;
    }
}
class Point_wrapper {
    /**
        // VarTimeDoubleScalarBaseMult sets v = a * A + b * B, where B is the canonical
        // generator, and returns v.
        //
        // Execution time depends on the inputs.
    **/
    @:keep
    public var varTimeDoubleScalarBaseMult : (Scalar, Point, Scalar) -> Point = null;
    /**
        // ScalarMult sets v = x * q, and returns v.
        //
        // The scalar multiplication is done in constant time.
    **/
    @:keep
    public var scalarMult : (Scalar, Point) -> Point = null;
    /**
        // ScalarBaseMult sets v = x * B, where B is the canonical generator, and
        // returns v.
        //
        // The scalar multiplication is done in constant time.
    **/
    @:keep
    public var scalarBaseMult : Scalar -> Point = null;
    /**
        // Equal returns 1 if v is equivalent to u, and 0 otherwise.
    **/
    @:keep
    public var equal : Point -> GoInt = null;
    /**
        // Negate sets v = -p, and returns v.
    **/
    @:keep
    public var negate : Point -> Point = null;
    /**
        // Subtract sets v = p - q, and returns v.
    **/
    @:keep
    public var subtract : (Point, Point) -> Point = null;
    /**
        // Add sets v = p + q, and returns v.
    **/
    @:keep
    public var add : (Point, Point) -> Point = null;
    @:keep
    public var _fromP2 : T_projP2 -> Point = null;
    @:keep
    public var _fromP1xP1 : T_projP1xP1 -> Point = null;
    /**
        // SetBytes sets v = x, where x is a 32-byte encoding of v. If x does not
        // represent a valid point on the curve, SetBytes returns nil and an error and
        // the receiver is unchanged. Otherwise, SetBytes returns v.
        //
        // Note that SetBytes accepts all non-canonical encodings of valid points.
        // That is, it follows decoding rules that match most implementations in
        // the ecosystem rather than RFC 8032.
    **/
    @:keep
    public var setBytes : Slice<GoByte> -> { var _0 : Point; var _1 : Error; } = null;
    @:keep
    public var _bytes : GoArray<GoByte> -> Slice<GoByte> = null;
    /**
        // Bytes returns the canonical 32-byte encoding of v, according to RFC 8032,
        // Section 5.1.2.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // Set sets v = u, and returns v.
    **/
    @:keep
    public var set : Point -> Point = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Point;
}
@:keep class T_projCached_static_extension {
    /**
        // CondNeg negates v if cond == 1 and leaves it unchanged if cond == 0.
    **/
    @:keep
    public static function condNeg( _v:T_projCached, _cond:GoInt):T_projCached {
        _v.yplusX.swap(_v.yminusX, _cond);
        _v.t2d.select(new crypto.ed25519.internal.edwards25519.field.Field.Element().negate(_v.t2d), _v.t2d, _cond);
        return _v;
    }
    /**
        // Select sets v to a if cond == 1 and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:T_projCached, _a:T_projCached, _b:T_projCached, _cond:GoInt):T_projCached {
        _v.yplusX.select(_a.yplusX, _b.yplusX, _cond);
        _v.yminusX.select(_a.yminusX, _b.yminusX, _cond);
        _v.z.select(_a.z, _b.z, _cond);
        _v.t2d.select(_a.t2d, _b.t2d, _cond);
        return _v;
    }
    @:keep
    public static function fromP3( _v:T_projCached, _p:Point):T_projCached {
        _v.yplusX.add(_p._y, _p._x);
        _v.yminusX.subtract(_p._y, _p._x);
        _v.z.set(_p._z);
        _v.t2d.multiply(_p._t, _d2);
        return _v;
    }
    @:keep
    public static function zero( _v:T_projCached):T_projCached {
        _v.yplusX.one();
        _v.yminusX.one();
        _v.z.one();
        _v.t2d.zero();
        return _v;
    }
}
class T_projCached_wrapper {
    /**
        // CondNeg negates v if cond == 1 and leaves it unchanged if cond == 0.
    **/
    @:keep
    public var condNeg : GoInt -> T_projCached = null;
    /**
        // Select sets v to a if cond == 1 and to b if cond == 0.
    **/
    @:keep
    public var select : (T_projCached, T_projCached, GoInt) -> T_projCached = null;
    @:keep
    public var fromP3 : Point -> T_projCached = null;
    @:keep
    public var zero : () -> T_projCached = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_projCached;
}
@:keep class T_affineCached_static_extension {
    /**
        // CondNeg negates v if cond == 1 and leaves it unchanged if cond == 0.
    **/
    @:keep
    public static function condNeg( _v:T_affineCached, _cond:GoInt):T_affineCached {
        _v.yplusX.swap(_v.yminusX, _cond);
        _v.t2d.select(new crypto.ed25519.internal.edwards25519.field.Field.Element().negate(_v.t2d), _v.t2d, _cond);
        return _v;
    }
    /**
        // Select sets v to a if cond == 1 and to b if cond == 0.
    **/
    @:keep
    public static function select( _v:T_affineCached, _a:T_affineCached, _b:T_affineCached, _cond:GoInt):T_affineCached {
        _v.yplusX.select(_a.yplusX, _b.yplusX, _cond);
        _v.yminusX.select(_a.yminusX, _b.yminusX, _cond);
        _v.t2d.select(_a.t2d, _b.t2d, _cond);
        return _v;
    }
    @:keep
    public static function fromP3( _v:T_affineCached, _p:Point):T_affineCached {
        _v.yplusX.add(_p._y, _p._x);
        _v.yminusX.subtract(_p._y, _p._x);
        _v.t2d.multiply(_p._t, _d2);
        var _invZ:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _invZ.invert(_p._z);
        _v.yplusX.multiply(_v.yplusX, _invZ);
        _v.yminusX.multiply(_v.yminusX, _invZ);
        _v.t2d.multiply(_v.t2d, _invZ);
        return _v;
    }
    @:keep
    public static function zero( _v:T_affineCached):T_affineCached {
        _v.yplusX.one();
        _v.yminusX.one();
        _v.t2d.zero();
        return _v;
    }
}
class T_affineCached_wrapper {
    /**
        // CondNeg negates v if cond == 1 and leaves it unchanged if cond == 0.
    **/
    @:keep
    public var condNeg : GoInt -> T_affineCached = null;
    /**
        // Select sets v to a if cond == 1 and to b if cond == 0.
    **/
    @:keep
    public var select : (T_affineCached, T_affineCached, GoInt) -> T_affineCached = null;
    @:keep
    public var fromP3 : Point -> T_affineCached = null;
    @:keep
    public var zero : () -> T_affineCached = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_affineCached;
}
@:keep class Scalar_static_extension {
    @:keep
    public static function _signedRadix16( _s:Scalar):GoArray<GoInt8> {
        if ((_s._s != null ? _s._s[((31 : GoInt))] : ((0 : GoUInt8))) > ((127 : GoUInt8))) {
            throw Go.toInterface(((("scalar has high bit set illegally" : GoString))));
        };
        var _digits:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0 ... 64) ((0 : GoInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((32 : GoInt)), _i++, {
                if (_digits != null) _digits[((2 : GoInt)) * _i] = ((((_s._s != null ? _s._s[_i] : ((0 : GoUInt8))) & ((15 : GoUInt8))) : GoInt8));
                if (_digits != null) _digits[(((2 : GoInt)) * _i) + ((1 : GoInt))] = (((((_s._s != null ? _s._s[_i] : ((0 : GoUInt8))) >> ((4 : GoUnTypedInt))) & ((15 : GoUInt8))) : GoInt8));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((63 : GoInt)), _i++, {
                var _carry:GoInt8 = ((_digits != null ? _digits[_i] : ((0 : GoInt8))) + ((8 : GoInt8))) >> ((4 : GoUnTypedInt));
                if (_digits != null) (_digits != null ? _digits[_i] : ((0 : GoInt8))) - (_carry << ((4 : GoUnTypedInt)));
                if (_digits != null) (_digits != null ? _digits[_i + ((1 : GoInt))] : ((0 : GoInt8))) + (_carry);
            });
        };
        return (_digits == null ? null : _digits.__copy__());
    }
    /**
        // nonAdjacentForm computes a width-w non-adjacent form for this scalar.
        //
        // w must be between 2 and 8, or nonAdjacentForm will panic.
    **/
    @:keep
    public static function _nonAdjacentForm( _s:Scalar, _w:GoUInt):GoArray<GoInt8> {
        if ((_s._s != null ? _s._s[((31 : GoInt))] : ((0 : GoUInt8))) > ((127 : GoUInt8))) {
            throw Go.toInterface(((("scalar has high bit set illegally" : GoString))));
        };
        if (_w < ((2 : GoUInt))) {
            throw Go.toInterface(((("w must be at least 2 by the definition of NAF" : GoString))));
        } else if (_w > ((8 : GoUInt))) {
            throw Go.toInterface(((("NAF digits must fit in int8" : GoString))));
        };
        var _naf:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0 ... 256) ((0 : GoInt8))]);
        var _digits:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 5) ((0 : GoUInt64))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                if (_digits != null) _digits[_i] = stdgo.encoding.binary.Binary.littleEndian.uint64(((_s._s.__slice__(_i * ((8 : GoInt))) : Slice<GoUInt8>)));
            });
        };
        var _width:GoUInt64 = (((((1 : GoUInt64)) << _w) : GoUInt64));
        var _windowMask:GoUInt64 = (((_width - ((1 : GoUInt64))) : GoUInt64));
        var _pos:GoUInt = ((((0 : GoUInt)) : GoUInt));
        var _carry:GoUInt64 = ((((0 : GoUInt64)) : GoUInt64));
        while (_pos < ((256 : GoUInt))) {
            var _indexU64:GoUInt = _pos / ((64 : GoUInt));
            var _indexBit:GoUInt = _pos % ((64 : GoUInt));
            var _bitBuf:GoUInt64 = ((0 : GoUInt64));
            if (_indexBit < (((64 : GoUInt)) - _w)) {
                _bitBuf = (_digits != null ? _digits[_indexU64] : ((0 : GoUInt64))) >> _indexBit;
            } else {
                _bitBuf = ((_digits != null ? _digits[_indexU64] : ((0 : GoUInt64))) >> _indexBit) | ((_digits != null ? _digits[((1 : GoUInt)) + _indexU64] : ((0 : GoUInt64))) << (((64 : GoUInt)) - _indexBit));
            };
            var _window:GoUInt64 = _carry + (_bitBuf & _windowMask);
            if ((_window & ((1 : GoUInt64))) == ((0 : GoUInt64))) {
                _pos = _pos + (((1 : GoUInt)));
                continue;
            };
            if (_window < (_width / ((2 : GoUInt64)))) {
                _carry = ((0 : GoUInt64));
                if (_naf != null) _naf[_pos] = ((_window : GoInt8));
            } else {
                _carry = ((1 : GoUInt64));
                if (_naf != null) _naf[_pos] = ((_window : GoInt8)) - ((_width : GoInt8));
            };
            _pos = _pos + (_w);
        };
        return (_naf == null ? null : _naf.__copy__());
    }
    /**
        // Equal returns 1 if s and t are equal, and 0 otherwise.
    **/
    @:keep
    public static function equal( _s:Scalar, _t:Scalar):GoInt {
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(((_s._s.__slice__(0) : Slice<GoUInt8>)), ((_t._s.__slice__(0) : Slice<GoUInt8>)));
    }
    /**
        // Bytes returns the canonical 32-byte little-endian encoding of s.
    **/
    @:keep
    public static function bytes( _s:Scalar):Slice<GoByte> {
        var _buf = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copySlice(_buf, ((_s._s.__slice__(0) : Slice<GoUInt8>)));
        return _buf;
    }
    /**
        // SetBytesWithClamping applies the buffer pruning described in RFC 8032,
        // Section 5.1.5 (also known as clamping) and sets s to the result. The input
        // must be 32 bytes, and it is not modified.
        //
        // Note that since Scalar values are always reduced modulo the prime order of
        // the curve, the resulting value will not preserve any of the cofactor-clearing
        // properties that clamping is meant to provide. It will however work as
        // expected as long as it is applied to points on the prime order subgroup, like
        // in Ed25519. In fact, it is lost to history why RFC 8032 adopted the
        // irrelevant RFC 7748 clamping, but it is now required for compatibility.
    **/
    @:keep
    public static function setBytesWithClamping( _s:Scalar, _x:Slice<GoByte>):Scalar {
        if ((_x != null ? _x.length : ((0 : GoInt))) != ((32 : GoInt))) {
            throw Go.toInterface(((("edwards25519: invalid SetBytesWithClamping input length" : GoString))));
        };
        var _wideBytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        Go.copySlice(((_wideBytes.__slice__(0) : Slice<GoUInt8>)), ((_x.__slice__(0) : Slice<GoUInt8>)));
        if (_wideBytes != null) (_wideBytes != null ? _wideBytes[((0 : GoInt))] : ((0 : GoUInt8))) & (((248 : GoUInt8)));
        if (_wideBytes != null) (_wideBytes != null ? _wideBytes[((31 : GoInt))] : ((0 : GoUInt8))) & (((63 : GoUInt8)));
        if (_wideBytes != null) (_wideBytes != null ? _wideBytes[((31 : GoInt))] : ((0 : GoUInt8))) | (((64 : GoUInt8)));
        _scReduce(_s._s, _wideBytes);
        return _s;
    }
    /**
        // SetCanonicalBytes sets s = x, where x is a 32-byte little-endian encoding of
        // s, and returns s. If x is not a canonical encoding of s, SetCanonicalBytes
        // returns nil and an error, and the receiver is unchanged.
    **/
    @:keep
    public static function setCanonicalBytes( _s:Scalar, _x:Slice<GoByte>):{ var _0 : Scalar; var _1 : Error; } {
        if ((_x != null ? _x.length : ((0 : GoInt))) != ((32 : GoInt))) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid scalar length" : GoString)))) };
        };
        var _ss = ((new Scalar() : Scalar));
        Go.copySlice(((_ss._s.__slice__(0) : Slice<GoUInt8>)), _x);
        if (!_isReduced(_ss)) {
            return { _0 : null, _1 : stdgo.errors.Errors.new_(((("invalid scalar encoding" : GoString)))) };
        };
        _s._s = (_ss._s == null ? null : _ss._s.__copy__());
        return { _0 : _s, _1 : ((null : stdgo.Error)) };
    }
    /**
        // SetUniformBytes sets s to an uniformly distributed value given 64 uniformly
        // distributed random bytes.
    **/
    @:keep
    public static function setUniformBytes( _s:Scalar, _x:Slice<GoByte>):Scalar {
        if ((_x != null ? _x.length : ((0 : GoInt))) != ((64 : GoInt))) {
            throw Go.toInterface(((("edwards25519: invalid SetUniformBytes input length" : GoString))));
        };
        var _wideBytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        Go.copySlice(((_wideBytes.__slice__(0) : Slice<GoUInt8>)), ((_x.__slice__(0) : Slice<GoUInt8>)));
        _scReduce(_s._s, _wideBytes);
        return _s;
    }
    /**
        // Set sets s = x, and returns s.
    **/
    @:keep
    public static function set( _s:Scalar, _x:Scalar):Scalar {
        {
            var __tmp__ = (_x == null ? null : _x.__copy__());
            _s._s = __tmp__._s;
        };
        return _s;
    }
    /**
        // Multiply sets s = x * y mod l, and returns s.
    **/
    @:keep
    public static function multiply( _s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        _scMulAdd(_s._s, _x._s, _y._s, _scZero._s);
        return _s;
    }
    /**
        // Negate sets s = -x mod l, and returns s.
    **/
    @:keep
    public static function negate( _s:Scalar, _x:Scalar):Scalar {
        _scMulAdd(_s._s, _scMinusOne._s, _x._s, _scZero._s);
        return _s;
    }
    /**
        // Subtract sets s = x - y mod l, and returns s.
    **/
    @:keep
    public static function subtract( _s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        _scMulAdd(_s._s, _scMinusOne._s, _y._s, _x._s);
        return _s;
    }
    /**
        // Add sets s = x + y mod l, and returns s.
    **/
    @:keep
    public static function add( _s:Scalar, _x:Scalar, _y:Scalar):Scalar {
        _scMulAdd(_s._s, _scOne._s, _x._s, _y._s);
        return _s;
    }
    /**
        // MultiplyAdd sets s = x * y + z mod l, and returns s.
    **/
    @:keep
    public static function multiplyAdd( _s:Scalar, _x:Scalar, _y:Scalar, _z:Scalar):Scalar {
        _scMulAdd(_s._s, _x._s, _y._s, _z._s);
        return _s;
    }
}
class Scalar_wrapper {
    @:keep
    public var _signedRadix16 : () -> GoArray<GoInt8> = null;
    /**
        // nonAdjacentForm computes a width-w non-adjacent form for this scalar.
        //
        // w must be between 2 and 8, or nonAdjacentForm will panic.
    **/
    @:keep
    public var _nonAdjacentForm : GoUInt -> GoArray<GoInt8> = null;
    /**
        // Equal returns 1 if s and t are equal, and 0 otherwise.
    **/
    @:keep
    public var equal : Scalar -> GoInt = null;
    /**
        // Bytes returns the canonical 32-byte little-endian encoding of s.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    /**
        // SetBytesWithClamping applies the buffer pruning described in RFC 8032,
        // Section 5.1.5 (also known as clamping) and sets s to the result. The input
        // must be 32 bytes, and it is not modified.
        //
        // Note that since Scalar values are always reduced modulo the prime order of
        // the curve, the resulting value will not preserve any of the cofactor-clearing
        // properties that clamping is meant to provide. It will however work as
        // expected as long as it is applied to points on the prime order subgroup, like
        // in Ed25519. In fact, it is lost to history why RFC 8032 adopted the
        // irrelevant RFC 7748 clamping, but it is now required for compatibility.
    **/
    @:keep
    public var setBytesWithClamping : Slice<GoByte> -> Scalar = null;
    /**
        // SetCanonicalBytes sets s = x, where x is a 32-byte little-endian encoding of
        // s, and returns s. If x is not a canonical encoding of s, SetCanonicalBytes
        // returns nil and an error, and the receiver is unchanged.
    **/
    @:keep
    public var setCanonicalBytes : Slice<GoByte> -> { var _0 : Scalar; var _1 : Error; } = null;
    /**
        // SetUniformBytes sets s to an uniformly distributed value given 64 uniformly
        // distributed random bytes.
    **/
    @:keep
    public var setUniformBytes : Slice<GoByte> -> Scalar = null;
    /**
        // Set sets s = x, and returns s.
    **/
    @:keep
    public var set : Scalar -> Scalar = null;
    /**
        // Multiply sets s = x * y mod l, and returns s.
    **/
    @:keep
    public var multiply : (Scalar, Scalar) -> Scalar = null;
    /**
        // Negate sets s = -x mod l, and returns s.
    **/
    @:keep
    public var negate : Scalar -> Scalar = null;
    /**
        // Subtract sets s = x - y mod l, and returns s.
    **/
    @:keep
    public var subtract : (Scalar, Scalar) -> Scalar = null;
    /**
        // Add sets s = x + y mod l, and returns s.
    **/
    @:keep
    public var add : (Scalar, Scalar) -> Scalar = null;
    /**
        // MultiplyAdd sets s = x * y + z mod l, and returns s.
    **/
    @:keep
    public var multiplyAdd : (Scalar, Scalar, Scalar) -> Scalar = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Scalar;
}
@:keep class T_projLookupTable_static_extension {
    /**
        // Set dest to x*Q, where -8 <= x <= 8, in constant time.
    **/
    @:keep
    public static function selectInto( _v:T_projLookupTable, _dest:T_projCached, _x:GoInt8):Void {
        var _xmask:GoInt8 = _x >> ((7 : GoUnTypedInt));
        var _xabs:GoUInt8 = ((((_x + _xmask) ^ _xmask) : GoUInt8));
        _dest.zero();
        {
            var _j:GoInt = ((1 : GoInt));
            Go.cfor(_j <= ((8 : GoInt)), _j++, {
                var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_xabs, ((_j : GoUInt8)));
                _dest.select((_v._points != null ? _v._points[_j - ((1 : GoInt))] : new T_projCached()), _dest, _cond);
            });
        };
        _dest.condNeg((((_xmask & ((1 : GoInt8))) : GoInt)));
    }
    /**
        // Builds a lookup table at runtime. Fast.
    **/
    @:keep
    public static function fromP3( _v:T_projLookupTable, _q:Point):Void {
        (_v._points != null ? _v._points[((0 : GoInt))] : new T_projCached()).fromP3(_q);
        var _tmpP3:Point = ((new Point() : Point));
        var _tmpP1xP1:T_projP1xP1 = ((new T_projP1xP1() : T_projP1xP1));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                (_v._points != null ? _v._points[_i + ((1 : GoInt))] : new T_projCached()).fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add(_q, (_v._points != null ? _v._points[_i] : new T_projCached()))));
            });
        };
    }
}
class T_projLookupTable_wrapper {
    /**
        // Set dest to x*Q, where -8 <= x <= 8, in constant time.
    **/
    @:keep
    public var selectInto : (T_projCached, GoInt8) -> Void = null;
    /**
        // Builds a lookup table at runtime. Fast.
    **/
    @:keep
    public var fromP3 : Point -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_projLookupTable;
}
@:keep class T_affineLookupTable_static_extension {
    /**
        // Set dest to x*Q, where -8 <= x <= 8, in constant time.
    **/
    @:keep
    public static function selectInto( _v:T_affineLookupTable, _dest:T_affineCached, _x:GoInt8):Void {
        var _xmask:GoInt8 = _x >> ((7 : GoUnTypedInt));
        var _xabs:GoUInt8 = ((((_x + _xmask) ^ _xmask) : GoUInt8));
        _dest.zero();
        {
            var _j:GoInt = ((1 : GoInt));
            Go.cfor(_j <= ((8 : GoInt)), _j++, {
                var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_xabs, ((_j : GoUInt8)));
                _dest.select((_v._points != null ? _v._points[_j - ((1 : GoInt))] : new T_affineCached()), _dest, _cond);
            });
        };
        _dest.condNeg((((_xmask & ((1 : GoInt8))) : GoInt)));
    }
    /**
        // This is not optimised for speed; fixed-base tables should be precomputed.
    **/
    @:keep
    public static function fromP3( _v:T_affineLookupTable, _q:Point):Void {
        (_v._points != null ? _v._points[((0 : GoInt))] : new T_affineCached()).fromP3(_q);
        var _tmpP3:Point = ((new Point() : Point));
        var _tmpP1xP1:T_projP1xP1 = ((new T_projP1xP1() : T_projP1xP1));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                (_v._points != null ? _v._points[_i + ((1 : GoInt))] : new T_affineCached()).fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(_q, (_v._points != null ? _v._points[_i] : new T_affineCached()))));
            });
        };
    }
}
class T_affineLookupTable_wrapper {
    /**
        // Set dest to x*Q, where -8 <= x <= 8, in constant time.
    **/
    @:keep
    public var selectInto : (T_affineCached, GoInt8) -> Void = null;
    /**
        // This is not optimised for speed; fixed-base tables should be precomputed.
    **/
    @:keep
    public var fromP3 : Point -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_affineLookupTable;
}
@:keep class T_nafLookupTable5_static_extension {
    /**
        // Given odd x with 0 < x < 2^4, return x*Q (in variable time).
    **/
    @:keep
    public static function selectInto( _v:T_nafLookupTable5, _dest:T_projCached, _x:GoInt8):Void {
        {
            var __tmp__ = ((_v._points != null ? _v._points[_x / ((2 : GoInt8))] : new T_projCached()) == null ? null : (_v._points != null ? _v._points[_x / ((2 : GoInt8))] : new T_projCached()).__copy__());
            _dest.yplusX = __tmp__.yplusX;
            _dest.yminusX = __tmp__.yminusX;
            _dest.z = __tmp__.z;
            _dest.t2d = __tmp__.t2d;
        };
    }
    /**
        // Builds a lookup table at runtime. Fast.
    **/
    @:keep
    public static function fromP3( _v:T_nafLookupTable5, _q:Point):Void {
        (_v._points != null ? _v._points[((0 : GoInt))] : new T_projCached()).fromP3(_q);
        var _q2:Point = ((new Point() : Point));
        _q2.add(_q, _q);
        var _tmpP3:Point = ((new Point() : Point));
        var _tmpP1xP1:T_projP1xP1 = ((new T_projP1xP1() : T_projP1xP1));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                (_v._points != null ? _v._points[_i + ((1 : GoInt))] : new T_projCached()).fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add(_q2, (_v._points != null ? _v._points[_i] : new T_projCached()))));
            });
        };
    }
}
class T_nafLookupTable5_wrapper {
    /**
        // Given odd x with 0 < x < 2^4, return x*Q (in variable time).
    **/
    @:keep
    public var selectInto : (T_projCached, GoInt8) -> Void = null;
    /**
        // Builds a lookup table at runtime. Fast.
    **/
    @:keep
    public var fromP3 : Point -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_nafLookupTable5;
}
@:keep class T_nafLookupTable8_static_extension {
    /**
        // Given odd x with 0 < x < 2^7, return x*Q (in variable time).
    **/
    @:keep
    public static function selectInto( _v:T_nafLookupTable8, _dest:T_affineCached, _x:GoInt8):Void {
        {
            var __tmp__ = ((_v._points != null ? _v._points[_x / ((2 : GoInt8))] : new T_affineCached()) == null ? null : (_v._points != null ? _v._points[_x / ((2 : GoInt8))] : new T_affineCached()).__copy__());
            _dest.yplusX = __tmp__.yplusX;
            _dest.yminusX = __tmp__.yminusX;
            _dest.t2d = __tmp__.t2d;
        };
    }
    /**
        // This is not optimised for speed; fixed-base tables should be precomputed.
    **/
    @:keep
    public static function fromP3( _v:T_nafLookupTable8, _q:Point):Void {
        (_v._points != null ? _v._points[((0 : GoInt))] : new T_affineCached()).fromP3(_q);
        var _q2:Point = ((new Point() : Point));
        _q2.add(_q, _q);
        var _tmpP3:Point = ((new Point() : Point));
        var _tmpP1xP1:T_projP1xP1 = ((new T_projP1xP1() : T_projP1xP1));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((63 : GoInt)), _i++, {
                (_v._points != null ? _v._points[_i + ((1 : GoInt))] : new T_affineCached()).fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(_q2, (_v._points != null ? _v._points[_i] : new T_affineCached()))));
            });
        };
    }
}
class T_nafLookupTable8_wrapper {
    /**
        // Given odd x with 0 < x < 2^7, return x*Q (in variable time).
    **/
    @:keep
    public var selectInto : (T_affineCached, GoInt8) -> Void = null;
    /**
        // This is not optimised for speed; fixed-base tables should be precomputed.
    **/
    @:keep
    public var fromP3 : Point -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_nafLookupTable8;
}
