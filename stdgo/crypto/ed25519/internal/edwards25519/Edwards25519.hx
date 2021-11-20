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
@:structInit class T_projP1xP1 {
    public function double(_p:Pointer<T_projP2>):Pointer<T_projP1xP1> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var xx:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yy:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), xplusYsq:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        xx.square(Go.pointer(_p.value.x));
        yy.square(Go.pointer(_p.value.y));
        zz2.square(Go.pointer(_p.value.z));
        zz2.add(Go.pointer(zz2), Go.pointer(zz2));
        xplusYsq.add(Go.pointer(_p.value.x), Go.pointer(_p.value.y));
        xplusYsq.square(Go.pointer(xplusYsq));
        _v.value.y.add(Go.pointer(yy), Go.pointer(xx));
        _v.value.z.subtract(Go.pointer(yy), Go.pointer(xx));
        _v.value.x.subtract(Go.pointer(xplusYsq), Go.pointer(_v.value.y));
        _v.value.t.subtract(Go.pointer(zz2), Go.pointer(_v.value.z));
        return _v;
    }
    public function subAffine(_p:Pointer<Point>, _q:Pointer<T_affineCached>):Pointer<T_projP1xP1> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), z2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        pp.multiply(Go.pointer(yplusX), Go.pointer(_q.value.yminusX));
        mm.multiply(Go.pointer(yminusX), Go.pointer(_q.value.yplusX));
        tt2d.multiply(Go.pointer(_p.value._t), Go.pointer(_q.value.t2d));
        z2.add(Go.pointer(_p.value._z), Go.pointer(_p.value._z));
        _v.value.x.subtract(Go.pointer(pp), Go.pointer(mm));
        _v.value.y.add(Go.pointer(pp), Go.pointer(mm));
        _v.value.z.subtract(Go.pointer(z2), Go.pointer(tt2d));
        _v.value.t.add(Go.pointer(z2), Go.pointer(tt2d));
        return _v;
    }
    public function addAffine(_p:Pointer<Point>, _q:Pointer<T_affineCached>):Pointer<T_projP1xP1> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), z2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        pp.multiply(Go.pointer(yplusX), Go.pointer(_q.value.yplusX));
        mm.multiply(Go.pointer(yminusX), Go.pointer(_q.value.yminusX));
        tt2d.multiply(Go.pointer(_p.value._t), Go.pointer(_q.value.t2d));
        z2.add(Go.pointer(_p.value._z), Go.pointer(_p.value._z));
        _v.value.x.subtract(Go.pointer(pp), Go.pointer(mm));
        _v.value.y.add(Go.pointer(pp), Go.pointer(mm));
        _v.value.z.add(Go.pointer(z2), Go.pointer(tt2d));
        _v.value.t.subtract(Go.pointer(z2), Go.pointer(tt2d));
        return _v;
    }
    public function sub(_p:Pointer<Point>, _q:Pointer<T_projCached>):Pointer<T_projP1xP1> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        pp.multiply(Go.pointer(yplusX), Go.pointer(_q.value.yminusX));
        mm.multiply(Go.pointer(yminusX), Go.pointer(_q.value.yplusX));
        tt2d.multiply(Go.pointer(_p.value._t), Go.pointer(_q.value.t2d));
        zz2.multiply(Go.pointer(_p.value._z), Go.pointer(_q.value.z));
        zz2.add(Go.pointer(zz2), Go.pointer(zz2));
        _v.value.x.subtract(Go.pointer(pp), Go.pointer(mm));
        _v.value.y.add(Go.pointer(pp), Go.pointer(mm));
        _v.value.z.subtract(Go.pointer(zz2), Go.pointer(tt2d));
        _v.value.t.add(Go.pointer(zz2), Go.pointer(tt2d));
        return _v;
    }
    public function add(_p:Pointer<Point>, _q:Pointer<T_projCached>):Pointer<T_projP1xP1> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), pp:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), mm:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), tt2d:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), zz2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        pp.multiply(Go.pointer(yplusX), Go.pointer(_q.value.yplusX));
        mm.multiply(Go.pointer(yminusX), Go.pointer(_q.value.yminusX));
        tt2d.multiply(Go.pointer(_p.value._t), Go.pointer(_q.value.t2d));
        zz2.multiply(Go.pointer(_p.value._z), Go.pointer(_q.value.z));
        zz2.add(Go.pointer(zz2), Go.pointer(zz2));
        _v.value.x.subtract(Go.pointer(pp), Go.pointer(mm));
        _v.value.y.add(Go.pointer(pp), Go.pointer(mm));
        _v.value.z.add(Go.pointer(zz2), Go.pointer(tt2d));
        _v.value.t.subtract(Go.pointer(zz2), Go.pointer(tt2d));
        return _v;
    }
    public var x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t:crypto.ed25519.internal.edwards25519.field.Field.Element) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(x) + " " + Go.string(y) + " " + Go.string(z) + " " + Go.string(t) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projP1xP1(x, y, z, t);
    }
    public function __set__(__tmp__) {
        this.x = __tmp__.x;
        this.y = __tmp__.y;
        this.z = __tmp__.z;
        this.t = __tmp__.t;
        return this;
    }
}
@:structInit class T_projP2 {
    public function fromP3(_p:Pointer<Point>):Pointer<T_projP2> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.x.set(Go.pointer(_p.value._x));
        _v.value.y.set(Go.pointer(_p.value._y));
        _v.value.z.set(Go.pointer(_p.value._z));
        return _v;
    }
    public function fromP1xP1(_p:Pointer<T_projP1xP1>):Pointer<T_projP2> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.x.multiply(Go.pointer(_p.value.x), Go.pointer(_p.value.t));
        _v.value.y.multiply(Go.pointer(_p.value.y), Go.pointer(_p.value.z));
        _v.value.z.multiply(Go.pointer(_p.value.z), Go.pointer(_p.value.t));
        return _v;
    }
    public function zero():Pointer<T_projP2> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.x.zero();
        _v.value.y.one();
        _v.value.z.one();
        return _v;
    }
    public var x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(x) + " " + Go.string(y) + " " + Go.string(z) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projP2(x, y, z);
    }
    public function __set__(__tmp__) {
        this.x = __tmp__.x;
        this.y = __tmp__.y;
        this.z = __tmp__.z;
        return this;
    }
}
@:structInit class Point {
    public function varTimeDoubleScalarBaseMult(_a:Pointer<Scalar>, a:Pointer<Point>, _b:Pointer<Scalar>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(a);
        var _basepointNafTable:Pointer<T_nafLookupTable8> = _basepointNafTable();
        var _aTable:T_nafLookupTable5 = new T_nafLookupTable5();
        _aTable.fromP3(a);
        var _aNaf:GoArray<GoInt8> = _a.value._nonAdjacentForm(((5 : GoUInt))).copy();
        var _bNaf:GoArray<GoInt8> = _b.value._nonAdjacentForm(((8 : GoUInt))).copy();
        var _i:GoInt = ((255 : GoInt));
        {
            var _j:GoInt = _i;
            Go.cfor(_j >= ((0 : GoInt)), _j--, {
                if (_aNaf[_j] != ((0 : GoInt8)) || _bNaf[_j] != ((0 : GoInt8))) {
                    break;
                };
            });
        };
        var _multA:Pointer<T_projCached> = Go.pointer(new T_projCached());
        var _multB:Pointer<T_affineCached> = Go.pointer(new T_affineCached());
        var _tmp1:Pointer<T_projP1xP1> = Go.pointer(new T_projP1xP1());
        var _tmp2:Pointer<T_projP2> = Go.pointer(new T_projP2());
        _tmp2.value.zero();
        Go.cfor(_i >= ((0 : GoInt)), _i--, {
            _tmp1.value.double(_tmp2);
            if (_aNaf[_i] > ((0 : GoInt8))) {
                _v.value._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, _aNaf[_i]);
                _tmp1.value.add(_v, _multA);
            } else if (_aNaf[_i] < ((0 : GoInt8))) {
                _v.value._fromP1xP1(_tmp1);
                _aTable.selectInto(_multA, -_aNaf[_i]);
                _tmp1.value.sub(_v, _multA);
            };
            if (_bNaf[_i] > ((0 : GoInt8))) {
                _v.value._fromP1xP1(_tmp1);
                _basepointNafTable.value.selectInto(_multB, _bNaf[_i]);
                _tmp1.value.addAffine(_v, _multB);
            } else if (_bNaf[_i] < ((0 : GoInt8))) {
                _v.value._fromP1xP1(_tmp1);
                _basepointNafTable.value.selectInto(_multB, -_bNaf[_i]);
                _tmp1.value.subAffine(_v, _multB);
            };
            _tmp2.value.fromP1xP1(_tmp1);
        });
        _v.value._fromP2(_tmp2);
        return _v;
    }
    public function scalarMult(_x:Pointer<Scalar>, _q:Pointer<Point>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_q);
        var _table:T_projLookupTable = new T_projLookupTable();
        _table.fromP3(_q);
        var _digits:GoArray<GoInt8> = _x.value._signedRadix16().copy();
        var _multiple:Pointer<T_projCached> = Go.pointer(new T_projCached());
        var _tmp1:Pointer<T_projP1xP1> = Go.pointer(new T_projP1xP1());
        var _tmp2:Pointer<T_projP2> = Go.pointer(new T_projP2());
        _table.selectInto(_multiple, _digits[((63 : GoInt))]);
        _v.value.set(newIdentityPoint());
        _tmp1.value.add(_v, _multiple);
        {
            var _i:GoInt = ((62 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _tmp2.value.fromP1xP1(_tmp1);
                _tmp1.value.double(_tmp2);
                _tmp2.value.fromP1xP1(_tmp1);
                _tmp1.value.double(_tmp2);
                _tmp2.value.fromP1xP1(_tmp1);
                _tmp1.value.double(_tmp2);
                _tmp2.value.fromP1xP1(_tmp1);
                _tmp1.value.double(_tmp2);
                _v.value._fromP1xP1(_tmp1);
                _table.selectInto(_multiple, _digits[_i]);
                _tmp1.value.add(_v, _multiple);
            });
        };
        _v.value._fromP1xP1(_tmp1);
        return _v;
    }
    public function scalarBaseMult(_x:Pointer<Scalar>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _basepointTable:Pointer<GoArray<T_affineLookupTable>> = _basepointTable();
        var _digits:GoArray<GoInt8> = _x.value._signedRadix16().copy();
        var _multiple:Pointer<T_affineCached> = Go.pointer(new T_affineCached());
        var _tmp1:Pointer<T_projP1xP1> = Go.pointer(new T_projP1xP1());
        var _tmp2:Pointer<T_projP2> = Go.pointer(new T_projP2());
        _v.value.set(newIdentityPoint());
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i = _i + (((2 : GoInt))), {
                _basepointTable.value[_i / ((2 : GoInt))].selectInto(_multiple, _digits[_i]);
                _tmp1.value.addAffine(_v, _multiple);
                _v.value._fromP1xP1(_tmp1);
            });
        };
        _tmp2.value.fromP3(_v);
        _tmp1.value.double(_tmp2);
        _tmp2.value.fromP1xP1(_tmp1);
        _tmp1.value.double(_tmp2);
        _tmp2.value.fromP1xP1(_tmp1);
        _tmp1.value.double(_tmp2);
        _tmp2.value.fromP1xP1(_tmp1);
        _tmp1.value.double(_tmp2);
        _v.value._fromP1xP1(_tmp1);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i = _i + (((2 : GoInt))), {
                _basepointTable.value[_i / ((2 : GoInt))].selectInto(_multiple, _digits[_i]);
                _tmp1.value.addAffine(_v, _multiple);
                _v.value._fromP1xP1(_tmp1);
            });
        };
        return _v;
    }
    public function equal(_u:Pointer<Point>):GoInt {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_v, _u);
        var _t1:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t2:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t3:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _t4:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _t1.multiply(Go.pointer(_v.value._x), Go.pointer(_u.value._z));
        _t2.multiply(Go.pointer(_u.value._x), Go.pointer(_v.value._z));
        _t3.multiply(Go.pointer(_v.value._y), Go.pointer(_u.value._z));
        _t4.multiply(Go.pointer(_u.value._y), Go.pointer(_v.value._z));
        return _t1.equal(Go.pointer(_t2)) & _t3.equal(Go.pointer(_t4));
    }
    public function negate(_p:Pointer<Point>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_p);
        _v.value._x.negate(Go.pointer(_p.value._x));
        _v.value._y.set(Go.pointer(_p.value._y));
        _v.value._z.set(Go.pointer(_p.value._z));
        _v.value._t.negate(Go.pointer(_p.value._t));
        return _v;
    }
    public function subtract(_p:Pointer<Point>, _q:Pointer<Point>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_p, _q);
        var _qCached:Pointer<T_projCached> = Go.pointer(new T_projCached()).value.fromP3(_q);
        var _result:Pointer<T_projP1xP1> = Go.pointer(new T_projP1xP1()).value.sub(_p, _qCached);
        return _v.value._fromP1xP1(_result);
    }
    public function add(_p:Pointer<Point>, _q:Pointer<Point>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_p, _q);
        var _qCached:Pointer<T_projCached> = Go.pointer(new T_projCached()).value.fromP3(_q);
        var _result:Pointer<T_projP1xP1> = Go.pointer(new T_projP1xP1()).value.add(_p, _qCached);
        return _v.value._fromP1xP1(_result);
    }
    public function _fromP2(_p:Pointer<T_projP2>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._x.multiply(Go.pointer(_p.value.x), Go.pointer(_p.value.z));
        _v.value._y.multiply(Go.pointer(_p.value.y), Go.pointer(_p.value.z));
        _v.value._z.square(Go.pointer(_p.value.z));
        _v.value._t.multiply(Go.pointer(_p.value.x), Go.pointer(_p.value.y));
        return _v;
    }
    public function _fromP1xP1(_p:Pointer<T_projP1xP1>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._x.multiply(Go.pointer(_p.value.x), Go.pointer(_p.value.t));
        _v.value._y.multiply(Go.pointer(_p.value.y), Go.pointer(_p.value.z));
        _v.value._z.multiply(Go.pointer(_p.value.z), Go.pointer(_p.value.t));
        _v.value._t.multiply(Go.pointer(_p.value.x), Go.pointer(_p.value.y));
        return _v;
    }
    public function setBytes(_x:Slice<GoByte>):{ var _0 : Pointer<Point>; var _1 : Error; } {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.length != ((32 : GoInt))) {
            return { _0 : new Pointer<Point>().nil(), _1 : stdgo.errors.Errors.new_("edwards25519: invalid point encoding length") };
        };
        var _y:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.setBytes(_x);
        var _y2:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.square(_y);
        var _u:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.subtract(_y2, _feOne);
        var _vv:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.multiply(_y2, _d);
        _vv = _vv.value.add(_vv, _feOne);
        var __tmp__ = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.sqrtRatio(_u, _vv), _xx:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = __tmp__._0, _wasSquare:GoInt = __tmp__._1;
        if (_wasSquare == ((0 : GoInt))) {
            return { _0 : new Pointer<Point>().nil(), _1 : stdgo.errors.Errors.new_("edwards25519: invalid point encoding") };
        };
        var _xxNeg:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.negate(_xx);
        _xx = _xx.value.select(_xxNeg, _xx, (((_x[((31 : GoInt))] >> ((7 : GoUnTypedInt))) : GoInt)));
        _v.value._x.set(_xx);
        _v.value._y.set(_y);
        _v.value._z.one();
        _v.value._t.multiply(_xx, _y);
        return { _0 : _v, _1 : ((null : stdgo.Error)) };
    }
    public function _bytes(_buf:Pointer<GoArray<GoByte>>):Slice<GoByte> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _checkInitialized(_v);
        var _zInv:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _x:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element(), _y:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _zInv.invert(Go.pointer(_v.value._z));
        _x.multiply(Go.pointer(_v.value._x), Go.pointer(_zInv));
        _y.multiply(Go.pointer(_v.value._y), Go.pointer(_zInv));
        var _out:Slice<GoUInt8> = _copyFieldElement(_buf, Go.pointer(_y));
        _out[((31 : GoInt))] = _out[((31 : GoInt))] | ((((_x.isNegative() << ((7 : GoUnTypedInt))) : GoByte)));
        return _out;
    }
    public function bytes():Slice<GoByte> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        return _v.value._bytes(Go.pointer(_buf));
    }
    public function set(_u:Pointer<Point>):Pointer<Point> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value = _u.value.__copy__();
        return _v;
    }
    public var _x : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _y : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var _t : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var ___blank__0 : T_incomparable = new T_incomparable();
    public function new(?_x:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_y:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?_t:crypto.ed25519.internal.edwards25519.field.Field.Element, ?___blank__0:T_incomparable) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_x) + " " + Go.string(_y) + " " + Go.string(_z) + " " + Go.string(_t) + " " + Go.string(___blank__0) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Point(_x, _y, _z, _t, ___blank__0);
    }
    public function __set__(__tmp__) {
        this._x = __tmp__._x;
        this._y = __tmp__._y;
        this._z = __tmp__._z;
        this._t = __tmp__._t;
        this.___blank__0 = __tmp__.___blank__0;
        return this;
    }
}
@:named class T_incomparable {
    public var __t__ : GoArray<() -> Void>;
    public function new(?t:GoArray<() -> Void>) {
        __t__ = t == null ? new GoArray<() -> Void>(...[for (i in 0 ... 0) null]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_incomparable(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:structInit class T_projCached {
    public function condNeg(_cond:GoInt):Pointer<T_projCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.swap(Go.pointer(_v.value.yminusX), _cond);
        _v.value.t2d.select(Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.negate(Go.pointer(_v.value.t2d)), Go.pointer(_v.value.t2d), _cond);
        return _v;
    }
    public function select(_a:Pointer<T_projCached>, _b:Pointer<T_projCached>, _cond:GoInt):Pointer<T_projCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.select(Go.pointer(_a.value.yplusX), Go.pointer(_b.value.yplusX), _cond);
        _v.value.yminusX.select(Go.pointer(_a.value.yminusX), Go.pointer(_b.value.yminusX), _cond);
        _v.value.z.select(Go.pointer(_a.value.z), Go.pointer(_b.value.z), _cond);
        _v.value.t2d.select(Go.pointer(_a.value.t2d), Go.pointer(_b.value.t2d), _cond);
        return _v;
    }
    public function fromP3(_p:Pointer<Point>):Pointer<T_projCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        _v.value.yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        _v.value.z.set(Go.pointer(_p.value._z));
        _v.value.t2d.multiply(Go.pointer(_p.value._t), _d2);
        return _v;
    }
    public function zero():Pointer<T_projCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.one();
        _v.value.yminusX.one();
        _v.value.z.one();
        _v.value.t2d.zero();
        return _v;
    }
    public var yplusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var yminusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var z : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t2d : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?z:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t2d:crypto.ed25519.internal.edwards25519.field.Field.Element) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(yplusX) + " " + Go.string(yminusX) + " " + Go.string(z) + " " + Go.string(t2d) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projCached(yplusX, yminusX, z, t2d);
    }
    public function __set__(__tmp__) {
        this.yplusX = __tmp__.yplusX;
        this.yminusX = __tmp__.yminusX;
        this.z = __tmp__.z;
        this.t2d = __tmp__.t2d;
        return this;
    }
}
@:structInit class T_affineCached {
    public function condNeg(_cond:GoInt):Pointer<T_affineCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.swap(Go.pointer(_v.value.yminusX), _cond);
        _v.value.t2d.select(Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.negate(Go.pointer(_v.value.t2d)), Go.pointer(_v.value.t2d), _cond);
        return _v;
    }
    public function select(_a:Pointer<T_affineCached>, _b:Pointer<T_affineCached>, _cond:GoInt):Pointer<T_affineCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.select(Go.pointer(_a.value.yplusX), Go.pointer(_b.value.yplusX), _cond);
        _v.value.yminusX.select(Go.pointer(_a.value.yminusX), Go.pointer(_b.value.yminusX), _cond);
        _v.value.t2d.select(Go.pointer(_a.value.t2d), Go.pointer(_b.value.t2d), _cond);
        return _v;
    }
    public function fromP3(_p:Pointer<Point>):Pointer<T_affineCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.add(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        _v.value.yminusX.subtract(Go.pointer(_p.value._y), Go.pointer(_p.value._x));
        _v.value.t2d.multiply(Go.pointer(_p.value._t), _d2);
        var _invZ:crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
        _invZ.invert(Go.pointer(_p.value._z));
        _v.value.yplusX.multiply(Go.pointer(_v.value.yplusX), Go.pointer(_invZ));
        _v.value.yminusX.multiply(Go.pointer(_v.value.yminusX), Go.pointer(_invZ));
        _v.value.t2d.multiply(Go.pointer(_v.value.t2d), Go.pointer(_invZ));
        return _v;
    }
    public function zero():Pointer<T_affineCached> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value.yplusX.one();
        _v.value.yminusX.one();
        _v.value.t2d.zero();
        return _v;
    }
    public var yplusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var yminusX : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public var t2d : crypto.ed25519.internal.edwards25519.field.Field.Element = new crypto.ed25519.internal.edwards25519.field.Field.Element();
    public function new(?yplusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?yminusX:crypto.ed25519.internal.edwards25519.field.Field.Element, ?t2d:crypto.ed25519.internal.edwards25519.field.Field.Element) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(yplusX) + " " + Go.string(yminusX) + " " + Go.string(t2d) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_affineCached(yplusX, yminusX, t2d);
    }
    public function __set__(__tmp__) {
        this.yplusX = __tmp__.yplusX;
        this.yminusX = __tmp__.yminusX;
        this.t2d = __tmp__.t2d;
        return this;
    }
}
@:structInit class Scalar {
    public function _signedRadix16():GoArray<GoInt8> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._s[((31 : GoInt))] > ((127 : GoUInt8))) {
            throw "scalar has high bit set illegally";
        };
        var _digits:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0 ... 64) ((0 : GoInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((32 : GoInt)), _i++, {
                _digits[((2 : GoInt)) * _i] = (((_s.value._s[_i] & ((15 : GoUInt8))) : GoInt8));
                _digits[((2 : GoInt)) * _i + ((1 : GoInt))] = (((((_s.value._s[_i] >> ((4 : GoUnTypedInt)))) & ((15 : GoUInt8))) : GoInt8));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((63 : GoInt)), _i++, {
                var _carry:GoInt8 = ((_digits[_i] + ((8 : GoInt8))) >> ((4 : GoUnTypedInt)));
                _digits[_i] = _digits[_i] - ((_carry << ((4 : GoUnTypedInt))));
                _digits[_i + ((1 : GoInt))] = _digits[_i + ((1 : GoInt))] + (_carry);
            });
        };
        return _digits.copy();
    }
    public function _nonAdjacentForm(_w:GoUInt):GoArray<GoInt8> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_s.value._s[((31 : GoInt))] > ((127 : GoUInt8))) {
            throw "scalar has high bit set illegally";
        };
        if (_w < ((2 : GoUInt))) {
            throw "w must be at least 2 by the definition of NAF";
        } else if (_w > ((8 : GoUInt))) {
            throw "NAF digits must fit in int8";
        };
        var _naf:GoArray<GoInt8> = new GoArray<GoInt8>(...[for (i in 0 ... 256) ((0 : GoInt8))]);
        var _digits:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 5) ((0 : GoUInt64))]);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                _digits[_i] = stdgo.encoding.binary.Binary.littleEndian.uint64(_s.value._s.__slice__(_i * ((8 : GoInt))));
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
            if (_indexBit < ((64 : GoUInt)) - _w) {
                _bitBuf = (_digits[_indexU64] >> _indexBit);
            } else {
                _bitBuf = ((_digits[_indexU64] >> _indexBit)) | ((_digits[((1 : GoUInt)) + _indexU64] << (((64 : GoUInt)) - _indexBit)));
            };
            var _window:GoUInt64 = _carry + (_bitBuf & _windowMask);
            if (_window & ((1 : GoUInt64)) == ((0 : GoUInt64))) {
                _pos = _pos + (((1 : GoUInt)));
                continue;
            };
            if (_window < _width / ((2 : GoUInt64))) {
                _carry = ((0 : GoUInt64));
                _naf[_pos] = ((_window : GoInt8));
            } else {
                _carry = ((1 : GoUInt64));
                _naf[_pos] = ((_window : GoInt8)) - ((_width : GoInt8));
            };
            _pos = _pos + (_w);
        };
        return _naf.copy();
    }
    public function equal(_t:Pointer<Scalar>):GoInt {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_s.value._s.__slice__(0), _t.value._s.__slice__(0));
    }
    public function bytes():Slice<GoByte> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((32 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        Go.copy(_buf, _s.value._s.__slice__(0));
        return _buf;
    }
    public function setBytesWithClamping(_x:Slice<GoByte>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.length != ((32 : GoInt))) {
            throw "edwards25519: invalid SetBytesWithClamping input length";
        };
        var _wideBytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        Go.copy(_wideBytes.__slice__(0), _x.__slice__(0));
        _wideBytes[((0 : GoInt))] = _wideBytes[((0 : GoInt))] & (((248 : GoUInt8)));
        _wideBytes[((31 : GoInt))] = _wideBytes[((31 : GoInt))] & (((63 : GoUInt8)));
        _wideBytes[((31 : GoInt))] = _wideBytes[((31 : GoInt))] | (((64 : GoUInt8)));
        _scReduce(Go.pointer(_s.value._s), Go.pointer(_wideBytes));
        return _s;
    }
    public function setCanonicalBytes(_x:Slice<GoByte>):{ var _0 : Pointer<Scalar>; var _1 : Error; } {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.length != ((32 : GoInt))) {
            return { _0 : new Pointer<Scalar>().nil(), _1 : stdgo.errors.Errors.new_("invalid scalar length") };
        };
        var _ss:Pointer<Scalar> = Go.pointer(new Scalar());
        Go.copy(_ss.value._s.__slice__(0), _x);
        if (!_isReduced(_ss)) {
            return { _0 : new Pointer<Scalar>().nil(), _1 : stdgo.errors.Errors.new_("invalid scalar encoding") };
        };
        _s.value._s = _ss.value._s.copy();
        return { _0 : _s, _1 : ((null : stdgo.Error)) };
    }
    public function setUniformBytes(_x:Slice<GoByte>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_x.length != ((64 : GoInt))) {
            throw "edwards25519: invalid SetUniformBytes input length";
        };
        var _wideBytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        Go.copy(_wideBytes.__slice__(0), _x.__slice__(0));
        _scReduce(Go.pointer(_s.value._s), Go.pointer(_wideBytes));
        return _s;
    }
    public function set(_x:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _s.value = _x.value.__copy__();
        return _s;
    }
    public function multiply(_x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _scMulAdd(Go.pointer(_s.value._s), Go.pointer(_x.value._s), Go.pointer(_y.value._s), Go.pointer(_scZero._s));
        return _s;
    }
    public function negate(_x:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _scMulAdd(Go.pointer(_s.value._s), Go.pointer(_scMinusOne._s), Go.pointer(_x.value._s), Go.pointer(_scZero._s));
        return _s;
    }
    public function subtract(_x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _scMulAdd(Go.pointer(_s.value._s), Go.pointer(_scMinusOne._s), Go.pointer(_y.value._s), Go.pointer(_x.value._s));
        return _s;
    }
    public function add(_x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _scMulAdd(Go.pointer(_s.value._s), Go.pointer(_scOne._s), Go.pointer(_x.value._s), Go.pointer(_y.value._s));
        return _s;
    }
    public function multiplyAdd(_x:Pointer<Scalar>, _y:Pointer<Scalar>, _z:Pointer<Scalar>):Pointer<Scalar> {
        var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _scMulAdd(Go.pointer(_s.value._s), Go.pointer(_x.value._s), Go.pointer(_y.value._s), Go.pointer(_z.value._s));
        return _s;
    }
    public var _s : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
    public function new(?_s:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_s) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Scalar(_s);
    }
    public function __set__(__tmp__) {
        this._s = __tmp__._s;
        return this;
    }
}
@:structInit @:local class T__struct_45 {
    public var _table : GoArray<T_affineLookupTable> = new GoArray<T_affineLookupTable>(...[for (i in 0 ... 32) new T_affineLookupTable()]);
    public var _initOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public function new(?_table:GoArray<T_affineLookupTable>, ?_initOnce:stdgo.sync.Sync.Once) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_table) + " " + Go.string(_initOnce) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_45(_table, _initOnce);
    }
    public function __set__(__tmp__) {
        this._table = __tmp__._table;
        this._initOnce = __tmp__._initOnce;
        return this;
    }
}
@:structInit @:local class T__struct_46 {
    public var _table : T_nafLookupTable8 = new T_nafLookupTable8();
    public var _initOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
    public function new(?_table:T_nafLookupTable8, ?_initOnce:stdgo.sync.Sync.Once) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_table) + " " + Go.string(_initOnce) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_46(_table, _initOnce);
    }
    public function __set__(__tmp__) {
        this._table = __tmp__._table;
        this._initOnce = __tmp__._initOnce;
        return this;
    }
}
@:structInit class T_projLookupTable {
    public function selectInto(_dest:Pointer<T_projCached>, _x:GoInt8):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _xmask:GoInt8 = (_x >> ((7 : GoUnTypedInt)));
        var _xabs:GoUInt8 = ((((_x + _xmask) ^ _xmask) : GoUInt8));
        _dest.value.zero();
        {
            var _j:GoInt = ((1 : GoInt));
            Go.cfor(_j <= ((8 : GoInt)), _j++, {
                var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_xabs, ((_j : GoUInt8)));
                _dest.value.select(Go.pointer(_v.value._points[_j - ((1 : GoInt))]), _dest, _cond);
            });
        };
        _dest.value.condNeg((((_xmask & ((1 : GoInt8))) : GoInt)));
    }
    public function fromP3(_q:Pointer<Point>):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._points[((0 : GoInt))].fromP3(_q);
        var _tmpP3:Point = new Point().__copy__();
        var _tmpP1xP1:T_projP1xP1 = new T_projP1xP1().__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _v.value._points[_i + ((1 : GoInt))].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add(_q, Go.pointer(_v.value._points[_i]))));
            });
        };
    }
    public var _points : GoArray<T_projCached> = new GoArray<T_projCached>(...[for (i in 0 ... 8) new T_projCached()]);
    public function new(?_points:GoArray<T_projCached>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_points) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_projLookupTable(_points);
    }
    public function __set__(__tmp__) {
        this._points = __tmp__._points;
        return this;
    }
}
@:structInit class T_affineLookupTable {
    public function selectInto(_dest:Pointer<T_affineCached>, _x:GoInt8):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _xmask:GoInt8 = (_x >> ((7 : GoUnTypedInt)));
        var _xabs:GoUInt8 = ((((_x + _xmask) ^ _xmask) : GoUInt8));
        _dest.value.zero();
        {
            var _j:GoInt = ((1 : GoInt));
            Go.cfor(_j <= ((8 : GoInt)), _j++, {
                var _cond:GoInt = stdgo.crypto.subtle.Subtle.constantTimeByteEq(_xabs, ((_j : GoUInt8)));
                _dest.value.select(Go.pointer(_v.value._points[_j - ((1 : GoInt))]), _dest, _cond);
            });
        };
        _dest.value.condNeg((((_xmask & ((1 : GoInt8))) : GoInt)));
    }
    public function fromP3(_q:Pointer<Point>):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._points[((0 : GoInt))].fromP3(_q);
        var _tmpP3:Point = new Point().__copy__();
        var _tmpP1xP1:T_projP1xP1 = new T_projP1xP1().__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _v.value._points[_i + ((1 : GoInt))].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(_q, Go.pointer(_v.value._points[_i]))));
            });
        };
    }
    public var _points : GoArray<T_affineCached> = new GoArray<T_affineCached>(...[for (i in 0 ... 8) new T_affineCached()]);
    public function new(?_points:GoArray<T_affineCached>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_points) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_affineLookupTable(_points);
    }
    public function __set__(__tmp__) {
        this._points = __tmp__._points;
        return this;
    }
}
@:structInit class T_nafLookupTable5 {
    public function selectInto(_dest:Pointer<T_projCached>, _x:GoInt8):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _dest.value = _v.value._points[_x / ((2 : GoInt8))].__copy__();
    }
    public function fromP3(_q:Pointer<Point>):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._points[((0 : GoInt))].fromP3(_q);
        var _q2:Point = new Point().__copy__();
        _q2.add(_q, _q);
        var _tmpP3:Point = new Point().__copy__();
        var _tmpP1xP1:T_projP1xP1 = new T_projP1xP1().__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _v.value._points[_i + ((1 : GoInt))].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.add(Go.pointer(_q2), Go.pointer(_v.value._points[_i]))));
            });
        };
    }
    public var _points : GoArray<T_projCached> = new GoArray<T_projCached>(...[for (i in 0 ... 8) new T_projCached()]);
    public function new(?_points:GoArray<T_projCached>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_points) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable5(_points);
    }
    public function __set__(__tmp__) {
        this._points = __tmp__._points;
        return this;
    }
}
@:structInit class T_nafLookupTable8 {
    public function selectInto(_dest:Pointer<T_affineCached>, _x:GoInt8):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _dest.value = _v.value._points[_x / ((2 : GoInt8))].__copy__();
    }
    public function fromP3(_q:Pointer<Point>):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._points[((0 : GoInt))].fromP3(_q);
        var _q2:Point = new Point().__copy__();
        _q2.add(_q, _q);
        var _tmpP3:Point = new Point().__copy__();
        var _tmpP1xP1:T_projP1xP1 = new T_projP1xP1().__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((63 : GoInt)), _i++, {
                _v.value._points[_i + ((1 : GoInt))].fromP3(_tmpP3._fromP1xP1(_tmpP1xP1.addAffine(Go.pointer(_q2), Go.pointer(_v.value._points[_i]))));
            });
        };
    }
    public var _points : GoArray<T_affineCached> = new GoArray<T_affineCached>(...[for (i in 0 ... 64) new T_affineCached()]);
    public function new(?_points:GoArray<T_affineCached>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_points) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nafLookupTable8(_points);
    }
    public function __set__(__tmp__) {
        this._points = __tmp__._points;
        return this;
    }
}
var _scOne : Scalar = new Scalar(new GoArray<GoUInt8>(
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
((0 : GoUInt8))).copy()).__copy__();
var __tmp__0 = Go.pointer(new Point()).value.setBytes(new Slice<GoUInt8>(
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
((0 : GoUInt8))));
var _identity = __tmp__0._0;
var _feOne : Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.one();
var _0 = __tmp__0._1;
var _basepointNafTablePrecomp : T__struct_46 = new T__struct_46();
var __tmp__1 = Go.pointer(new Point()).value.setBytes(new Slice<GoUInt8>(
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
((102 : GoUInt8))));
var _1 = __tmp__1._1;
var _d : Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.setBytes(new Slice<GoUInt8>(
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
((82 : GoUInt8))));
var _d2 : Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element> = Go.pointer(new crypto.ed25519.internal.edwards25519.field.Field.Element()).value.add(_d, _d);
var _scMinusOne : Scalar = new Scalar(new GoArray<GoUInt8>(
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
((16 : GoUInt8))).copy()).__copy__();
var _basepointTablePrecomp : T__struct_45 = new T__struct_45();
var _scZero : Scalar = new Scalar(new GoArray<GoUInt8>(
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
((0 : GoUInt8))).copy()).__copy__();
var _generator = __tmp__1._0;
function _checkInitialized(_points:haxe.Rest<Pointer<Point>>):Void {
        var _points = new Slice<Pointer<Point>>(..._points);
        for (_p in _points) {
            if (Go.toInterface(_p.value._x) == Go.toInterface((new crypto.ed25519.internal.edwards25519.field.Field.Element())) && Go.toInterface(_p.value._y) == Go.toInterface((new crypto.ed25519.internal.edwards25519.field.Field.Element()))) {
                throw "edwards25519: use of uninitialized Point";
            };
        };
    }
/**
    // NewIdentityPoint returns a new Point set to the identity.
**/
function newIdentityPoint():Pointer<Point> {
        return Go.pointer(new Point()).value.set(_identity);
    }
/**
    // NewGeneratorPoint returns a new Point set to the canonical generator.
**/
function newGeneratorPoint():Pointer<Point> {
        return Go.pointer(new Point()).value.set(_generator);
    }
function _copyFieldElement(_buf:Pointer<GoArray<GoByte>>, _v:Pointer<crypto.ed25519.internal.edwards25519.field.Field.Element>):Slice<GoByte> {
        Go.copy(_buf.value.__slice__(0), _v.value.bytes());
        return _buf.value.__slice__(0);
    }
/**
    // NewScalar returns a new zero Scalar.
**/
function newScalar():Pointer<Scalar> {
        return Go.pointer(new Scalar());
    }
/**
    // isReduced returns whether the given scalar is reduced modulo l.
**/
function _isReduced(_s:Pointer<Scalar>):Bool {
        {
            var _i:GoInt = _s.value._s.length - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if (_s.value._s[_i] > _scMinusOne._s[_i]) {
                    return false;
                } else if (_s.value._s[_i] < _scMinusOne._s[_i]) {
                    return true;
                };
            });
        };
        return true;
    }
function _load3(_in:Slice<GoByte>):GoInt64 {
        var _r:GoInt64 = ((_in[((0 : GoInt))] : GoInt64));
        _r = _r | ((((_in[((1 : GoInt))] : GoInt64)) << ((8 : GoUnTypedInt))));
        _r = _r | ((((_in[((2 : GoInt))] : GoInt64)) << ((16 : GoUnTypedInt))));
        return _r;
    }
function _load4(_in:Slice<GoByte>):GoInt64 {
        var _r:GoInt64 = ((_in[((0 : GoInt))] : GoInt64));
        _r = _r | ((((_in[((1 : GoInt))] : GoInt64)) << ((8 : GoUnTypedInt))));
        _r = _r | ((((_in[((2 : GoInt))] : GoInt64)) << ((16 : GoUnTypedInt))));
        _r = _r | ((((_in[((3 : GoInt))] : GoInt64)) << ((24 : GoUnTypedInt))));
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
function _scMulAdd(_s:Pointer<GoArray<GoByte>>, _a:Pointer<GoArray<GoByte>>, _b:Pointer<GoArray<GoByte>>, _c:Pointer<GoArray<GoByte>>):Void {
        var _a0:GoInt64 = ((2097151 : GoInt64)) & _load3(_a.value.__slice__(0));
        var _a1:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_a.value.__slice__(((2 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _a2:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_a.value.__slice__(((5 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _a3:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_a.value.__slice__(((7 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _a4:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_a.value.__slice__(((10 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _a5:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_a.value.__slice__(((13 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _a6:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_a.value.__slice__(((15 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _a7:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_a.value.__slice__(((18 : GoInt)))) >> ((3 : GoUnTypedInt))));
        var _a8:GoInt64 = ((2097151 : GoInt64)) & _load3(_a.value.__slice__(((21 : GoInt))));
        var _a9:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_a.value.__slice__(((23 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _a10:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_a.value.__slice__(((26 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _a11:GoInt64 = ((_load4(_a.value.__slice__(((28 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _b0:GoInt64 = ((2097151 : GoInt64)) & _load3(_b.value.__slice__(0));
        var _b1:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_b.value.__slice__(((2 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _b2:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_b.value.__slice__(((5 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _b3:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_b.value.__slice__(((7 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _b4:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_b.value.__slice__(((10 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _b5:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_b.value.__slice__(((13 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _b6:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_b.value.__slice__(((15 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _b7:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_b.value.__slice__(((18 : GoInt)))) >> ((3 : GoUnTypedInt))));
        var _b8:GoInt64 = ((2097151 : GoInt64)) & _load3(_b.value.__slice__(((21 : GoInt))));
        var _b9:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_b.value.__slice__(((23 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _b10:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_b.value.__slice__(((26 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _b11:GoInt64 = ((_load4(_b.value.__slice__(((28 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _c0:GoInt64 = ((2097151 : GoInt64)) & _load3(_c.value.__slice__(0));
        var _c1:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_c.value.__slice__(((2 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _c2:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_c.value.__slice__(((5 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _c3:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_c.value.__slice__(((7 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _c4:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_c.value.__slice__(((10 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _c5:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_c.value.__slice__(((13 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _c6:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_c.value.__slice__(((15 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _c7:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_c.value.__slice__(((18 : GoInt)))) >> ((3 : GoUnTypedInt))));
        var _c8:GoInt64 = ((2097151 : GoInt64)) & _load3(_c.value.__slice__(((21 : GoInt))));
        var _c9:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_c.value.__slice__(((23 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _c10:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_c.value.__slice__(((26 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _c11:GoInt64 = ((_load4(_c.value.__slice__(((28 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _carry:GoArray<GoInt64> = new GoArray<GoInt64>(...[for (i in 0 ... 23) ((0 : GoInt64))]);
        var _s0:GoInt64 = _c0 + _a0 * _b0;
        var _s1:GoInt64 = _c1 + _a0 * _b1 + _a1 * _b0;
        var _s2:GoInt64 = _c2 + _a0 * _b2 + _a1 * _b1 + _a2 * _b0;
        var _s3:GoInt64 = _c3 + _a0 * _b3 + _a1 * _b2 + _a2 * _b1 + _a3 * _b0;
        var _s4:GoInt64 = _c4 + _a0 * _b4 + _a1 * _b3 + _a2 * _b2 + _a3 * _b1 + _a4 * _b0;
        var _s5:GoInt64 = _c5 + _a0 * _b5 + _a1 * _b4 + _a2 * _b3 + _a3 * _b2 + _a4 * _b1 + _a5 * _b0;
        var _s6:GoInt64 = _c6 + _a0 * _b6 + _a1 * _b5 + _a2 * _b4 + _a3 * _b3 + _a4 * _b2 + _a5 * _b1 + _a6 * _b0;
        var _s7:GoInt64 = _c7 + _a0 * _b7 + _a1 * _b6 + _a2 * _b5 + _a3 * _b4 + _a4 * _b3 + _a5 * _b2 + _a6 * _b1 + _a7 * _b0;
        var _s8:GoInt64 = _c8 + _a0 * _b8 + _a1 * _b7 + _a2 * _b6 + _a3 * _b5 + _a4 * _b4 + _a5 * _b3 + _a6 * _b2 + _a7 * _b1 + _a8 * _b0;
        var _s9:GoInt64 = _c9 + _a0 * _b9 + _a1 * _b8 + _a2 * _b7 + _a3 * _b6 + _a4 * _b5 + _a5 * _b4 + _a6 * _b3 + _a7 * _b2 + _a8 * _b1 + _a9 * _b0;
        var _s10:GoInt64 = _c10 + _a0 * _b10 + _a1 * _b9 + _a2 * _b8 + _a3 * _b7 + _a4 * _b6 + _a5 * _b5 + _a6 * _b4 + _a7 * _b3 + _a8 * _b2 + _a9 * _b1 + _a10 * _b0;
        var _s11:GoInt64 = _c11 + _a0 * _b11 + _a1 * _b10 + _a2 * _b9 + _a3 * _b8 + _a4 * _b7 + _a5 * _b6 + _a6 * _b5 + _a7 * _b4 + _a8 * _b3 + _a9 * _b2 + _a10 * _b1 + _a11 * _b0;
        var _s12:GoInt64 = _a1 * _b11 + _a2 * _b10 + _a3 * _b9 + _a4 * _b8 + _a5 * _b7 + _a6 * _b6 + _a7 * _b5 + _a8 * _b4 + _a9 * _b3 + _a10 * _b2 + _a11 * _b1;
        var _s13:GoInt64 = _a2 * _b11 + _a3 * _b10 + _a4 * _b9 + _a5 * _b8 + _a6 * _b7 + _a7 * _b6 + _a8 * _b5 + _a9 * _b4 + _a10 * _b3 + _a11 * _b2;
        var _s14:GoInt64 = _a3 * _b11 + _a4 * _b10 + _a5 * _b9 + _a6 * _b8 + _a7 * _b7 + _a8 * _b6 + _a9 * _b5 + _a10 * _b4 + _a11 * _b3;
        var _s15:GoInt64 = _a4 * _b11 + _a5 * _b10 + _a6 * _b9 + _a7 * _b8 + _a8 * _b7 + _a9 * _b6 + _a10 * _b5 + _a11 * _b4;
        var _s16:GoInt64 = _a5 * _b11 + _a6 * _b10 + _a7 * _b9 + _a8 * _b8 + _a9 * _b7 + _a10 * _b6 + _a11 * _b5;
        var _s17:GoInt64 = _a6 * _b11 + _a7 * _b10 + _a8 * _b9 + _a9 * _b8 + _a10 * _b7 + _a11 * _b6;
        var _s18:GoInt64 = _a7 * _b11 + _a8 * _b10 + _a9 * _b9 + _a10 * _b8 + _a11 * _b7;
        var _s19:GoInt64 = _a8 * _b11 + _a9 * _b10 + _a10 * _b9 + _a11 * _b8;
        var _s20:GoInt64 = _a9 * _b11 + _a10 * _b10 + _a11 * _b9;
        var _s21:GoInt64 = _a10 * _b11 + _a11 * _b10;
        var _s22:GoInt64 = _a11 * _b11;
        var _s23:GoInt64 = ((((0 : GoInt64)) : GoInt64));
        _carry[((0 : GoInt))] = ((_s0 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = ((_s2 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = ((_s4 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = ((_s6 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = ((_s8 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = ((_s10 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((12 : GoInt))] = ((_s12 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s13 = _s13 + (_carry[((12 : GoInt))]);
        _s12 = _s12 - ((_carry[((12 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((14 : GoInt))] = ((_s14 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s15 = _s15 + (_carry[((14 : GoInt))]);
        _s14 = _s14 - ((_carry[((14 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((16 : GoInt))] = ((_s16 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s17 = _s17 + (_carry[((16 : GoInt))]);
        _s16 = _s16 - ((_carry[((16 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((18 : GoInt))] = ((_s18 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s19 = _s19 + (_carry[((18 : GoInt))]);
        _s18 = _s18 - ((_carry[((18 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((20 : GoInt))] = ((_s20 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s21 = _s21 + (_carry[((20 : GoInt))]);
        _s20 = _s20 - ((_carry[((20 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((22 : GoInt))] = ((_s22 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s23 = _s23 + (_carry[((22 : GoInt))]);
        _s22 = _s22 - ((_carry[((22 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = ((_s1 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = ((_s3 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = ((_s5 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = ((_s7 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = ((_s9 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = ((_s11 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((13 : GoInt))] = ((_s13 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s14 = _s14 + (_carry[((13 : GoInt))]);
        _s13 = _s13 - ((_carry[((13 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((15 : GoInt))] = ((_s15 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s16 = _s16 + (_carry[((15 : GoInt))]);
        _s15 = _s15 - ((_carry[((15 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((17 : GoInt))] = ((_s17 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s18 = _s18 + (_carry[((17 : GoInt))]);
        _s17 = _s17 - ((_carry[((17 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((19 : GoInt))] = ((_s19 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s20 = _s20 + (_carry[((19 : GoInt))]);
        _s19 = _s19 - ((_carry[((19 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((21 : GoInt))] = ((_s21 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s22 = _s22 + (_carry[((21 : GoInt))]);
        _s21 = _s21 - ((_carry[((21 : GoInt))] << ((21 : GoUnTypedInt))));
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
        _carry[((6 : GoInt))] = ((_s6 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = ((_s8 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = ((_s10 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((12 : GoInt))] = ((_s12 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s13 = _s13 + (_carry[((12 : GoInt))]);
        _s12 = _s12 - ((_carry[((12 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((14 : GoInt))] = ((_s14 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s15 = _s15 + (_carry[((14 : GoInt))]);
        _s14 = _s14 - ((_carry[((14 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((16 : GoInt))] = ((_s16 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s17 = _s17 + (_carry[((16 : GoInt))]);
        _s16 = _s16 - ((_carry[((16 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = ((_s7 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = ((_s9 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = ((_s11 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((13 : GoInt))] = ((_s13 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s14 = _s14 + (_carry[((13 : GoInt))]);
        _s13 = _s13 - ((_carry[((13 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((15 : GoInt))] = ((_s15 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s16 = _s16 + (_carry[((15 : GoInt))]);
        _s15 = _s15 - ((_carry[((15 : GoInt))] << ((21 : GoUnTypedInt))));
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
        _carry[((0 : GoInt))] = ((_s0 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = ((_s2 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = ((_s4 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = ((_s6 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = ((_s8 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = ((_s10 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = ((_s1 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = ((_s3 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = ((_s5 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = ((_s7 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = ((_s9 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = ((_s11 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        _carry[((0 : GoInt))] = (_s0 >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = (_s1 >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = (_s2 >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = (_s3 >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = (_s4 >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = (_s5 >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = (_s6 >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = (_s7 >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = (_s8 >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = (_s9 >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = (_s10 >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = (_s11 >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        _carry[((0 : GoInt))] = (_s0 >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = (_s1 >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = (_s2 >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = (_s3 >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = (_s4 >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = (_s5 >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = (_s6 >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = (_s7 >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = (_s8 >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = (_s9 >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = (_s10 >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _s.value[((0 : GoInt))] = (((_s0 >> ((0 : GoUnTypedInt))) : GoByte));
        _s.value[((1 : GoInt))] = (((_s0 >> ((8 : GoUnTypedInt))) : GoByte));
        _s.value[((2 : GoInt))] = (((((_s0 >> ((16 : GoUnTypedInt)))) | ((_s1 << ((5 : GoUnTypedInt))))) : GoByte));
        _s.value[((3 : GoInt))] = (((_s1 >> ((3 : GoUnTypedInt))) : GoByte));
        _s.value[((4 : GoInt))] = (((_s1 >> ((11 : GoUnTypedInt))) : GoByte));
        _s.value[((5 : GoInt))] = (((((_s1 >> ((19 : GoUnTypedInt)))) | ((_s2 << ((2 : GoUnTypedInt))))) : GoByte));
        _s.value[((6 : GoInt))] = (((_s2 >> ((6 : GoUnTypedInt))) : GoByte));
        _s.value[((7 : GoInt))] = (((((_s2 >> ((14 : GoUnTypedInt)))) | ((_s3 << ((7 : GoUnTypedInt))))) : GoByte));
        _s.value[((8 : GoInt))] = (((_s3 >> ((1 : GoUnTypedInt))) : GoByte));
        _s.value[((9 : GoInt))] = (((_s3 >> ((9 : GoUnTypedInt))) : GoByte));
        _s.value[((10 : GoInt))] = (((((_s3 >> ((17 : GoUnTypedInt)))) | ((_s4 << ((4 : GoUnTypedInt))))) : GoByte));
        _s.value[((11 : GoInt))] = (((_s4 >> ((4 : GoUnTypedInt))) : GoByte));
        _s.value[((12 : GoInt))] = (((_s4 >> ((12 : GoUnTypedInt))) : GoByte));
        _s.value[((13 : GoInt))] = (((((_s4 >> ((20 : GoUnTypedInt)))) | ((_s5 << ((1 : GoUnTypedInt))))) : GoByte));
        _s.value[((14 : GoInt))] = (((_s5 >> ((7 : GoUnTypedInt))) : GoByte));
        _s.value[((15 : GoInt))] = (((((_s5 >> ((15 : GoUnTypedInt)))) | ((_s6 << ((6 : GoUnTypedInt))))) : GoByte));
        _s.value[((16 : GoInt))] = (((_s6 >> ((2 : GoUnTypedInt))) : GoByte));
        _s.value[((17 : GoInt))] = (((_s6 >> ((10 : GoUnTypedInt))) : GoByte));
        _s.value[((18 : GoInt))] = (((((_s6 >> ((18 : GoUnTypedInt)))) | ((_s7 << ((3 : GoUnTypedInt))))) : GoByte));
        _s.value[((19 : GoInt))] = (((_s7 >> ((5 : GoUnTypedInt))) : GoByte));
        _s.value[((20 : GoInt))] = (((_s7 >> ((13 : GoUnTypedInt))) : GoByte));
        _s.value[((21 : GoInt))] = (((_s8 >> ((0 : GoUnTypedInt))) : GoByte));
        _s.value[((22 : GoInt))] = (((_s8 >> ((8 : GoUnTypedInt))) : GoByte));
        _s.value[((23 : GoInt))] = (((((_s8 >> ((16 : GoUnTypedInt)))) | ((_s9 << ((5 : GoUnTypedInt))))) : GoByte));
        _s.value[((24 : GoInt))] = (((_s9 >> ((3 : GoUnTypedInt))) : GoByte));
        _s.value[((25 : GoInt))] = (((_s9 >> ((11 : GoUnTypedInt))) : GoByte));
        _s.value[((26 : GoInt))] = (((((_s9 >> ((19 : GoUnTypedInt)))) | ((_s10 << ((2 : GoUnTypedInt))))) : GoByte));
        _s.value[((27 : GoInt))] = (((_s10 >> ((6 : GoUnTypedInt))) : GoByte));
        _s.value[((28 : GoInt))] = (((((_s10 >> ((14 : GoUnTypedInt)))) | ((_s11 << ((7 : GoUnTypedInt))))) : GoByte));
        _s.value[((29 : GoInt))] = (((_s11 >> ((1 : GoUnTypedInt))) : GoByte));
        _s.value[((30 : GoInt))] = (((_s11 >> ((9 : GoUnTypedInt))) : GoByte));
        _s.value[((31 : GoInt))] = (((_s11 >> ((17 : GoUnTypedInt))) : GoByte));
    }
/**
    // Input:
    //   s[0]+256*s[1]+...+256^63*s[63] = s
    //
    // Output:
    //   s[0]+256*s[1]+...+256^31*s[31] = s mod l
    //   where l = 2^252 + 27742317777372353535851937790883648493.
**/
function _scReduce(_out:Pointer<GoArray<GoByte>>, _s:Pointer<GoArray<GoByte>>):Void {
        var _s0:GoInt64 = ((2097151 : GoInt64)) & _load3(_s.value.__slice__(0));
        var _s1:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((2 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _s2:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((5 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _s3:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((7 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _s4:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((10 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _s5:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((13 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _s6:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((15 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _s7:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((18 : GoInt)))) >> ((3 : GoUnTypedInt))));
        var _s8:GoInt64 = ((2097151 : GoInt64)) & _load3(_s.value.__slice__(((21 : GoInt))));
        var _s9:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((23 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _s10:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((26 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _s11:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((28 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _s12:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((31 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _s13:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((34 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _s14:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((36 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _s15:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((39 : GoInt)))) >> ((3 : GoUnTypedInt))));
        var _s16:GoInt64 = ((2097151 : GoInt64)) & _load3(_s.value.__slice__(((42 : GoInt))));
        var _s17:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((44 : GoInt)))) >> ((5 : GoUnTypedInt))));
        var _s18:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((47 : GoInt)))) >> ((2 : GoUnTypedInt))));
        var _s19:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((49 : GoInt)))) >> ((7 : GoUnTypedInt))));
        var _s20:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((52 : GoInt)))) >> ((4 : GoUnTypedInt))));
        var _s21:GoInt64 = ((2097151 : GoInt64)) & ((_load3(_s.value.__slice__(((55 : GoInt)))) >> ((1 : GoUnTypedInt))));
        var _s22:GoInt64 = ((2097151 : GoInt64)) & ((_load4(_s.value.__slice__(((57 : GoInt)))) >> ((6 : GoUnTypedInt))));
        var _s23:GoInt64 = ((_load4(_s.value.__slice__(((60 : GoInt)))) >> ((3 : GoUnTypedInt))));
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
        _carry[((6 : GoInt))] = ((_s6 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = ((_s8 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = ((_s10 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((12 : GoInt))] = ((_s12 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s13 = _s13 + (_carry[((12 : GoInt))]);
        _s12 = _s12 - ((_carry[((12 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((14 : GoInt))] = ((_s14 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s15 = _s15 + (_carry[((14 : GoInt))]);
        _s14 = _s14 - ((_carry[((14 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((16 : GoInt))] = ((_s16 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s17 = _s17 + (_carry[((16 : GoInt))]);
        _s16 = _s16 - ((_carry[((16 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = ((_s7 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = ((_s9 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = ((_s11 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((13 : GoInt))] = ((_s13 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s14 = _s14 + (_carry[((13 : GoInt))]);
        _s13 = _s13 - ((_carry[((13 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((15 : GoInt))] = ((_s15 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s16 = _s16 + (_carry[((15 : GoInt))]);
        _s15 = _s15 - ((_carry[((15 : GoInt))] << ((21 : GoUnTypedInt))));
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
        _carry[((0 : GoInt))] = ((_s0 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = ((_s2 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = ((_s4 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = ((_s6 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = ((_s8 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = ((_s10 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = ((_s1 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = ((_s3 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = ((_s5 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = ((_s7 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = ((_s9 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = ((_s11 + ((((1 : GoUnTypedInt)) << ((20 : GoUnTypedInt))))) >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        _carry[((0 : GoInt))] = (_s0 >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = (_s1 >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = (_s2 >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = (_s3 >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = (_s4 >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = (_s5 >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = (_s6 >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = (_s7 >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = (_s8 >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = (_s9 >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = (_s10 >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((11 : GoInt))] = (_s11 >> ((21 : GoUnTypedInt)));
        _s12 = _s12 + (_carry[((11 : GoInt))]);
        _s11 = _s11 - ((_carry[((11 : GoInt))] << ((21 : GoUnTypedInt))));
        _s0 = _s0 + (_s12 * ((666643 : GoInt64)));
        _s1 = _s1 + (_s12 * ((470296 : GoInt64)));
        _s2 = _s2 + (_s12 * ((654183 : GoInt64)));
        _s3 = _s3 - (_s12 * ((997805 : GoInt64)));
        _s4 = _s4 + (_s12 * ((136657 : GoInt64)));
        _s5 = _s5 - (_s12 * ((683901 : GoInt64)));
        _s12 = ((0 : GoInt64));
        _carry[((0 : GoInt))] = (_s0 >> ((21 : GoUnTypedInt)));
        _s1 = _s1 + (_carry[((0 : GoInt))]);
        _s0 = _s0 - ((_carry[((0 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((1 : GoInt))] = (_s1 >> ((21 : GoUnTypedInt)));
        _s2 = _s2 + (_carry[((1 : GoInt))]);
        _s1 = _s1 - ((_carry[((1 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((2 : GoInt))] = (_s2 >> ((21 : GoUnTypedInt)));
        _s3 = _s3 + (_carry[((2 : GoInt))]);
        _s2 = _s2 - ((_carry[((2 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((3 : GoInt))] = (_s3 >> ((21 : GoUnTypedInt)));
        _s4 = _s4 + (_carry[((3 : GoInt))]);
        _s3 = _s3 - ((_carry[((3 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((4 : GoInt))] = (_s4 >> ((21 : GoUnTypedInt)));
        _s5 = _s5 + (_carry[((4 : GoInt))]);
        _s4 = _s4 - ((_carry[((4 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((5 : GoInt))] = (_s5 >> ((21 : GoUnTypedInt)));
        _s6 = _s6 + (_carry[((5 : GoInt))]);
        _s5 = _s5 - ((_carry[((5 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((6 : GoInt))] = (_s6 >> ((21 : GoUnTypedInt)));
        _s7 = _s7 + (_carry[((6 : GoInt))]);
        _s6 = _s6 - ((_carry[((6 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((7 : GoInt))] = (_s7 >> ((21 : GoUnTypedInt)));
        _s8 = _s8 + (_carry[((7 : GoInt))]);
        _s7 = _s7 - ((_carry[((7 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((8 : GoInt))] = (_s8 >> ((21 : GoUnTypedInt)));
        _s9 = _s9 + (_carry[((8 : GoInt))]);
        _s8 = _s8 - ((_carry[((8 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((9 : GoInt))] = (_s9 >> ((21 : GoUnTypedInt)));
        _s10 = _s10 + (_carry[((9 : GoInt))]);
        _s9 = _s9 - ((_carry[((9 : GoInt))] << ((21 : GoUnTypedInt))));
        _carry[((10 : GoInt))] = (_s10 >> ((21 : GoUnTypedInt)));
        _s11 = _s11 + (_carry[((10 : GoInt))]);
        _s10 = _s10 - ((_carry[((10 : GoInt))] << ((21 : GoUnTypedInt))));
        _out.value[((0 : GoInt))] = (((_s0 >> ((0 : GoUnTypedInt))) : GoByte));
        _out.value[((1 : GoInt))] = (((_s0 >> ((8 : GoUnTypedInt))) : GoByte));
        _out.value[((2 : GoInt))] = (((((_s0 >> ((16 : GoUnTypedInt)))) | ((_s1 << ((5 : GoUnTypedInt))))) : GoByte));
        _out.value[((3 : GoInt))] = (((_s1 >> ((3 : GoUnTypedInt))) : GoByte));
        _out.value[((4 : GoInt))] = (((_s1 >> ((11 : GoUnTypedInt))) : GoByte));
        _out.value[((5 : GoInt))] = (((((_s1 >> ((19 : GoUnTypedInt)))) | ((_s2 << ((2 : GoUnTypedInt))))) : GoByte));
        _out.value[((6 : GoInt))] = (((_s2 >> ((6 : GoUnTypedInt))) : GoByte));
        _out.value[((7 : GoInt))] = (((((_s2 >> ((14 : GoUnTypedInt)))) | ((_s3 << ((7 : GoUnTypedInt))))) : GoByte));
        _out.value[((8 : GoInt))] = (((_s3 >> ((1 : GoUnTypedInt))) : GoByte));
        _out.value[((9 : GoInt))] = (((_s3 >> ((9 : GoUnTypedInt))) : GoByte));
        _out.value[((10 : GoInt))] = (((((_s3 >> ((17 : GoUnTypedInt)))) | ((_s4 << ((4 : GoUnTypedInt))))) : GoByte));
        _out.value[((11 : GoInt))] = (((_s4 >> ((4 : GoUnTypedInt))) : GoByte));
        _out.value[((12 : GoInt))] = (((_s4 >> ((12 : GoUnTypedInt))) : GoByte));
        _out.value[((13 : GoInt))] = (((((_s4 >> ((20 : GoUnTypedInt)))) | ((_s5 << ((1 : GoUnTypedInt))))) : GoByte));
        _out.value[((14 : GoInt))] = (((_s5 >> ((7 : GoUnTypedInt))) : GoByte));
        _out.value[((15 : GoInt))] = (((((_s5 >> ((15 : GoUnTypedInt)))) | ((_s6 << ((6 : GoUnTypedInt))))) : GoByte));
        _out.value[((16 : GoInt))] = (((_s6 >> ((2 : GoUnTypedInt))) : GoByte));
        _out.value[((17 : GoInt))] = (((_s6 >> ((10 : GoUnTypedInt))) : GoByte));
        _out.value[((18 : GoInt))] = (((((_s6 >> ((18 : GoUnTypedInt)))) | ((_s7 << ((3 : GoUnTypedInt))))) : GoByte));
        _out.value[((19 : GoInt))] = (((_s7 >> ((5 : GoUnTypedInt))) : GoByte));
        _out.value[((20 : GoInt))] = (((_s7 >> ((13 : GoUnTypedInt))) : GoByte));
        _out.value[((21 : GoInt))] = (((_s8 >> ((0 : GoUnTypedInt))) : GoByte));
        _out.value[((22 : GoInt))] = (((_s8 >> ((8 : GoUnTypedInt))) : GoByte));
        _out.value[((23 : GoInt))] = (((((_s8 >> ((16 : GoUnTypedInt)))) | ((_s9 << ((5 : GoUnTypedInt))))) : GoByte));
        _out.value[((24 : GoInt))] = (((_s9 >> ((3 : GoUnTypedInt))) : GoByte));
        _out.value[((25 : GoInt))] = (((_s9 >> ((11 : GoUnTypedInt))) : GoByte));
        _out.value[((26 : GoInt))] = (((((_s9 >> ((19 : GoUnTypedInt)))) | ((_s10 << ((2 : GoUnTypedInt))))) : GoByte));
        _out.value[((27 : GoInt))] = (((_s10 >> ((6 : GoUnTypedInt))) : GoByte));
        _out.value[((28 : GoInt))] = (((((_s10 >> ((14 : GoUnTypedInt)))) | ((_s11 << ((7 : GoUnTypedInt))))) : GoByte));
        _out.value[((29 : GoInt))] = (((_s11 >> ((1 : GoUnTypedInt))) : GoByte));
        _out.value[((30 : GoInt))] = (((_s11 >> ((9 : GoUnTypedInt))) : GoByte));
        _out.value[((31 : GoInt))] = (((_s11 >> ((17 : GoUnTypedInt))) : GoByte));
    }
/**
    // basepointTable is a set of 32 affineLookupTables, where table i is generated
    // from 256i * basepoint. It is precomputed the first time it's used.
**/
function _basepointTable():Pointer<GoArray<T_affineLookupTable>> {
        _basepointTablePrecomp._initOnce.do_(function():Void {
            var _p:Pointer<Point> = newGeneratorPoint();
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((32 : GoInt)), _i++, {
                    _basepointTablePrecomp._table[_i].fromP3(_p);
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < ((8 : GoInt)), _j++, {
                            _p.value.add(_p, _p);
                        });
                    };
                });
            };
        });
        return Go.pointer(_basepointTablePrecomp._table);
    }
/**
    // basepointNafTable is the nafLookupTable8 for the basepoint.
    // It is precomputed the first time it's used.
**/
function _basepointNafTable():Pointer<T_nafLookupTable8> {
        _basepointNafTablePrecomp._initOnce.do_(function():Void {
            _basepointNafTablePrecomp._table.fromP3(newGeneratorPoint());
        });
        return Go.pointer(_basepointNafTablePrecomp._table);
    }
class T_projP1xP1_extension_fields {
    public function add(__tmp__, _p:Pointer<Point>, _q:Pointer<T_projCached>):Pointer<T_projP1xP1> return __tmp__.add(_p, _q);
    public function sub(__tmp__, _p:Pointer<Point>, _q:Pointer<T_projCached>):Pointer<T_projP1xP1> return __tmp__.sub(_p, _q);
    public function addAffine(__tmp__, _p:Pointer<Point>, _q:Pointer<T_affineCached>):Pointer<T_projP1xP1> return __tmp__.addAffine(_p, _q);
    public function subAffine(__tmp__, _p:Pointer<Point>, _q:Pointer<T_affineCached>):Pointer<T_projP1xP1> return __tmp__.subAffine(_p, _q);
    public function double(__tmp__, _p:Pointer<T_projP2>):Pointer<T_projP1xP1> return __tmp__.double(_p);
}
class T_projP2_extension_fields {
    public function zero(__tmp__):Pointer<T_projP2> return __tmp__.zero();
    public function fromP1xP1(__tmp__, _p:Pointer<T_projP1xP1>):Pointer<T_projP2> return __tmp__.fromP1xP1(_p);
    public function fromP3(__tmp__, _p:Pointer<Point>):Pointer<T_projP2> return __tmp__.fromP3(_p);
}
class Point_extension_fields {
    public function set(__tmp__, _u:Pointer<Point>):Pointer<Point> return __tmp__.set(_u);
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function _bytes(__tmp__, _buf:Pointer<GoArray<GoByte>>):Slice<GoByte> return __tmp__._bytes(_buf);
    public function setBytes(__tmp__, _x:Slice<GoByte>):{ var _0 : Pointer<Point>; var _1 : Error; } return __tmp__.setBytes(_x);
    public function _fromP1xP1(__tmp__, _p:Pointer<T_projP1xP1>):Pointer<Point> return __tmp__._fromP1xP1(_p);
    public function _fromP2(__tmp__, _p:Pointer<T_projP2>):Pointer<Point> return __tmp__._fromP2(_p);
    public function add(__tmp__, _p:Pointer<Point>, _q:Pointer<Point>):Pointer<Point> return __tmp__.add(_p, _q);
    public function subtract(__tmp__, _p:Pointer<Point>, _q:Pointer<Point>):Pointer<Point> return __tmp__.subtract(_p, _q);
    public function negate(__tmp__, _p:Pointer<Point>):Pointer<Point> return __tmp__.negate(_p);
    public function equal(__tmp__, _u:Pointer<Point>):GoInt return __tmp__.equal(_u);
    public function scalarBaseMult(__tmp__, _x:Pointer<Scalar>):Pointer<Point> return __tmp__.scalarBaseMult(_x);
    public function scalarMult(__tmp__, _x:Pointer<Scalar>, _q:Pointer<Point>):Pointer<Point> return __tmp__.scalarMult(_x, _q);
    public function varTimeDoubleScalarBaseMult(__tmp__, _a:Pointer<Scalar>, a:Pointer<Point>, _b:Pointer<Scalar>):Pointer<Point> return __tmp__.varTimeDoubleScalarBaseMult(_a, a, _b);
}
class T_projCached_extension_fields {
    public function zero(__tmp__):Pointer<T_projCached> return __tmp__.zero();
    public function fromP3(__tmp__, _p:Pointer<Point>):Pointer<T_projCached> return __tmp__.fromP3(_p);
    public function select(__tmp__, _a:Pointer<T_projCached>, _b:Pointer<T_projCached>, _cond:GoInt):Pointer<T_projCached> return __tmp__.select(_a, _b, _cond);
    public function condNeg(__tmp__, _cond:GoInt):Pointer<T_projCached> return __tmp__.condNeg(_cond);
}
class T_affineCached_extension_fields {
    public function zero(__tmp__):Pointer<T_affineCached> return __tmp__.zero();
    public function fromP3(__tmp__, _p:Pointer<Point>):Pointer<T_affineCached> return __tmp__.fromP3(_p);
    public function select(__tmp__, _a:Pointer<T_affineCached>, _b:Pointer<T_affineCached>, _cond:GoInt):Pointer<T_affineCached> return __tmp__.select(_a, _b, _cond);
    public function condNeg(__tmp__, _cond:GoInt):Pointer<T_affineCached> return __tmp__.condNeg(_cond);
}
class Scalar_extension_fields {
    public function multiplyAdd(__tmp__, _x:Pointer<Scalar>, _y:Pointer<Scalar>, _z:Pointer<Scalar>):Pointer<Scalar> return __tmp__.multiplyAdd(_x, _y, _z);
    public function add(__tmp__, _x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> return __tmp__.add(_x, _y);
    public function subtract(__tmp__, _x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> return __tmp__.subtract(_x, _y);
    public function negate(__tmp__, _x:Pointer<Scalar>):Pointer<Scalar> return __tmp__.negate(_x);
    public function multiply(__tmp__, _x:Pointer<Scalar>, _y:Pointer<Scalar>):Pointer<Scalar> return __tmp__.multiply(_x, _y);
    public function set(__tmp__, _x:Pointer<Scalar>):Pointer<Scalar> return __tmp__.set(_x);
    public function setUniformBytes(__tmp__, _x:Slice<GoByte>):Pointer<Scalar> return __tmp__.setUniformBytes(_x);
    public function setCanonicalBytes(__tmp__, _x:Slice<GoByte>):{ var _0 : Pointer<Scalar>; var _1 : Error; } return __tmp__.setCanonicalBytes(_x);
    public function setBytesWithClamping(__tmp__, _x:Slice<GoByte>):Pointer<Scalar> return __tmp__.setBytesWithClamping(_x);
    public function bytes(__tmp__):Slice<GoByte> return __tmp__.bytes();
    public function equal(__tmp__, _t:Pointer<Scalar>):GoInt return __tmp__.equal(_t);
    public function _nonAdjacentForm(__tmp__, _w:GoUInt):GoArray<GoInt8> return __tmp__._nonAdjacentForm(_w);
    public function _signedRadix16(__tmp__):GoArray<GoInt8> return __tmp__._signedRadix16();
}
class T_projLookupTable_extension_fields {
    public function fromP3(__tmp__, _q:Pointer<Point>):Void __tmp__.fromP3(_q);
    public function selectInto(__tmp__, _dest:Pointer<T_projCached>, _x:GoInt8):Void __tmp__.selectInto(_dest, _x);
}
class T_affineLookupTable_extension_fields {
    public function fromP3(__tmp__, _q:Pointer<Point>):Void __tmp__.fromP3(_q);
    public function selectInto(__tmp__, _dest:Pointer<T_affineCached>, _x:GoInt8):Void __tmp__.selectInto(_dest, _x);
}
class T_nafLookupTable5_extension_fields {
    public function fromP3(__tmp__, _q:Pointer<Point>):Void __tmp__.fromP3(_q);
    public function selectInto(__tmp__, _dest:Pointer<T_projCached>, _x:GoInt8):Void __tmp__.selectInto(_dest, _x);
}
class T_nafLookupTable8_extension_fields {
    public function fromP3(__tmp__, _q:Pointer<Point>):Void __tmp__.fromP3(_q);
    public function selectInto(__tmp__, _dest:Pointer<T_affineCached>, _x:GoInt8):Void __tmp__.selectInto(_dest, _x);
}
