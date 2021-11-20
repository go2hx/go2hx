package stdgo.crypto.elliptic;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Curve = StructType & {
    public function params():Pointer<CurveParams>;
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool;
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; };
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; };
    public function scalarMult(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; };
    public function scalarBaseMult(_k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; };
};
@:structInit class CurveParams {
    public function scalarBaseMult(_k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224.__copy__(), _p256.__copy__(), _p521.__copy__()), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarBaseMult(_k);
            };
        };
        return _curve.value.scalarMult(_curve.value.gx, _curve.value.gy, _k);
    }
    public function scalarMult(bx:Pointer<stdgo.math.big.Big.Int_>, by:Pointer<stdgo.math.big.Big.Int_>, _k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224.__copy__(), _p256.__copy__(), _p521.__copy__()), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarMult(bx, by, _k);
            };
        };
        var bz:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setInt64(((1 : GoInt64)));
        var _x:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _y:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _z:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        for (_byte in _k) {
            {
                var _bitNum:GoInt = ((0 : GoInt));
                Go.cfor(_bitNum < ((8 : GoInt)), _bitNum++, {
                    {
                        var __tmp__ = _curve.value._doubleJacobian(_x, _y, _z);
                        _x = __tmp__._0;
                        _y = __tmp__._1;
                        _z = __tmp__._2;
                    };
                    if (_byte & ((128 : GoUInt8)) == ((128 : GoUInt8))) {
                        {
                            var __tmp__ = _curve.value._addJacobian(bx, by, bz, _x, _y, _z);
                            _x = __tmp__._0;
                            _y = __tmp__._1;
                            _z = __tmp__._2;
                        };
                    };
                    _byte = (_byte << (((1 : GoUnTypedInt))));
                });
            };
        };
        return _curve.value._affineFromJacobian(_x, _y, _z);
    }
    public function _doubleJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _delta:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_z, _z);
        _delta.value.mod(_delta, _curve.value.p);
        var _gamma:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_y, _y);
        _gamma.value.mod(_gamma, _curve.value.p);
        var _alpha:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_x, _delta);
        if (_alpha.value.sign() == -((1 : GoUnTypedInt))) {
            _alpha.value.add(_alpha, _curve.value.p);
        };
        var _alpha2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.add(_x, _delta);
        _alpha.value.mul(_alpha, _alpha2);
        _alpha2.value.set(_alpha);
        _alpha.value.lsh(_alpha, ((1 : GoUInt)));
        _alpha.value.add(_alpha, _alpha2);
        var _beta:Pointer<stdgo.math.big.Big.Int_> = _alpha2.value.mul(_x, _gamma);
        var _x3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_alpha, _alpha);
        var _beta8:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.lsh(_beta, ((3 : GoUInt)));
        _beta8.value.mod(_beta8, _curve.value.p);
        _x3.value.sub(_x3, _beta8);
        if (_x3.value.sign() == -((1 : GoUnTypedInt))) {
            _x3.value.add(_x3, _curve.value.p);
        };
        _x3.value.mod(_x3, _curve.value.p);
        var _z3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.add(_y, _z);
        _z3.value.mul(_z3, _z3);
        _z3.value.sub(_z3, _gamma);
        if (_z3.value.sign() == -((1 : GoUnTypedInt))) {
            _z3.value.add(_z3, _curve.value.p);
        };
        _z3.value.sub(_z3, _delta);
        if (_z3.value.sign() == -((1 : GoUnTypedInt))) {
            _z3.value.add(_z3, _curve.value.p);
        };
        _z3.value.mod(_z3, _curve.value.p);
        _beta.value.lsh(_beta, ((2 : GoUInt)));
        _beta.value.sub(_beta, _x3);
        if (_beta.value.sign() == -((1 : GoUnTypedInt))) {
            _beta.value.add(_beta, _curve.value.p);
        };
        var _y3:Pointer<stdgo.math.big.Big.Int_> = _alpha.value.mul(_alpha, _beta);
        _gamma.value.mul(_gamma, _gamma);
        _gamma.value.lsh(_gamma, ((3 : GoUInt)));
        _gamma.value.mod(_gamma, _curve.value.p);
        _y3.value.sub(_y3, _gamma);
        if (_y3.value.sign() == -((1 : GoUnTypedInt))) {
            _y3.value.add(_y3, _curve.value.p);
        };
        _y3.value.mod(_y3, _curve.value.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224.__copy__(), _p521.__copy__()), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.double(_x1, _y1);
            };
        };
        var _z1:Pointer<stdgo.math.big.Big.Int_> = _zForAffine(_x1, _y1);
        return {
            var __tmp__ = _curve.value._doubleJacobian(_x1, _y1, _z1);
            _curve.value._affineFromJacobian(((__tmp__._0 : Pointer<stdgo.math.big.Big.Int_>)), ((__tmp__._1 : Pointer<stdgo.math.big.Big.Int_>)), ((__tmp__._2 : Pointer<stdgo.math.big.Big.Int_>)));
        };
    }
    public function _addJacobian(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _z1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>, _z2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _y3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _z3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        if (_z1.value.sign() == ((0 : GoInt))) {
            _x3.value.set(_x2);
            _y3.value.set(_y2);
            _z3.value.set(_z2);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        if (_z2.value.sign() == ((0 : GoInt))) {
            _x3.value.set(_x1);
            _y3.value.set(_y1);
            _z3.value.set(_z1);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        var _z1z1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_z1, _z1);
        _z1z1.value.mod(_z1z1, _curve.value.p);
        var _z2z2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_z2, _z2);
        _z2z2.value.mod(_z2z2, _curve.value.p);
        var _u1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_x1, _z2z2);
        _u1.value.mod(_u1, _curve.value.p);
        var _u2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_x2, _z1z1);
        _u2.value.mod(_u2, _curve.value.p);
        var _h:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_u2, _u1);
        var _xEqual:Bool = _h.value.sign() == ((0 : GoInt));
        if (_h.value.sign() == -((1 : GoUnTypedInt))) {
            _h.value.add(_h, _curve.value.p);
        };
        var _i:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.lsh(_h, ((1 : GoUInt)));
        _i.value.mul(_i, _i);
        var _j:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_h, _i);
        var _s1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_y1, _z2);
        _s1.value.mul(_s1, _z2z2);
        _s1.value.mod(_s1, _curve.value.p);
        var _s2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_y2, _z1);
        _s2.value.mul(_s2, _z1z1);
        _s2.value.mod(_s2, _curve.value.p);
        var _r:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.sub(_s2, _s1);
        if (_r.value.sign() == -((1 : GoUnTypedInt))) {
            _r.value.add(_r, _curve.value.p);
        };
        var _yEqual:Bool = _r.value.sign() == ((0 : GoInt));
        if (_xEqual && _yEqual) {
            return _curve.value._doubleJacobian(_x1, _y1, _z1);
        };
        _r.value.lsh(_r, ((1 : GoUInt)));
        var _v:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_u1, _i);
        _x3.value.set(_r);
        _x3.value.mul(_x3, _x3);
        _x3.value.sub(_x3, _j);
        _x3.value.sub(_x3, _v);
        _x3.value.sub(_x3, _v);
        _x3.value.mod(_x3, _curve.value.p);
        _y3.value.set(_r);
        _v.value.sub(_v, _x3);
        _y3.value.mul(_y3, _v);
        _s1.value.mul(_s1, _j);
        _s1.value.lsh(_s1, ((1 : GoUInt)));
        _y3.value.sub(_y3, _s1);
        _y3.value.mod(_y3, _curve.value.p);
        _z3.value.add(_z1, _z2);
        _z3.value.mul(_z3, _z3);
        _z3.value.sub(_z3, _z1z1);
        _z3.value.sub(_z3, _z2z2);
        _z3.value.mul(_z3, _h);
        _z3.value.mod(_z3, _curve.value.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224.__copy__(), _p521.__copy__()), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.add(_x1, _y1, _x2, _y2);
            };
        };
        var _z1:Pointer<stdgo.math.big.Big.Int_> = _zForAffine(_x1, _y1);
        var _z2:Pointer<stdgo.math.big.Big.Int_> = _zForAffine(_x2, _y2);
        return {
            var __tmp__ = _curve.value._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            _curve.value._affineFromJacobian(((__tmp__._0 : Pointer<stdgo.math.big.Big.Int_>)), ((__tmp__._1 : Pointer<stdgo.math.big.Big.Int_>)), ((__tmp__._2 : Pointer<stdgo.math.big.Big.Int_>)));
        };
    }
    public function _affineFromJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _xOut:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _yOut:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        if (_z.value.sign() == ((0 : GoInt))) {
            return { _0 : Go.pointer(new stdgo.math.big.Big.Int_()), _1 : Go.pointer(new stdgo.math.big.Big.Int_()) };
        };
        var _zinv:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.modInverse(_z, _curve.value.p);
        var _zinvsq:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_zinv, _zinv);
        _xOut = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_x, _zinvsq);
        _xOut.value.mod(_xOut, _curve.value.p);
        _zinvsq.value.mul(_zinvsq, _zinv);
        _yOut = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_y, _zinvsq);
        _yOut.value.mod(_yOut, _curve.value.p);
        return { _0 : _xOut, _1 : _yOut };
    }
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _matchesSpecificCurve(_curve, _p224.__copy__(), _p521.__copy__()), _specific:Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.isOnCurve(_x, _y);
            };
        };
        var _y2:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_y, _y);
        _y2.value.mod(_y2, _curve.value.p);
        return _curve.value._polynomial(_x).value.cmp(_y2) == ((0 : GoInt));
    }
    public function _polynomial(_x:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _x3:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mul(_x, _x);
        _x3.value.mul(_x3, _x);
        var _threeX:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.lsh(_x, ((1 : GoUInt)));
        _threeX.value.add(_threeX, _x);
        _x3.value.sub(_x3, _threeX);
        _x3.value.add(_x3, _curve.value.b);
        _x3.value.mod(_x3, _curve.value.p);
        return _x3;
    }
    public function params():Pointer<CurveParams> {
        var _curve = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _curve;
    }
    public var p : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var n : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var b : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var gx : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var gy : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var bitSize : GoInt = ((0 : GoInt));
    public var name : GoString = (("" : GoString));
    public function new(?p:Pointer<stdgo.math.big.Big.Int_>, ?n:Pointer<stdgo.math.big.Big.Int_>, ?b:Pointer<stdgo.math.big.Big.Int_>, ?gx:Pointer<stdgo.math.big.Big.Int_>, ?gy:Pointer<stdgo.math.big.Big.Int_>, ?bitSize:GoInt, ?name:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(p) + " " + Go.string(n) + " " + Go.string(b) + " " + Go.string(gx) + " " + Go.string(gy) + " " + Go.string(bitSize) + " " + Go.string(name) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CurveParams(p, n, b, gx, gy, bitSize, name);
    }
    public function __set__(__tmp__) {
        this.p = __tmp__.p;
        this.n = __tmp__.n;
        this.b = __tmp__.b;
        this.gx = __tmp__.gx;
        this.gy = __tmp__.gy;
        this.bitSize = __tmp__.bitSize;
        this.name = __tmp__.name;
        return this;
    }
}
@:structInit class T_p224Curve {
    public function scalarBaseMult(_scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _z1:T_p224FieldElement = new T_p224FieldElement(), _x2:T_p224FieldElement = new T_p224FieldElement(), _y2:T_p224FieldElement = new T_p224FieldElement(), _z2:T_p224FieldElement = new T_p224FieldElement();
        _z1.__t__[((0 : GoInt))] = ((1 : GoUInt32));
        _p224ScalarMult(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2), Go.pointer(_curve._gx), Go.pointer(_curve._gy), Go.pointer(_z1), _scalar);
        return _p224ToAffine(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2));
    }
    public function scalarMult(_bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _x1:T_p224FieldElement = new T_p224FieldElement(), _y1:T_p224FieldElement = new T_p224FieldElement(), _z1:T_p224FieldElement = new T_p224FieldElement(), _x2:T_p224FieldElement = new T_p224FieldElement(), _y2:T_p224FieldElement = new T_p224FieldElement(), _z2:T_p224FieldElement = new T_p224FieldElement();
        _p224FromBig(Go.pointer(_x1), _bigX1);
        _p224FromBig(Go.pointer(_y1), _bigY1);
        _z1.__t__[((0 : GoInt))] = ((1 : GoUInt32));
        _p224ScalarMult(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2), Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1), _scalar);
        return _p224ToAffine(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2));
    }
    public function double(_bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _x1:T_p224FieldElement = new T_p224FieldElement(), _y1:T_p224FieldElement = new T_p224FieldElement(), _z1:T_p224FieldElement = new T_p224FieldElement(), _x2:T_p224FieldElement = new T_p224FieldElement(), _y2:T_p224FieldElement = new T_p224FieldElement(), _z2:T_p224FieldElement = new T_p224FieldElement();
        _p224FromBig(Go.pointer(_x1), _bigX1);
        _p224FromBig(Go.pointer(_y1), _bigY1);
        _z1.__t__[((0 : GoInt))] = ((1 : GoUInt32));
        _p224DoubleJacobian(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2), Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1));
        return _p224ToAffine(Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2));
    }
    public function add(_bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>, _bigX2:Pointer<stdgo.math.big.Big.Int_>, _bigY2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _x1:T_p224FieldElement = new T_p224FieldElement(), _y1:T_p224FieldElement = new T_p224FieldElement(), _z1:T_p224FieldElement = new T_p224FieldElement(), _x2:T_p224FieldElement = new T_p224FieldElement(), _y2:T_p224FieldElement = new T_p224FieldElement(), _z2:T_p224FieldElement = new T_p224FieldElement(), _x3:T_p224FieldElement = new T_p224FieldElement(), _y3:T_p224FieldElement = new T_p224FieldElement(), _z3:T_p224FieldElement = new T_p224FieldElement();
        _p224FromBig(Go.pointer(_x1), _bigX1);
        _p224FromBig(Go.pointer(_y1), _bigY1);
        if (_bigX1.value.sign() != ((0 : GoInt)) || _bigY1.value.sign() != ((0 : GoInt))) {
            _z1.__t__[((0 : GoInt))] = ((1 : GoUInt32));
        };
        _p224FromBig(Go.pointer(_x2), _bigX2);
        _p224FromBig(Go.pointer(_y2), _bigY2);
        if (_bigX2.value.sign() != ((0 : GoInt)) || _bigY2.value.sign() != ((0 : GoInt))) {
            _z2.__t__[((0 : GoInt))] = ((1 : GoUInt32));
        };
        _p224AddJacobian(Go.pointer(_x3), Go.pointer(_y3), Go.pointer(_z3), Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1), Go.pointer(_x2), Go.pointer(_y2), Go.pointer(_z2));
        return _p224ToAffine(Go.pointer(_x3), Go.pointer(_y3), Go.pointer(_z3));
    }
    public function isOnCurve(_bigX:Pointer<stdgo.math.big.Big.Int_>, _bigY:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _curve = this.__copy__();
        var _x:T_p224FieldElement = new T_p224FieldElement(), _y:T_p224FieldElement = new T_p224FieldElement();
        _p224FromBig(Go.pointer(_x), _bigX);
        _p224FromBig(Go.pointer(_y), _bigY);
        var _tmp:T_p224LargeFieldElement = new T_p224LargeFieldElement();
        var _x3:T_p224FieldElement = new T_p224FieldElement();
        _p224Square(Go.pointer(_x3), Go.pointer(_x), Go.pointer(_tmp));
        _p224Mul(Go.pointer(_x3), Go.pointer(_x3), Go.pointer(_x), Go.pointer(_tmp));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _x.__t__[_i] = _x.__t__[_i] * (((3 : GoUInt32)));
            });
        };
        _p224Sub(Go.pointer(_x3), Go.pointer(_x3), Go.pointer(_x));
        _p224Reduce(Go.pointer(_x3));
        _p224Add(Go.pointer(_x3), Go.pointer(_x3), Go.pointer(_curve._b));
        _p224Contract(Go.pointer(_x3), Go.pointer(_x3));
        _p224Square(Go.pointer(_y), Go.pointer(_y), Go.pointer(_tmp));
        _p224Contract(Go.pointer(_y), Go.pointer(_y));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                if (_y.__t__[_i] != _x3.__t__[_i]) {
                    return false;
                };
            });
        };
        return true;
    }
    public function params():Pointer<CurveParams> {
        var _curve = this.__copy__();
        return _curve.curveParams;
    }
    @:embedded
    public var curveParams : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
    public var _gx : T_p224FieldElement = new T_p224FieldElement();
    public var _gy : T_p224FieldElement = new T_p224FieldElement();
    public var _b : T_p224FieldElement = new T_p224FieldElement();
    public function new(?curveParams:Pointer<CurveParams>, ?_gx:T_p224FieldElement, ?_gy:T_p224FieldElement, ?_b:T_p224FieldElement) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(curveParams) + " " + Go.string(_gx) + " " + Go.string(_gy) + " " + Go.string(_b) + "}";
    }
    public function _addJacobian(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _z1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>, _z2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._addJacobian(_0, _1, _2, _3, _4, _5);
    public function _affineFromJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curveParams._affineFromJacobian(_0, _1, _2);
    public function _doubleJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._doubleJacobian(_0, _1, _2);
    public function _polynomial(_x:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> return curveParams._polynomial(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p224Curve(curveParams, _gx, _gy, _b);
    }
    public function __set__(__tmp__) {
        this.curveParams = __tmp__.curveParams;
        this._gx = __tmp__._gx;
        this._gy = __tmp__._gy;
        this._b = __tmp__._b;
        return this;
    }
}
@:named class T_p224FieldElement {
    public var __t__ : GoArray<GoUInt32>;
    public function new(?t:GoArray<GoUInt32>) {
        __t__ = t == null ? new GoArray<GoUInt32>(...[for (i in 0 ... 8) ((0 : GoUInt32))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_p224FieldElement(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_p224LargeFieldElement {
    public var __t__ : GoArray<GoUInt64>;
    public function new(?t:GoArray<GoUInt64>) {
        __t__ = t == null ? new GoArray<GoUInt64>(...[for (i in 0 ... 15) ((0 : GoUInt64))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_p224LargeFieldElement(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:structInit class T_p256Curve {
    public function scalarMult(_bigX:Pointer<stdgo.math.big.Big.Int_>, _bigY:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _scalarReversed:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        _p256GetScalar(Go.pointer(_scalarReversed), _scalar);
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _x1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _y1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256FromBig(Go.pointer(_px), _bigX);
        _p256FromBig(Go.pointer(_py), _bigY);
        _p256ScalarMult(Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1), Go.pointer(_px), Go.pointer(_py), Go.pointer(_scalarReversed));
        return _p256ToAffine(Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1));
    }
    public function scalarBaseMult(_scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _scalarReversed:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        _p256GetScalar(Go.pointer(_scalarReversed), _scalar);
        var _x1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _y1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256ScalarBaseMult(Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1), Go.pointer(_scalarReversed));
        return _p256ToAffine(Go.pointer(_x1), Go.pointer(_y1), Go.pointer(_z1));
    }
    public function params():Pointer<CurveParams> {
        var _curve = this.__copy__();
        return _curve.curveParams;
    }
    @:embedded
    public var curveParams : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
    public function new(?curveParams:Pointer<CurveParams>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(curveParams) + "}";
    }
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams.add(_0, _1, _2, _3);
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams.double(_0, _1);
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool return curveParams.isOnCurve(_0, _1);
    public function _addJacobian(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _z1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>, _z2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._addJacobian(_0, _1, _2, _3, _4, _5);
    public function _affineFromJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return curveParams._affineFromJacobian(_0, _1, _2);
    public function _doubleJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._doubleJacobian(_0, _1, _2);
    public function _polynomial(_x:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> return curveParams._polynomial(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p256Curve(curveParams);
    }
    public function __set__(__tmp__) {
        this.curveParams = __tmp__.curveParams;
        return this;
    }
}
@:structInit class T_p521Curve {
    public function scalarBaseMult(_k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        return _curve.scalarMult(_curve.curveParams.value.gx, _curve.curveParams.value.gy, _k);
    }
    public function scalarMult(bx:Pointer<stdgo.math.big.Big.Int_>, by:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        var b:Pointer<T_p521Point> = _curve._jacobianFromAffine(bx, by);
        var _p:Pointer<T_p521Point> = Go.pointer((({ _x : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _y : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _z : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()) } : T_p521Point))), _t:Pointer<T_p521Point> = Go.pointer((({ _x : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _y : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _z : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()) } : T_p521Point)));
        for (_byte in _scalar) {
            {
                var _bitNum:GoInt = ((0 : GoInt));
                Go.cfor(_bitNum < ((8 : GoInt)), _bitNum++, {
                    _p.value._doubleJacobian(_p);
                    var _bit:GoUInt8 = ((_byte >> (((7 : GoInt)) - _bitNum))) & ((1 : GoUInt8));
                    _t.value._addJacobian(_p, b);
                    _p.value._x.value.select(_t.value._x, _p.value._x, ((_bit : GoInt)));
                    _p.value._y.value.select(_t.value._y, _p.value._y, ((_bit : GoInt)));
                    _p.value._z.value.select(_t.value._z, _p.value._z, ((_bit : GoInt)));
                });
            };
        };
        return _curve._affineFromJacobian(_p);
    }
    public function double(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        var _p:Pointer<T_p521Point> = _curve._jacobianFromAffine(_x1, _y1);
        return _curve._affineFromJacobian(_p.value._doubleJacobian(_p));
    }
    public function add(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        var _p1:Pointer<T_p521Point> = _curve._jacobianFromAffine(_x1, _y1);
        var _p2:Pointer<T_p521Point> = _curve._jacobianFromAffine(_x2, _y2);
        return _curve._affineFromJacobian(_p1.value._addJacobian(_p1, _p2));
    }
    public function _jacobianFromAffine(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Pointer<T_p521Point> {
        var _curve = this.__copy__();
        if (_x.value.sign() == ((0 : GoInt)) && _y.value.sign() == ((0 : GoInt))) {
            return Go.pointer((({ _x : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _y : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()), _z : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()) } : T_p521Point)));
        };
        return Go.pointer((({ _x : _bigIntToFiatP521(_x), _y : _bigIntToFiatP521(_y), _z : Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.one() } : T_p521Point)));
    }
    public function _affineFromJacobian(_p:Pointer<T_p521Point>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _curve = this.__copy__();
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        if (_p.value._z.value.isZero() == ((1 : GoInt))) {
            return { _0 : Go.pointer(new stdgo.math.big.Big.Int_()), _1 : Go.pointer(new stdgo.math.big.Big.Int_()) };
        };
        var _zinv:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.invert(_p.value._z);
        var _zinvsq:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_zinv, _zinv);
        var _xx:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p.value._x, _zinvsq);
        _zinvsq.value.mul(_zinvsq, _zinv);
        var _yy:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p.value._y, _zinvsq);
        return { _0 : _fiatP521ToBigInt(_xx), _1 : _fiatP521ToBigInt(_yy) };
    }
    public function isOnCurve(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool {
        var _curve = this.__copy__();
        var _x1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = _bigIntToFiatP521(_x);
        var _y1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = _bigIntToFiatP521(_y);
        var _b:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = _bigIntToFiatP521(_curve.curveParams.value.b);
        var _x3:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_x1);
        _x3.value.mul(_x3, _x1);
        var _threeX:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.add(_x1, _x1);
        _threeX.value.add(_threeX, _x1);
        _x3.value.sub(_x3, _threeX);
        _x3.value.add(_x3, _b);
        var _y2:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_y1);
        return _x3.value.equal(_y2) == ((1 : GoInt));
    }
    public function params():Pointer<CurveParams> {
        var _curve = this.__copy__();
        return _curve.curveParams;
    }
    @:embedded
    public var curveParams : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
    public function new(?curveParams:Pointer<CurveParams>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(curveParams) + "}";
    }
    public function _addJacobian(_x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _z1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>, _z2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._addJacobian(_0, _1, _2, _3, _4, _5);
    public function _doubleJacobian(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _1 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; var _2 : (Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>, Pointer<stdgo.math.big.Big.Int_>) -> { var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; }; } return curveParams._doubleJacobian(_0, _1, _2);
    public function _polynomial(_x:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> return curveParams._polynomial(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p521Curve(curveParams);
    }
    public function __set__(__tmp__) {
        this.curveParams = __tmp__.curveParams;
        return this;
    }
}
@:structInit class T_p521Point {
    public function _doubleJacobian(_p:Pointer<T_p521Point>):Pointer<T_p521Point> {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _delta:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_p.value._z);
        var _gamma:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_p.value._y);
        var _alpha:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.sub(_p.value._x, _delta);
        var _alpha2:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.add(_p.value._x, _delta);
        _alpha.value.mul(_alpha, _alpha2);
        _alpha2.value.set(_alpha);
        _alpha.value.add(_alpha, _alpha);
        _alpha.value.add(_alpha, _alpha2);
        var _beta:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = _alpha2.value.mul(_p.value._x, _gamma);
        _q.value._x.value.square(_alpha);
        var _beta8:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.add(_beta, _beta);
        _beta8.value.add(_beta8, _beta8);
        _beta8.value.add(_beta8, _beta8);
        _q.value._x.value.sub(_q.value._x, _beta8);
        _q.value._z.value.add(_p.value._y, _p.value._z);
        _q.value._z.value.square(_q.value._z);
        _q.value._z.value.sub(_q.value._z, _gamma);
        _q.value._z.value.sub(_q.value._z, _delta);
        _beta.value.add(_beta, _beta);
        _beta.value.add(_beta, _beta);
        _beta.value.sub(_beta, _q.value._x);
        _q.value._y.value.mul(_alpha, _beta);
        _gamma.value.square(_gamma);
        _gamma.value.add(_gamma, _gamma);
        _gamma.value.add(_gamma, _gamma);
        _gamma.value.add(_gamma, _gamma);
        _q.value._y.value.sub(_q.value._y, _gamma);
        return _q;
    }
    public function _addJacobian(_p1:Pointer<T_p521Point>, _p2:Pointer<T_p521Point>):Pointer<T_p521Point> {
        var _q = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _z1IsZero:GoInt = _p1.value._z.value.isZero();
        var _z2IsZero:GoInt = _p2.value._z.value.isZero();
        var _z1z1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_p1.value._z);
        var _z2z2:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.square(_p2.value._z);
        var _u1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p1.value._x, _z2z2);
        var _u2:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p2.value._x, _z1z1);
        var _h:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.sub(_u2, _u1);
        var _xEqual:Bool = _h.value.isZero() == ((1 : GoInt));
        var _i:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.add(_h, _h);
        _i.value.square(_i);
        var _j:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_h, _i);
        var _s1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p1.value._y, _p2.value._z);
        _s1.value.mul(_s1, _z2z2);
        var _s2:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_p2.value._y, _p1.value._z);
        _s2.value.mul(_s2, _z1z1);
        var _r:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.sub(_s2, _s1);
        var _yEqual:Bool = _r.value.isZero() == ((1 : GoInt));
        if (_xEqual && _yEqual && _z1IsZero == ((0 : GoInt)) && _z2IsZero == ((0 : GoInt))) {
            return _q.value._doubleJacobian(_p1);
        };
        _r.value.add(_r, _r);
        var _v:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.mul(_u1, _i);
        var _x:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.set(_r);
        _x.value.square(_x);
        _x.value.sub(_x, _j);
        _x.value.sub(_x, _v);
        _x.value.sub(_x, _v);
        var _y:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.set(_r);
        _v.value.sub(_v, _x);
        _y.value.mul(_y, _v);
        _s1.value.mul(_s1, _j);
        _s1.value.add(_s1, _s1);
        _y.value.sub(_y, _s1);
        var _z:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.add(_p1.value._z, _p2.value._z);
        _z.value.square(_z);
        _z.value.sub(_z, _z1z1);
        _z.value.sub(_z, _z2z2);
        _z.value.mul(_z, _h);
        _x.value.select(_p2.value._x, _x, _z1IsZero);
        _x.value.select(_p1.value._x, _x, _z2IsZero);
        _y.value.select(_p2.value._y, _y, _z1IsZero);
        _y.value.select(_p1.value._y, _y, _z2IsZero);
        _z.value.select(_p2.value._z, _z, _z1IsZero);
        _z.value.select(_p1.value._z, _z, _z2IsZero);
        _q.value._x.value.set(_x);
        _q.value._y.value.set(_y);
        _q.value._z.value.set(_z);
        return _q;
    }
    public var _x : Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = new Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>().nil();
    public var _y : Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = new Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>().nil();
    public var _z : Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = new Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>().nil();
    public function new(?_x:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>, ?_y:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>, ?_z:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_x) + " " + Go.string(_y) + " " + Go.string(_z) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_p521Point(_x, _y, _z);
    }
    public function __set__(__tmp__) {
        this._x = __tmp__._x;
        this._y = __tmp__._y;
        this._z = __tmp__._z;
        return this;
    }
}
final _two31p3 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) + (((1 : GoUnTypedInt)) << ((3 : GoUnTypedInt)));
final _two31m3 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((3 : GoUnTypedInt)));
final _two31m15m3 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((15 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((3 : GoUnTypedInt)));
var _p224ZeroModP31 : Slice<GoUInt32> = new Slice<GoUInt32>(_two31p3, _two31m3, _two31m3, _two31m15m3, _two31m3, _two31m3, _two31m3, _two31m3);
var _p256Params : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
var _p256One : GoArray<GoUInt32> = new GoArray<GoUInt32>(((2 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((268433408 : GoUInt32)), ((536870911 : GoUInt32)), ((268435455 : GoUInt32)), ((532676607 : GoUInt32)), ((33554431 : GoUInt32)), ((0 : GoUInt32))).copy();
var _p256 : T_p256Curve = new T_p256Curve();
var _p521 : T_p521Curve = new T_p521Curve();
var _mask : Slice<GoUInt8> = new Slice<GoUInt8>(((255 : GoUInt8)), ((1 : GoUInt8)), ((3 : GoUInt8)), ((7 : GoUInt8)), ((15 : GoUInt8)), ((31 : GoUInt8)), ((63 : GoUInt8)), ((127 : GoUInt8)));
var _p256P : GoArray<GoUInt32> = new GoArray<GoUInt32>(((536870911 : GoUInt32)), ((268435455 : GoUInt32)), ((536870911 : GoUInt32)), ((1023 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((2097152 : GoUInt32)), ((251658240 : GoUInt32)), ((268435455 : GoUInt32))).copy();
final _two63m35 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((35 : GoUnTypedInt)));
var _p2562P : GoArray<GoUInt32> = new GoArray<GoUInt32>(((536870910 : GoUInt32)), ((268435455 : GoUInt32)), ((536870911 : GoUInt32)), ((2047 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((4194304 : GoUInt32)), ((234881024 : GoUInt32)), ((536870911 : GoUInt32))).copy();
var _p224P : GoArray<GoUInt32> = new GoArray<GoUInt32>(((1 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((268431360 : GoUInt32)), ((268435455 : GoUInt32)), ((268435455 : GoUInt32)), ((268435455 : GoUInt32)), ((268435455 : GoUInt32))).copy();
final _bottom28Bits : GoInt64 = ((268435455 : GoUnTypedInt));
final _two30m27m2 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((27 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _bottom12Bits : GoInt64 = ((4095 : GoUnTypedInt));
var _p256Zero : GoArray<GoUInt32> = new GoArray<GoUInt32>(((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32)), ((0 : GoUInt32))).copy();
var _p521Params : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
final _two30m2 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _two31m2 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _two30p13m2 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((30 : GoUnTypedInt))) + (((1 : GoUnTypedInt)) << ((13 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _two31p24m2 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((31 : GoUnTypedInt))) + (((1 : GoUnTypedInt)) << ((24 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
var _p256Zero31 : GoArray<GoUInt32> = new GoArray<GoUInt32>(_two31m3, _two30m2, _two31m2, _two30p13m2, _two31m2, _two30m2, _two31p24m2, _two30m27m2, _two31m2).copy();
final _two63p35 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) + (((1 : GoUnTypedInt)) << ((35 : GoUnTypedInt)));
final _two63m35m19 : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((35 : GoUnTypedInt))) - (((1 : GoUnTypedInt)) << ((19 : GoUnTypedInt)));
var _p224ZeroModP63 : GoArray<GoUInt64> = new GoArray<GoUInt64>(_two63p35, _two63m35, _two63m35, _two63m35, _two63m35m19, _two63m35, _two63m35, _two63m35).copy();
var _initonce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _p384 : Pointer<CurveParams> = new Pointer<CurveParams>().nil();
var _p224 : T_p224Curve = new T_p224Curve();
final _p256Limbs : GoInt64 = ((9 : GoUnTypedInt));
var _p256RInverse : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
final _bottom29Bits : GoInt64 = ((536870911 : GoUnTypedInt));
var _p256Precomputed : GoArray<GoUInt32> = new GoArray<GoUInt32>(
((290596984 : GoUInt32)),
((242421057 : GoUInt32)),
((230031737 : GoUInt32)),
((78635775 : GoUInt32)),
((310917853 : GoUInt32)),
((212721032 : GoUInt32)),
((295599836 : GoUInt32)),
((222981803 : GoUInt32)),
((51514350 : GoUInt32)),
((489335829 : GoUInt32)),
((254096764 : GoUInt32)),
((434396381 : GoUInt32)),
((96936400 : GoUInt32)),
((429049253 : GoUInt32)),
((170095751 : GoUInt32)),
((22329889 : GoUInt32)),
((21696699 : GoUInt32)),
((11419619 : GoUInt32)),
((222406006 : GoUInt32)),
((153287761 : GoUInt32)),
((37001551 : GoUInt32)),
((101408979 : GoUInt32)),
((373655214 : GoUInt32)),
((216620824 : GoUInt32)),
((535072883 : GoUInt32)),
((66729676 : GoUInt32)),
((99339564 : GoUInt32)),
((188755759 : GoUInt32)),
((22835391 : GoUInt32)),
((358715996 : GoUInt32)),
((94529284 : GoUInt32)),
((229187216 : GoUInt32)),
((215751807 : GoUInt32)),
((513877062 : GoUInt32)),
((236641822 : GoUInt32)),
((248061730 : GoUInt32)),
((40859512 : GoUInt32)),
((90604670 : GoUInt32)),
((168553630 : GoUInt32)),
((37024851 : GoUInt32)),
((439480858 : GoUInt32)),
((226879324 : GoUInt32)),
((90992905 : GoUInt32)),
((170293760 : GoUInt32)),
((190300240 : GoUInt32)),
((10025815 : GoUInt32)),
((178796492 : GoUInt32)),
((101451666 : GoUInt32)),
((217734681 : GoUInt32)),
((102476702 : GoUInt32)),
((92922779 : GoUInt32)),
((10691781 : GoUInt32)),
((131522279 : GoUInt32)),
((43478603 : GoUInt32)),
((532943434 : GoUInt32)),
((176956491 : GoUInt32)),
((484992866 : GoUInt32)),
((215358590 : GoUInt32)),
((405915872 : GoUInt32)),
((123172065 : GoUInt32)),
((496412073 : GoUInt32)),
((138651209 : GoUInt32)),
((205172986 : GoUInt32)),
((115533781 : GoUInt32)),
((124205610 : GoUInt32)),
((395011560 : GoUInt32)),
((67124891 : GoUInt32)),
((438243778 : GoUInt32)),
((7870186 : GoUInt32)),
((258227729 : GoUInt32)),
((93078495 : GoUInt32)),
((255999938 : GoUInt32)),
((425934842 : GoUInt32)),
((143782578 : GoUInt32)),
((305931036 : GoUInt32)),
((74112396 : GoUInt32)),
((88539357 : GoUInt32)),
((94251799 : GoUInt32)),
((388871183 : GoUInt32)),
((138291069 : GoUInt32)),
((185456137 : GoUInt32)),
((265411090 : GoUInt32)),
((56389202 : GoUInt32)),
((435020300 : GoUInt32)),
((219799744 : GoUInt32)),
((159190848 : GoUInt32)),
((184638233 : GoUInt32)),
((71951349 : GoUInt32)),
((14748830 : GoUInt32)),
((54179201 : GoUInt32)),
((90859435 : GoUInt32)),
((91714381 : GoUInt32)),
((501071970 : GoUInt32)),
((207073549 : GoUInt32)),
((21607325 : GoUInt32)),
((40541819 : GoUInt32)),
((204857247 : GoUInt32)),
((75982029 : GoUInt32)),
((124632266 : GoUInt32)),
((212120422 : GoUInt32)),
((244515755 : GoUInt32)),
((443842791 : GoUInt32)),
((92184193 : GoUInt32)),
((504621904 : GoUInt32)),
((256273651 : GoUInt32)),
((116484896 : GoUInt32)),
((79311219 : GoUInt32)),
((202804275 : GoUInt32)),
((365646905 : GoUInt32)),
((111382033 : GoUInt32)),
((121002173 : GoUInt32)),
((187258447 : GoUInt32)),
((66509915 : GoUInt32)),
((5486974 : GoUInt32)),
((321045696 : GoUInt32)),
((106813439 : GoUInt32)),
((60941558 : GoUInt32)),
((350622890 : GoUInt32)),
((153379607 : GoUInt32)),
((466107082 : GoUInt32)),
((182025965 : GoUInt32)),
((221826634 : GoUInt32)),
((260222982 : GoUInt32)),
((54653047 : GoUInt32)),
((174775689 : GoUInt32)),
((76106445 : GoUInt32)),
((166814421 : GoUInt32)),
((260313327 : GoUInt32)),
((455502422 : GoUInt32)),
((14152227 : GoUInt32)),
((65063826 : GoUInt32)),
((238663282 : GoUInt32)),
((111317018 : GoUInt32)),
((110789974 : GoUInt32)),
((518080 : GoUInt32)),
((163043539 : GoUInt32)),
((3185280 : GoUInt32)),
((449863551 : GoUInt32)),
((204453341 : GoUInt32)),
((213898269 : GoUInt32)),
((164542008 : GoUInt32)),
((273777244 : GoUInt32)),
((228642651 : GoUInt32)),
((135456897 : GoUInt32)),
((116610665 : GoUInt32)),
((111505196 : GoUInt32)),
((502845828 : GoUInt32)),
((3430432 : GoUInt32)),
((343397495 : GoUInt32)),
((23354801 : GoUInt32)),
((199756881 : GoUInt32)),
((203603518 : GoUInt32)),
((238413402 : GoUInt32)),
((451639968 : GoUInt32)),
((204952341 : GoUInt32)),
((258456729 : GoUInt32)),
((134076345 : GoUInt32)),
((421511614 : GoUInt32)),
((6366045 : GoUInt32)),
((46236905 : GoUInt32)),
((29730873 : GoUInt32)),
((75111974 : GoUInt32)),
((192722006 : GoUInt32)),
((155066973 : GoUInt32)),
((351520493 : GoUInt32)),
((214702793 : GoUInt32)),
((402536435 : GoUInt32)),
((77105545 : GoUInt32)),
((445695234 : GoUInt32)),
((49487938 : GoUInt32)),
((169309851 : GoUInt32)),
((184388732 : GoUInt32)),
((135863406 : GoUInt32)),
((500019767 : GoUInt32)),
((23199936 : GoUInt32)),
((276509345 : GoUInt32)),
((107743451 : GoUInt32)),
((282094082 : GoUInt32)),
((261267 : GoUInt32)),
((90308643 : GoUInt32)),
((376580903 : GoUInt32)),
((109796441 : GoUInt32)),
((40959228 : GoUInt32)),
((262999756 : GoUInt32)),
((241033666 : GoUInt32)),
((246105707 : GoUInt32)),
((50090300 : GoUInt32)),
((67630940 : GoUInt32)),
((195735859 : GoUInt32)),
((158359529 : GoUInt32)),
((193509607 : GoUInt32)),
((120899987 : GoUInt32)),
((31588239 : GoUInt32)),
((420833648 : GoUInt32)),
((180162304 : GoUInt32)),
((273063591 : GoUInt32)),
((53033664 : GoUInt32)),
((215783594 : GoUInt32)),
((30950397 : GoUInt32)),
((236240872 : GoUInt32)),
((364806751 : GoUInt32)),
((9130514 : GoUInt32)),
((246676327 : GoUInt32)),
((136101161 : GoUInt32)),
((197537558 : GoUInt32)),
((45546695 : GoUInt32)),
((257576489 : GoUInt32)),
((324406118 : GoUInt32)),
((202074818 : GoUInt32)),
((85649040 : GoUInt32)),
((222421617 : GoUInt32)),
((255761364 : GoUInt32)),
((30870187 : GoUInt32)),
((16949106 : GoUInt32)),
((121510965 : GoUInt32)),
((250023868 : GoUInt32)),
((181935023 : GoUInt32)),
((166511770 : GoUInt32)),
((141325342 : GoUInt32)),
((266780208 : GoUInt32)),
((392647399 : GoUInt32)),
((2348054 : GoUInt32)),
((528735877 : GoUInt32)),
((41804168 : GoUInt32)),
((107966648 : GoUInt32)),
((404542751 : GoUInt32)),
((158035532 : GoUInt32)),
((412033845 : GoUInt32)),
((173930329 : GoUInt32)),
((396852918 : GoUInt32)),
((267062899 : GoUInt32)),
((357230868 : GoUInt32)),
((49540177 : GoUInt32)),
((58878809 : GoUInt32)),
((194113917 : GoUInt32)),
((29829449 : GoUInt32)),
((325238538 : GoUInt32)),
((237239775 : GoUInt32)),
((173413552 : GoUInt32)),
((1015183 : GoUInt32)),
((495713 : GoUInt32)),
((136567250 : GoUInt32)),
((136396601 : GoUInt32)),
((287878667 : GoUInt32)),
((218717445 : GoUInt32)),
((193315010 : GoUInt32)),
((32289519 : GoUInt32)),
((38657156 : GoUInt32)),
((238414081 : GoUInt32)),
((406919754 : GoUInt32)),
((257809469 : GoUInt32)),
((58222217 : GoUInt32)),
((86139112 : GoUInt32)),
((95303012 : GoUInt32)),
((88256781 : GoUInt32)),
((148453957 : GoUInt32)),
((429206180 : GoUInt32)),
((160877633 : GoUInt32)),
((273786665 : GoUInt32)),
((79574169 : GoUInt32)),
((86713258 : GoUInt32)),
((278868094 : GoUInt32)),
((116766395 : GoUInt32)),
((528802279 : GoUInt32)),
((125439226 : GoUInt32)),
((281337663 : GoUInt32)),
((39453418 : GoUInt32)),
((184844341 : GoUInt32)),
((238149222 : GoUInt32)),
((208587427 : GoUInt32)),
((42902325 : GoUInt32)),
((42491940 : GoUInt32)),
((326299680 : GoUInt32)),
((16080181 : GoUInt32)),
((367290444 : GoUInt32)),
((254451223 : GoUInt32)),
((441087273 : GoUInt32)),
((213368497 : GoUInt32)),
((187332769 : GoUInt32)),
((447880991 : GoUInt32)),
((104209615 : GoUInt32)),
((113842077 : GoUInt32)),
((185816615 : GoUInt32)),
((308787572 : GoUInt32)),
((71338925 : GoUInt32)),
((482342488 : GoUInt32)),
((238904593 : GoUInt32)),
((13096815 : GoUInt32)),
((30177897 : GoUInt32)),
((243196699 : GoUInt32)),
((89107279 : GoUInt32)),
((2855247 : GoUInt32)),
((450001456 : GoUInt32)),
((215177118 : GoUInt32)),
((206574156 : GoUInt32)),
((84781712 : GoUInt32)),
((11616114 : GoUInt32)),
((184986229 : GoUInt32)),
((118447302 : GoUInt32)),
((373941674 : GoUInt32)),
((139088658 : GoUInt32)),
((53019708 : GoUInt32)),
((68960273 : GoUInt32)),
((332604433 : GoUInt32)),
((184854584 : GoUInt32)),
((225840429 : GoUInt32)),
((387167538 : GoUInt32)),
((195693571 : GoUInt32)),
((138420907 : GoUInt32)),
((113046977 : GoUInt32)),
((49566585 : GoUInt32)),
((25878640 : GoUInt32)),
((415883550 : GoUInt32)),
((34327194 : GoUInt32)),
((107956587 : GoUInt32)),
((65991316 : GoUInt32)),
((108331218 : GoUInt32)),
((226451772 : GoUInt32)),
((2997227 : GoUInt32)),
((192155704 : GoUInt32)),
((235148095 : GoUInt32)),
((360879757 : GoUInt32)),
((199853559 : GoUInt32)),
((28097562 : GoUInt32)),
((443192223 : GoUInt32)),
((54415606 : GoUInt32)),
((224812756 : GoUInt32)),
((189496278 : GoUInt32)),
((509228953 : GoUInt32)),
((112408647 : GoUInt32)),
((402282239 : GoUInt32)),
((106887472 : GoUInt32)),
((2219082 : GoUInt32)),
((45315673 : GoUInt32)),
((72416791 : GoUInt32)),
((188054373 : GoUInt32)),
((234221484 : GoUInt32)),
((356088815 : GoUInt32)),
((164846207 : GoUInt32)),
((288014687 : GoUInt32)),
((103081518 : GoUInt32)),
((177253935 : GoUInt32)),
((276753618 : GoUInt32)),
((32938942 : GoUInt32)),
((125660110 : GoUInt32)),
((91493268 : GoUInt32)),
((331777276 : GoUInt32)),
((156289296 : GoUInt32)),
((119886379 : GoUInt32)),
((231179651 : GoUInt32)),
((68086459 : GoUInt32)),
((534655626 : GoUInt32)),
((198581654 : GoUInt32)),
((220775303 : GoUInt32)),
((166165897 : GoUInt32)),
((307563584 : GoUInt32)),
((123325309 : GoUInt32)),
((57143092 : GoUInt32)),
((182626656 : GoUInt32)),
((152800220 : GoUInt32)),
((154428073 : GoUInt32)),
((16017903 : GoUInt32)),
((187603695 : GoUInt32)),
((221030257 : GoUInt32)),
((89005890 : GoUInt32)),
((8038985 : GoUInt32)),
((103901883 : GoUInt32)),
((37829774 : GoUInt32)),
((88235001 : GoUInt32)),
((468532794 : GoUInt32)),
((254222964 : GoUInt32)),
((526283558 : GoUInt32)),
((104949015 : GoUInt32)),
((245526642 : GoUInt32)),
((164552359 : GoUInt32)),
((7239219 : GoUInt32)),
((130619730 : GoUInt32)),
((226520526 : GoUInt32)),
((149071841 : GoUInt32)),
((239214106 : GoUInt32)),
((68733409 : GoUInt32)),
((31180944 : GoUInt32)),
((456743990 : GoUInt32)),
((169722229 : GoUInt32)),
((499445619 : GoUInt32)),
((144011060 : GoUInt32)),
((239820018 : GoUInt32)),
((453851672 : GoUInt32)),
((51989046 : GoUInt32)),
((113402911 : GoUInt32)),
((239342156 : GoUInt32)),
((170872490 : GoUInt32)),
((176956858 : GoUInt32)),
((261258967 : GoUInt32)),
((103265812 : GoUInt32)),
((121052362 : GoUInt32)),
((195126932 : GoUInt32)),
((68664323 : GoUInt32)),
((130066403 : GoUInt32)),
((163798041 : GoUInt32)),
((292069893 : GoUInt32)),
((146190349 : GoUInt32)),
((283373001 : GoUInt32)),
((163683314 : GoUInt32)),
((92807721 : GoUInt32)),
((455819618 : GoUInt32)),
((173862682 : GoUInt32)),
((356737579 : GoUInt32)),
((163398462 : GoUInt32)),
((56942669 : GoUInt32)),
((122161042 : GoUInt32)),
((97105331 : GoUInt32)),
((243662629 : GoUInt32)),
((67694423 : GoUInt32)),
((404017060 : GoUInt32)),
((18986011 : GoUInt32)),
((220498447 : GoUInt32)),
((61887010 : GoUInt32)),
((60535146 : GoUInt32)),
((209032813 : GoUInt32)),
((168001811 : GoUInt32)),
((172627817 : GoUInt32)),
((18857068 : GoUInt32)),
((152560910 : GoUInt32)),
((250363304 : GoUInt32)),
((379416236 : GoUInt32)),
((17569433 : GoUInt32)),
((172056915 : GoUInt32)),
((259148050 : GoUInt32)),
((365781175 : GoUInt32)),
((78428889 : GoUInt32)),
((99599866 : GoUInt32)),
((253038295 : GoUInt32)),
((1190737 : GoUInt32)),
((285520906 : GoUInt32)),
((213382210 : GoUInt32)),
((263923967 : GoUInt32)),
((111956938 : GoUInt32)),
((425804492 : GoUInt32)),
((129961897 : GoUInt32)),
((9795153 : GoUInt32)),
((81850901 : GoUInt32)),
((248789496 : GoUInt32)),
((66350037 : GoUInt32)),
((95217711 : GoUInt32)),
((285808310 : GoUInt32)),
((7188600 : GoUInt32)),
((268270935 : GoUInt32)),
((254724780 : GoUInt32)),
((212364780 : GoUInt32)),
((366392026 : GoUInt32)),
((157674697 : GoUInt32)),
((479376578 : GoUInt32)),
((2045969 : GoUInt32)),
((481329397 : GoUInt32)),
((47757316 : GoUInt32)),
((433176877 : GoUInt32)),
((253803846 : GoUInt32)),
((26550183 : GoUInt32)),
((171333315 : GoUInt32)),
((86221861 : GoUInt32)),
((265094802 : GoUInt32)),
((222617032 : GoUInt32)),
((320802651 : GoUInt32)),
((184028746 : GoUInt32)),
((215612532 : GoUInt32)),
((161199640 : GoUInt32)),
((47944780 : GoUInt32)),
((174534800 : GoUInt32)),
((29495521 : GoUInt32)),
((395087139 : GoUInt32)),
((21447555 : GoUInt32)),
((280523837 : GoUInt32)),
((159753563 : GoUInt32)),
((48711545 : GoUInt32)),
((5726520 : GoUInt32)),
((156793127 : GoUInt32)),
((321990906 : GoUInt32)),
((199251222 : GoUInt32)),
((167040537 : GoUInt32)),
((196486512 : GoUInt32)),
((161400209 : GoUInt32)),
((227830014 : GoUInt32)),
((487028781 : GoUInt32)),
((264711691 : GoUInt32)),
((117551768 : GoUInt32)),
((409175611 : GoUInt32)),
((140072120 : GoUInt32)),
((303696950 : GoUInt32)),
((166199007 : GoUInt32)),
((258257961 : GoUInt32)),
((163174174 : GoUInt32)),
((350418392 : GoUInt32)),
((260410682 : GoUInt32)),
((155381416 : GoUInt32)),
((228964197 : GoUInt32)),
((116240383 : GoUInt32)),
((178067660 : GoUInt32)),
((208004282 : GoUInt32)),
((477396614 : GoUInt32)),
((240036117 : GoUInt32)),
((427939745 : GoUInt32)),
((137975385 : GoUInt32)),
((86955234 : GoUInt32)),
((142427063 : GoUInt32)),
((58372379 : GoUInt32)),
((433230542 : GoUInt32)),
((260916882 : GoUInt32)),
((415434047 : GoUInt32)),
((143015443 : GoUInt32)),
((79775424 : GoUInt32)),
((113112410 : GoUInt32)),
((82068861 : GoUInt32)),
((370483849 : GoUInt32)),
((180850370 : GoUInt32)),
((442090914 : GoUInt32)),
((33721239 : GoUInt32)),
((119287041 : GoUInt32)),
((43353375 : GoUInt32)),
((67400827 : GoUInt32)),
((142103949 : GoUInt32)),
((131242660 : GoUInt32)),
((332936223 : GoUInt32)),
((148565975 : GoUInt32)),
((329029421 : GoUInt32)),
((112716405 : GoUInt32)),
((222993886 : GoUInt32)),
((267477976 : GoUInt32)),
((136140247 : GoUInt32)),
((173797224 : GoUInt32)),
((192622808 : GoUInt32)),
((199703919 : GoUInt32)),
((178815297 : GoUInt32)),
((228027521 : GoUInt32)),
((132622796 : GoUInt32)),
((415151985 : GoUInt32)),
((225918141 : GoUInt32)),
((334829905 : GoUInt32)),
((164675959 : GoUInt32)),
((29661816 : GoUInt32))).copy();
function _matchesSpecificCurve(_params:Pointer<CurveParams>, _available:haxe.Rest<Curve>):{ var _0 : Curve; var _1 : Bool; } {
        var _available = new Slice<Curve>(..._available);
        for (_c in _available) {
            if (_params == _c.params()) {
                return { _0 : _c, _1 : true };
            };
        };
        return { _0 : ((null : Curve)), _1 : false };
    }
/**
    // zForAffine returns a Jacobian Z value for the affine point (x, y). If x and
    // y are zero, it assumes that they represent the point at infinity because (0,
    // 0) is not on the any of the curves handled here.
**/
function _zForAffine(_x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> {
        var _z:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        if (_x.value.sign() != ((0 : GoInt)) || _y.value.sign() != ((0 : GoInt))) {
            _z.value.setInt64(((1 : GoInt64)));
        };
        return _z;
    }
/**
    // GenerateKey returns a public/private key pair. The private key is
    // generated using the given reader, which must return random data.
**/
function generateKey(_curve:Curve, _rand:stdgo.io.Io.Reader):{ var _0 : Slice<GoByte>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; var _3 : Error; } {
        var _priv:Slice<GoByte> = new Slice<GoUInt8>().nil(), _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _err:Error = ((null : stdgo.Error));
        var n:Pointer<stdgo.math.big.Big.Int_> = _curve.params().value.n;
        var _bitSize:GoInt = n.value.bitLen();
        var _byteLen:GoInt = (_bitSize + ((7 : GoInt))) / ((8 : GoInt));
        _priv = new Slice<GoUInt8>(...[for (i in 0 ... ((_byteLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        while (_x == null || _x.isNil()) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_rand, _priv);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
            };
            _priv[((0 : GoInt))] = _priv[((0 : GoInt))] & (_mask[_bitSize % ((8 : GoInt))]);
            _priv[((1 : GoInt))] = _priv[((1 : GoInt))] ^ (((66 : GoUInt8)));
            if (Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_priv).value.cmp(n) >= ((0 : GoInt))) {
                continue;
            };
            {
                var __tmp__ = _curve.scalarBaseMult(_priv);
                _x = __tmp__._0;
                _y = __tmp__._1;
            };
        };
        return { _0 : _priv, _1 : _x, _2 : _y, _3 : _err };
    }
/**
    // Marshal converts a point on the curve into the uncompressed form specified in
    // section 4.3.6 of ANSI X9.62.
**/
function marshal(_curve:Curve, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Slice<GoByte> {
        var _byteLen:GoInt = (_curve.params().value.bitSize + ((7 : GoInt))) / ((8 : GoInt));
        var _ret:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + ((2 : GoInt)) * _byteLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _ret[((0 : GoInt))] = ((4 : GoUInt8));
        _x.value.fillBytes(_ret.__slice__(((1 : GoInt)), ((1 : GoInt)) + _byteLen));
        _y.value.fillBytes(_ret.__slice__(((1 : GoInt)) + _byteLen, ((1 : GoInt)) + ((2 : GoInt)) * _byteLen));
        return _ret;
    }
/**
    // MarshalCompressed converts a point on the curve into the compressed form
    // specified in section 4.3.6 of ANSI X9.62.
**/
function marshalCompressed(_curve:Curve, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Slice<GoByte> {
        var _byteLen:GoInt = (_curve.params().value.bitSize + ((7 : GoInt))) / ((8 : GoInt));
        var _compressed:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((1 : GoInt)) + _byteLen : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _compressed[((0 : GoInt))] = ((_y.value.bit(((0 : GoInt))) : GoByte)) | ((2 : GoUInt8));
        _x.value.fillBytes(_compressed.__slice__(((1 : GoInt))));
        return _compressed;
    }
/**
    // Unmarshal converts a point, serialized by Marshal, into an x, y pair.
    // It is an error if the point is not in uncompressed form or is not on the curve.
    // On error, x = nil.
**/
function unmarshal(_curve:Curve, _data:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _byteLen:GoInt = (_curve.params().value.bitSize + ((7 : GoInt))) / ((8 : GoInt));
        if (_data.length != ((1 : GoInt)) + ((2 : GoInt)) * _byteLen) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        if (_data[((0 : GoInt))] != ((4 : GoUInt8))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        var _p:Pointer<stdgo.math.big.Big.Int_> = _curve.params().value.p;
        _x = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_data.__slice__(((1 : GoInt)), ((1 : GoInt)) + _byteLen));
        _y = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_data.__slice__(((1 : GoInt)) + _byteLen));
        if (_x.value.cmp(_p) >= ((0 : GoInt)) || _y.value.cmp(_p) >= ((0 : GoInt))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        return { _0 : _x, _1 : _y };
    }
/**
    // UnmarshalCompressed converts a point, serialized by MarshalCompressed, into an x, y pair.
    // It is an error if the point is not in compressed form or is not on the curve.
    // On error, x = nil.
**/
function unmarshalCompressed(_curve:Curve, _data:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _x:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _y:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _byteLen:GoInt = (_curve.params().value.bitSize + ((7 : GoInt))) / ((8 : GoInt));
        if (_data.length != ((1 : GoInt)) + _byteLen) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        if (_data[((0 : GoInt))] != ((2 : GoUInt8)) && _data[((0 : GoInt))] != ((3 : GoUInt8))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        var _p:Pointer<stdgo.math.big.Big.Int_> = _curve.params().value.p;
        _x = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_data.__slice__(((1 : GoInt))));
        if (_x.value.cmp(_p) >= ((0 : GoInt))) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        _y = _curve.params().value._polynomial(_x);
        _y = _y.value.modSqrt(_y, _p);
        if (_y == null || _y.isNil()) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        if (((_y.value.bit(((0 : GoInt))) : GoByte)) != _data[((0 : GoInt))] & ((1 : GoUInt8))) {
            _y.value.neg(_y).value.mod(_y, _p);
        };
        if (!_curve.isOnCurve(_x, _y)) {
            return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : new Pointer<stdgo.math.big.Big.Int_>().nil() };
        };
        return { _0 : _x, _1 : _y };
    }
function _initAll():Void {
        _initP224();
        _initP256();
        _initP384();
        _initP521();
    }
function _initP384():Void {
        _p384 = Go.pointer((({ name : "P-384", p : new Pointer<stdgo.math.big.Big.Int_>().nil(), n : new Pointer<stdgo.math.big.Big.Int_>().nil(), b : new Pointer<stdgo.math.big.Big.Int_>().nil(), gx : new Pointer<stdgo.math.big.Big.Int_>().nil(), gy : new Pointer<stdgo.math.big.Big.Int_>().nil(), bitSize : 0 } : CurveParams)));
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319", ((10 : GoInt)));
            _p384.value.p = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643", ((10 : GoInt)));
            _p384.value.n = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef", ((16 : GoInt)));
            _p384.value.b = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7", ((16 : GoInt)));
            _p384.value.gx = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f", ((16 : GoInt)));
            _p384.value.gy = __tmp__._0;
        };
        _p384.value.bitSize = ((384 : GoInt));
    }
/**
    // P256 returns a Curve which implements NIST P-256 (FIPS 186-3, section D.2.3),
    // also known as secp256r1 or prime256v1. The CurveParams.Name of this Curve is
    // "P-256".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // ScalarMult and ScalarBaseMult are implemented using constant-time algorithms.
**/
function p256():Curve {
        _initonce.do_(_initAll);
        return _p256.__copy__();
    }
/**
    // P384 returns a Curve which implements NIST P-384 (FIPS 186-3, section D.2.4),
    // also known as secp384r1. The CurveParams.Name of this Curve is "P-384".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // The cryptographic operations do not use constant-time algorithms.
**/
function p384():Curve {
        _initonce.do_(_initAll);
        return _p384.value;
    }
/**
    // P521 returns a Curve which implements NIST P-521 (FIPS 186-3, section D.2.5),
    // also known as secp521r1. The CurveParams.Name of this Curve is "P-521".
    //
    // Multiple invocations of this function will return the same value, so it can
    // be used for equality checks and switch statements.
    //
    // The cryptographic operations are implemented using constant-time algorithms.
**/
function p521():Curve {
        _initonce.do_(_initAll);
        return _p521.__copy__();
    }
function _initP224():Void {
        _p224.curveParams = Go.pointer((({ name : "P-224", p : new Pointer<stdgo.math.big.Big.Int_>().nil(), n : new Pointer<stdgo.math.big.Big.Int_>().nil(), b : new Pointer<stdgo.math.big.Big.Int_>().nil(), gx : new Pointer<stdgo.math.big.Big.Int_>().nil(), gy : new Pointer<stdgo.math.big.Big.Int_>().nil(), bitSize : 0 } : CurveParams)));
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("26959946667150639794667015087019630673557916260026308143510066298881", ((10 : GoInt)));
            _p224.curveParams.value.p = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("26959946667150639794667015087019625940457807714424391721682722368061", ((10 : GoInt)));
            _p224.curveParams.value.n = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4", ((16 : GoInt)));
            _p224.curveParams.value.b = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21", ((16 : GoInt)));
            _p224.curveParams.value.gx = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34", ((16 : GoInt)));
            _p224.curveParams.value.gy = __tmp__._0;
        };
        _p224.curveParams.value.bitSize = ((224 : GoInt));
        _p224FromBig(Go.pointer(_p224._gx), _p224.curveParams.value.gx);
        _p224FromBig(Go.pointer(_p224._gy), _p224.curveParams.value.gy);
        _p224FromBig(Go.pointer(_p224._b), _p224.curveParams.value.b);
    }
/**
    // P224 returns a Curve which implements P-224 (see FIPS 186-3, section D.2.2).
    //
    // The cryptographic operations are implemented using constant-time algorithms.
**/
function p224():Curve {
        _initonce.do_(_initAll);
        return _p224.__copy__();
    }
/**
    // p224IsZero returns 1 if a == 0 mod p and 0 otherwise.
    //
    // a[i] < 2**29
**/
function _p224IsZero(_a:Pointer<T_p224FieldElement>):GoUInt32 {
        var _minimal:T_p224FieldElement = new T_p224FieldElement();
        _p224Contract(Go.pointer(_minimal), _a);
        var _isZero:GoUInt32 = ((0 : GoUInt32)), _isP:GoUInt32 = ((0 : GoUInt32));
        {
            var _i;
            var _v;
            for (_obj in _minimal.__t__.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                _isZero = _isZero | (_v);
                _isP = _isP | (_v - _p224P[_i]);
            };
        };
        _isZero = _isZero | ((_isZero >> ((16 : GoUnTypedInt))));
        _isZero = _isZero | ((_isZero >> ((8 : GoUnTypedInt))));
        _isZero = _isZero | ((_isZero >> ((4 : GoUnTypedInt))));
        _isZero = _isZero | ((_isZero >> ((2 : GoUnTypedInt))));
        _isZero = _isZero | ((_isZero >> ((1 : GoUnTypedInt))));
        _isP = _isP | ((_isP >> ((16 : GoUnTypedInt))));
        _isP = _isP | ((_isP >> ((8 : GoUnTypedInt))));
        _isP = _isP | ((_isP >> ((4 : GoUnTypedInt))));
        _isP = _isP | ((_isP >> ((2 : GoUnTypedInt))));
        _isP = _isP | ((_isP >> ((1 : GoUnTypedInt))));
        var _result:GoUInt32 = _isZero & _isP;
        _result = (-1 ^ _result) & ((1 : GoUInt32));
        return _result;
    }
/**
    // p224Add computes *out = a+b
    //
    // a[i] + b[i] < 2**32
**/
function _p224Add(_out:Pointer<T_p224FieldElement>, _a:Pointer<T_p224FieldElement>, _b:Pointer<T_p224FieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _out.value.__t__[_i] = _a.value.__t__[_i] + _b.value.__t__[_i];
            });
        };
    }
/**
    // p224Sub computes *out = a-b
    //
    // a[i], b[i] < 2**30
    // out[i] < 2**32
**/
function _p224Sub(_out:Pointer<T_p224FieldElement>, _a:Pointer<T_p224FieldElement>, _b:Pointer<T_p224FieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _out.value.__t__[_i] = _a.value.__t__[_i] + _p224ZeroModP31[_i] - _b.value.__t__[_i];
            });
        };
    }
/**
    // p224Mul computes *out = a*b
    //
    // a[i] < 2**29, b[i] < 2**30 (or vice versa)
    // out[i] < 2**29
**/
function _p224Mul(_out:Pointer<T_p224FieldElement>, _a:Pointer<T_p224FieldElement>, _b:Pointer<T_p224FieldElement>, _tmp:Pointer<T_p224LargeFieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((15 : GoInt)), _i++, {
                _tmp.value.__t__[_i] = ((0 : GoUInt64));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        _tmp.value.__t__[_i + _j] = _tmp.value.__t__[_i + _j] + (((_a.value.__t__[_i] : GoUInt64)) * ((_b.value.__t__[_j] : GoUInt64)));
                    });
                };
            });
        };
        _p224ReduceLarge(_out, _tmp);
    }
/**
    // Square computes *out = a*a
    //
    // a[i] < 2**29
    // out[i] < 2**29
**/
function _p224Square(_out:Pointer<T_p224FieldElement>, _a:Pointer<T_p224FieldElement>, _tmp:Pointer<T_p224LargeFieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((15 : GoInt)), _i++, {
                _tmp.value.__t__[_i] = ((0 : GoUInt64));
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j <= _i, _j++, {
                        var _r:GoUInt64 = ((_a.value.__t__[_i] : GoUInt64)) * ((_a.value.__t__[_j] : GoUInt64));
                        if (_i == _j) {
                            _tmp.value.__t__[_i + _j] = _tmp.value.__t__[_i + _j] + (_r);
                        } else {
                            _tmp.value.__t__[_i + _j] = _tmp.value.__t__[_i + _j] + ((_r << ((1 : GoUnTypedInt))));
                        };
                    });
                };
            });
        };
        _p224ReduceLarge(_out, _tmp);
    }
/**
    // ReduceLarge converts a p224LargeFieldElement to a p224FieldElement.
    //
    // in[i] < 2**62
**/
function _p224ReduceLarge(_out:Pointer<T_p224FieldElement>, _in:Pointer<T_p224LargeFieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _in.value.__t__[_i] = _in.value.__t__[_i] + (_p224ZeroModP63[_i]);
            });
        };
        {
            var _i:GoInt = ((14 : GoInt));
            Go.cfor(_i >= ((8 : GoInt)), _i--, {
                _in.value.__t__[_i - ((8 : GoInt))] = _in.value.__t__[_i - ((8 : GoInt))] - (_in.value.__t__[_i]);
                _in.value.__t__[_i - ((5 : GoInt))] = _in.value.__t__[_i - ((5 : GoInt))] + (((_in.value.__t__[_i] & ((65535 : GoUInt64))) << ((12 : GoUnTypedInt))));
                _in.value.__t__[_i - ((4 : GoInt))] = _in.value.__t__[_i - ((4 : GoInt))] + ((_in.value.__t__[_i] >> ((16 : GoUnTypedInt))));
            });
        };
        _in.value.__t__[((8 : GoInt))] = ((0 : GoUInt64));
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _in.value.__t__[_i + ((1 : GoInt))] = _in.value.__t__[_i + ((1 : GoInt))] + ((_in.value.__t__[_i] >> ((28 : GoUnTypedInt))));
                _out.value.__t__[_i] = (((_in.value.__t__[_i] & _bottom28Bits) : GoUInt32));
            });
        };
        _in.value.__t__[((0 : GoInt))] = _in.value.__t__[((0 : GoInt))] - (_in.value.__t__[((8 : GoInt))]);
        _out.value.__t__[((3 : GoInt))] = _out.value.__t__[((3 : GoInt))] + (((((_in.value.__t__[((8 : GoInt))] & ((65535 : GoUInt64))) : GoUInt32)) << ((12 : GoUnTypedInt))));
        _out.value.__t__[((4 : GoInt))] = _out.value.__t__[((4 : GoInt))] + ((((_in.value.__t__[((8 : GoInt))] >> ((16 : GoUnTypedInt))) : GoUInt32)));
        _out.value.__t__[((0 : GoInt))] = (((_in.value.__t__[((0 : GoInt))] & _bottom28Bits) : GoUInt32));
        _out.value.__t__[((1 : GoInt))] = _out.value.__t__[((1 : GoInt))] + ((((((_in.value.__t__[((0 : GoInt))] >> ((28 : GoUnTypedInt)))) & _bottom28Bits) : GoUInt32)));
        _out.value.__t__[((2 : GoInt))] = _out.value.__t__[((2 : GoInt))] + ((((_in.value.__t__[((0 : GoInt))] >> ((56 : GoUnTypedInt))) : GoUInt32)));
    }
/**
    // Reduce reduces the coefficients of a to smaller bounds.
    //
    // On entry: a[i] < 2**31 + 2**30
    // On exit: a[i] < 2**29
**/
function _p224Reduce(_a:Pointer<T_p224FieldElement>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _a.value.__t__[_i + ((1 : GoInt))] = _a.value.__t__[_i + ((1 : GoInt))] + ((_a.value.__t__[_i] >> ((28 : GoUnTypedInt))));
                _a.value.__t__[_i] = _a.value.__t__[_i] & (_bottom28Bits);
            });
        };
        var _top:GoUInt32 = (_a.value.__t__[((7 : GoInt))] >> ((28 : GoUnTypedInt)));
        _a.value.__t__[((7 : GoInt))] = _a.value.__t__[((7 : GoInt))] & (_bottom28Bits);
        var _mask:GoUInt32 = _top;
        _mask = _mask | ((_mask >> ((2 : GoUnTypedInt))));
        _mask = _mask | ((_mask >> ((1 : GoUnTypedInt))));
        _mask = (_mask << (((31 : GoUnTypedInt))));
        _mask = (((((_mask : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        _a.value.__t__[((0 : GoInt))] = _a.value.__t__[((0 : GoInt))] - (_top);
        _a.value.__t__[((3 : GoInt))] = _a.value.__t__[((3 : GoInt))] + ((_top << ((12 : GoUnTypedInt))));
        _a.value.__t__[((3 : GoInt))] = _a.value.__t__[((3 : GoInt))] - (((1 : GoUInt32)) & _mask);
        _a.value.__t__[((2 : GoInt))] = _a.value.__t__[((2 : GoInt))] + (_mask & ((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt))) - ((1 : GoUnTypedInt))));
        _a.value.__t__[((1 : GoInt))] = _a.value.__t__[((1 : GoInt))] + (_mask & ((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt))) - ((1 : GoUnTypedInt))));
        _a.value.__t__[((0 : GoInt))] = _a.value.__t__[((0 : GoInt))] + (_mask & ((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)))));
    }
/**
    // p224Invert calculates *out = in**-1 by computing in**(2**224 - 2**96 - 1),
    // i.e. Fermat's little theorem.
**/
function _p224Invert(_out:Pointer<T_p224FieldElement>, _in:Pointer<T_p224FieldElement>):Void {
        var _f1:T_p224FieldElement = new T_p224FieldElement(), _f2:T_p224FieldElement = new T_p224FieldElement(), _f3:T_p224FieldElement = new T_p224FieldElement(), _f4:T_p224FieldElement = new T_p224FieldElement();
        var _c:T_p224LargeFieldElement = new T_p224LargeFieldElement();
        _p224Square(Go.pointer(_f1), _in, Go.pointer(_c));
        _p224Mul(Go.pointer(_f1), Go.pointer(_f1), _in, Go.pointer(_c));
        _p224Square(Go.pointer(_f1), Go.pointer(_f1), Go.pointer(_c));
        _p224Mul(Go.pointer(_f1), Go.pointer(_f1), _in, Go.pointer(_c));
        _p224Square(Go.pointer(_f2), Go.pointer(_f1), Go.pointer(_c));
        _p224Square(Go.pointer(_f2), Go.pointer(_f2), Go.pointer(_c));
        _p224Square(Go.pointer(_f2), Go.pointer(_f2), Go.pointer(_c));
        _p224Mul(Go.pointer(_f1), Go.pointer(_f1), Go.pointer(_f2), Go.pointer(_c));
        _p224Square(Go.pointer(_f2), Go.pointer(_f1), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((5 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f2), Go.pointer(_f2), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f2), Go.pointer(_f2), Go.pointer(_f1), Go.pointer(_c));
        _p224Square(Go.pointer(_f3), Go.pointer(_f2), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((11 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f3), Go.pointer(_f3), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f2), Go.pointer(_f3), Go.pointer(_f2), Go.pointer(_c));
        _p224Square(Go.pointer(_f3), Go.pointer(_f2), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((23 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f3), Go.pointer(_f3), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f3), Go.pointer(_f3), Go.pointer(_f2), Go.pointer(_c));
        _p224Square(Go.pointer(_f4), Go.pointer(_f3), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((47 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f4), Go.pointer(_f4), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f3), Go.pointer(_f3), Go.pointer(_f4), Go.pointer(_c));
        _p224Square(Go.pointer(_f4), Go.pointer(_f3), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((23 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f4), Go.pointer(_f4), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f2), Go.pointer(_f4), Go.pointer(_f2), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((6 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f2), Go.pointer(_f2), Go.pointer(_c));
            });
        };
        _p224Mul(Go.pointer(_f1), Go.pointer(_f1), Go.pointer(_f2), Go.pointer(_c));
        _p224Square(Go.pointer(_f1), Go.pointer(_f1), Go.pointer(_c));
        _p224Mul(Go.pointer(_f1), Go.pointer(_f1), _in, Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((97 : GoInt)), _i++, {
                _p224Square(Go.pointer(_f1), Go.pointer(_f1), Go.pointer(_c));
            });
        };
        _p224Mul(_out, Go.pointer(_f1), Go.pointer(_f3), Go.pointer(_c));
    }
/**
    // p224Contract converts a FieldElement to its unique, minimal form.
    //
    // On entry, in[i] < 2**29
    // On exit, out[i] < 2**28 and out < p
**/
function _p224Contract(_out:Pointer<T_p224FieldElement>, _in:Pointer<T_p224FieldElement>):Void {
        Go.copy(_out.value.__slice__(0), _in.value.__slice__(0));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _out.value.__t__[_i + ((1 : GoInt))] = _out.value.__t__[_i + ((1 : GoInt))] + ((_out.value.__t__[_i] >> ((28 : GoUnTypedInt))));
                _out.value.__t__[_i] = _out.value.__t__[_i] & (_bottom28Bits);
            });
        };
        var _top:GoUInt32 = (_out.value.__t__[((7 : GoInt))] >> ((28 : GoUnTypedInt)));
        _out.value.__t__[((7 : GoInt))] = _out.value.__t__[((7 : GoInt))] & (_bottom28Bits);
        _out.value.__t__[((0 : GoInt))] = _out.value.__t__[((0 : GoInt))] - (_top);
        _out.value.__t__[((3 : GoInt))] = _out.value.__t__[((3 : GoInt))] + ((_top << ((12 : GoUnTypedInt))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((3 : GoInt)), _i++, {
                var _mask:GoUInt32 = (((((_out.value.__t__[_i] : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
                _out.value.__t__[_i] = _out.value.__t__[_i] + (((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)))) & _mask);
                _out.value.__t__[_i + ((1 : GoInt))] = _out.value.__t__[_i + ((1 : GoInt))] - (((1 : GoUInt32)) & _mask);
            });
        };
        {
            var _i:GoInt = ((3 : GoInt));
            Go.cfor(_i < ((7 : GoInt)), _i++, {
                _out.value.__t__[_i + ((1 : GoInt))] = _out.value.__t__[_i + ((1 : GoInt))] + ((_out.value.__t__[_i] >> ((28 : GoUnTypedInt))));
                _out.value.__t__[_i] = _out.value.__t__[_i] & (_bottom28Bits);
            });
        };
        _top = (_out.value.__t__[((7 : GoInt))] >> ((28 : GoUnTypedInt)));
        _out.value.__t__[((7 : GoInt))] = _out.value.__t__[((7 : GoInt))] & (_bottom28Bits);
        _out.value.__t__[((0 : GoInt))] = _out.value.__t__[((0 : GoInt))] - (_top);
        _out.value.__t__[((3 : GoInt))] = _out.value.__t__[((3 : GoInt))] + ((_top << ((12 : GoUnTypedInt))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((3 : GoInt)), _i++, {
                var _mask:GoUInt32 = (((((_out.value.__t__[_i] : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
                _out.value.__t__[_i] = _out.value.__t__[_i] + (((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)))) & _mask);
                _out.value.__t__[_i + ((1 : GoInt))] = _out.value.__t__[_i + ((1 : GoInt))] - (((1 : GoUInt32)) & _mask);
            });
        };
        var _top4AllOnes:GoUInt32 = (((("4294967295" : GoUInt32)) : GoUInt32));
        {
            var _i:GoInt = ((4 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _top4AllOnes = _top4AllOnes & (_out.value.__t__[_i]);
            });
        };
        _top4AllOnes = _top4AllOnes | ((("4026531840" : GoUInt32)));
        _top4AllOnes = _top4AllOnes & ((_top4AllOnes >> ((16 : GoUnTypedInt))));
        _top4AllOnes = _top4AllOnes & ((_top4AllOnes >> ((8 : GoUnTypedInt))));
        _top4AllOnes = _top4AllOnes & ((_top4AllOnes >> ((4 : GoUnTypedInt))));
        _top4AllOnes = _top4AllOnes & ((_top4AllOnes >> ((2 : GoUnTypedInt))));
        _top4AllOnes = _top4AllOnes & ((_top4AllOnes >> ((1 : GoUnTypedInt))));
        _top4AllOnes = ((((((_top4AllOnes << ((31 : GoUnTypedInt))) : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        var _bottom3NonZero:GoUInt32 = _out.value.__t__[((0 : GoInt))] | _out.value.__t__[((1 : GoInt))] | _out.value.__t__[((2 : GoInt))];
        _bottom3NonZero = _bottom3NonZero | ((_bottom3NonZero >> ((16 : GoUnTypedInt))));
        _bottom3NonZero = _bottom3NonZero | ((_bottom3NonZero >> ((8 : GoUnTypedInt))));
        _bottom3NonZero = _bottom3NonZero | ((_bottom3NonZero >> ((4 : GoUnTypedInt))));
        _bottom3NonZero = _bottom3NonZero | ((_bottom3NonZero >> ((2 : GoUnTypedInt))));
        _bottom3NonZero = _bottom3NonZero | ((_bottom3NonZero >> ((1 : GoUnTypedInt))));
        _bottom3NonZero = ((((((_bottom3NonZero << ((31 : GoUnTypedInt))) : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        var _n:GoUInt32 = ((268431360 : GoUInt32)) - _out.value.__t__[((3 : GoInt))];
        var _out3Equal:GoUInt32 = _n;
        _out3Equal = _out3Equal | ((_out3Equal >> ((16 : GoUnTypedInt))));
        _out3Equal = _out3Equal | ((_out3Equal >> ((8 : GoUnTypedInt))));
        _out3Equal = _out3Equal | ((_out3Equal >> ((4 : GoUnTypedInt))));
        _out3Equal = _out3Equal | ((_out3Equal >> ((2 : GoUnTypedInt))));
        _out3Equal = _out3Equal | ((_out3Equal >> ((1 : GoUnTypedInt))));
        _out3Equal = -1 ^ ((((((_out3Equal << ((31 : GoUnTypedInt))) : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        var _out3GT:GoUInt32 = (((((_n : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        var _mask:GoUInt32 = _top4AllOnes & ((_out3Equal & _bottom3NonZero) | _out3GT);
        _out.value.__t__[((0 : GoInt))] = _out.value.__t__[((0 : GoInt))] - (((1 : GoUInt32)) & _mask);
        _out.value.__t__[((3 : GoInt))] = _out.value.__t__[((3 : GoInt))] - (((268431360 : GoUInt32)) & _mask);
        _out.value.__t__[((4 : GoInt))] = _out.value.__t__[((4 : GoInt))] - (((268435455 : GoUInt32)) & _mask);
        _out.value.__t__[((5 : GoInt))] = _out.value.__t__[((5 : GoInt))] - (((268435455 : GoUInt32)) & _mask);
        _out.value.__t__[((6 : GoInt))] = _out.value.__t__[((6 : GoInt))] - (((268435455 : GoUInt32)) & _mask);
        _out.value.__t__[((7 : GoInt))] = _out.value.__t__[((7 : GoInt))] - (((268435455 : GoUInt32)) & _mask);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((3 : GoInt)), _i++, {
                var _mask:GoUInt32 = (((((_out.value.__t__[_i] : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
                _out.value.__t__[_i] = _out.value.__t__[_i] + (((((1 : GoUnTypedInt)) << ((28 : GoUnTypedInt)))) & _mask);
                _out.value.__t__[_i + ((1 : GoInt))] = _out.value.__t__[_i + ((1 : GoInt))] - (((1 : GoUInt32)) & _mask);
            });
        };
    }
/**
    // p224AddJacobian computes *out = a+b where a != b.
**/
function _p224AddJacobian(_x3:Pointer<T_p224FieldElement>, _y3:Pointer<T_p224FieldElement>, _z3:Pointer<T_p224FieldElement>, _x1:Pointer<T_p224FieldElement>, _y1:Pointer<T_p224FieldElement>, _z1:Pointer<T_p224FieldElement>, _x2:Pointer<T_p224FieldElement>, _y2:Pointer<T_p224FieldElement>, _z2:Pointer<T_p224FieldElement>):Void {
        var _z1z1:T_p224FieldElement = new T_p224FieldElement(), _z2z2:T_p224FieldElement = new T_p224FieldElement(), _u1:T_p224FieldElement = new T_p224FieldElement(), _u2:T_p224FieldElement = new T_p224FieldElement(), _s1:T_p224FieldElement = new T_p224FieldElement(), _s2:T_p224FieldElement = new T_p224FieldElement(), _h:T_p224FieldElement = new T_p224FieldElement(), _i:T_p224FieldElement = new T_p224FieldElement(), _j:T_p224FieldElement = new T_p224FieldElement(), _r:T_p224FieldElement = new T_p224FieldElement(), _v:T_p224FieldElement = new T_p224FieldElement();
        var _c:T_p224LargeFieldElement = new T_p224LargeFieldElement();
        var _z1IsZero:GoUInt32 = _p224IsZero(_z1);
        var _z2IsZero:GoUInt32 = _p224IsZero(_z2);
        _p224Square(Go.pointer(_z1z1), _z1, Go.pointer(_c));
        _p224Square(Go.pointer(_z2z2), _z2, Go.pointer(_c));
        _p224Mul(Go.pointer(_u1), _x1, Go.pointer(_z2z2), Go.pointer(_c));
        _p224Mul(Go.pointer(_u2), _x2, Go.pointer(_z1z1), Go.pointer(_c));
        _p224Mul(Go.pointer(_s1), _z2, Go.pointer(_z2z2), Go.pointer(_c));
        _p224Mul(Go.pointer(_s1), _y1, Go.pointer(_s1), Go.pointer(_c));
        _p224Mul(Go.pointer(_s2), _z1, Go.pointer(_z1z1), Go.pointer(_c));
        _p224Mul(Go.pointer(_s2), _y2, Go.pointer(_s2), Go.pointer(_c));
        _p224Sub(Go.pointer(_h), Go.pointer(_u2), Go.pointer(_u1));
        _p224Reduce(Go.pointer(_h));
        var _xEqual:GoUInt32 = _p224IsZero(Go.pointer(_h));
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < ((8 : GoInt)), _j++, {
                _i.__t__[_j] = (_h.__t__[_j] << ((1 : GoUnTypedInt)));
            });
        };
        _p224Reduce(Go.pointer(_i));
        _p224Square(Go.pointer(_i), Go.pointer(_i), Go.pointer(_c));
        _p224Mul(Go.pointer(_j), Go.pointer(_h), Go.pointer(_i), Go.pointer(_c));
        _p224Sub(Go.pointer(_r), Go.pointer(_s2), Go.pointer(_s1));
        _p224Reduce(Go.pointer(_r));
        var _yEqual:GoUInt32 = _p224IsZero(Go.pointer(_r));
        if (_xEqual == ((1 : GoUInt32)) && _yEqual == ((1 : GoUInt32)) && _z1IsZero == ((0 : GoUInt32)) && _z2IsZero == ((0 : GoUInt32))) {
            _p224DoubleJacobian(_x3, _y3, _z3, _x1, _y1, _z1);
            return;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _r.__t__[_i] = (_r.__t__[_i] << (((1 : GoUnTypedInt))));
            });
        };
        _p224Reduce(Go.pointer(_r));
        _p224Mul(Go.pointer(_v), Go.pointer(_u1), Go.pointer(_i), Go.pointer(_c));
        _p224Add(Go.pointer(_z1z1), Go.pointer(_z1z1), Go.pointer(_z2z2));
        _p224Add(Go.pointer(_z2z2), _z1, _z2);
        _p224Reduce(Go.pointer(_z2z2));
        _p224Square(Go.pointer(_z2z2), Go.pointer(_z2z2), Go.pointer(_c));
        _p224Sub(_z3, Go.pointer(_z2z2), Go.pointer(_z1z1));
        _p224Reduce(_z3);
        _p224Mul(_z3, _z3, Go.pointer(_h), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _z1z1.__t__[_i] = (_v.__t__[_i] << ((1 : GoUnTypedInt)));
            });
        };
        _p224Add(Go.pointer(_z1z1), Go.pointer(_j), Go.pointer(_z1z1));
        _p224Reduce(Go.pointer(_z1z1));
        _p224Square(_x3, Go.pointer(_r), Go.pointer(_c));
        _p224Sub(_x3, _x3, Go.pointer(_z1z1));
        _p224Reduce(_x3);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _s1.__t__[_i] = (_s1.__t__[_i] << (((1 : GoUnTypedInt))));
            });
        };
        _p224Mul(Go.pointer(_s1), Go.pointer(_s1), Go.pointer(_j), Go.pointer(_c));
        _p224Sub(Go.pointer(_z1z1), Go.pointer(_v), _x3);
        _p224Reduce(Go.pointer(_z1z1));
        _p224Mul(Go.pointer(_z1z1), Go.pointer(_z1z1), Go.pointer(_r), Go.pointer(_c));
        _p224Sub(_y3, Go.pointer(_z1z1), Go.pointer(_s1));
        _p224Reduce(_y3);
        _p224CopyConditional(_x3, _x2, _z1IsZero);
        _p224CopyConditional(_x3, _x1, _z2IsZero);
        _p224CopyConditional(_y3, _y2, _z1IsZero);
        _p224CopyConditional(_y3, _y1, _z2IsZero);
        _p224CopyConditional(_z3, _z2, _z1IsZero);
        _p224CopyConditional(_z3, _z1, _z2IsZero);
    }
/**
    // p224DoubleJacobian computes *out = a+a.
**/
function _p224DoubleJacobian(_x3:Pointer<T_p224FieldElement>, _y3:Pointer<T_p224FieldElement>, _z3:Pointer<T_p224FieldElement>, _x1:Pointer<T_p224FieldElement>, _y1:Pointer<T_p224FieldElement>, _z1:Pointer<T_p224FieldElement>):Void {
        var _delta:T_p224FieldElement = new T_p224FieldElement(), _gamma:T_p224FieldElement = new T_p224FieldElement(), _beta:T_p224FieldElement = new T_p224FieldElement(), _alpha:T_p224FieldElement = new T_p224FieldElement(), _t:T_p224FieldElement = new T_p224FieldElement();
        var _c:T_p224LargeFieldElement = new T_p224LargeFieldElement();
        _p224Square(Go.pointer(_delta), _z1, Go.pointer(_c));
        _p224Square(Go.pointer(_gamma), _y1, Go.pointer(_c));
        _p224Mul(Go.pointer(_beta), _x1, Go.pointer(_gamma), Go.pointer(_c));
        _p224Add(Go.pointer(_t), _x1, Go.pointer(_delta));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _t.__t__[_i] = _t.__t__[_i] + ((_t.__t__[_i] << ((1 : GoUnTypedInt))));
            });
        };
        _p224Reduce(Go.pointer(_t));
        _p224Sub(Go.pointer(_alpha), _x1, Go.pointer(_delta));
        _p224Reduce(Go.pointer(_alpha));
        _p224Mul(Go.pointer(_alpha), Go.pointer(_alpha), Go.pointer(_t), Go.pointer(_c));
        _p224Add(_z3, _y1, _z1);
        _p224Reduce(_z3);
        _p224Square(_z3, _z3, Go.pointer(_c));
        _p224Sub(_z3, _z3, Go.pointer(_gamma));
        _p224Reduce(_z3);
        _p224Sub(_z3, _z3, Go.pointer(_delta));
        _p224Reduce(_z3);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _delta.__t__[_i] = (_beta.__t__[_i] << ((3 : GoUnTypedInt)));
            });
        };
        _p224Reduce(Go.pointer(_delta));
        _p224Square(_x3, Go.pointer(_alpha), Go.pointer(_c));
        _p224Sub(_x3, _x3, Go.pointer(_delta));
        _p224Reduce(_x3);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _beta.__t__[_i] = (_beta.__t__[_i] << (((2 : GoUnTypedInt))));
            });
        };
        _p224Sub(Go.pointer(_beta), Go.pointer(_beta), _x3);
        _p224Reduce(Go.pointer(_beta));
        _p224Square(Go.pointer(_gamma), Go.pointer(_gamma), Go.pointer(_c));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _gamma.__t__[_i] = (_gamma.__t__[_i] << (((3 : GoUnTypedInt))));
            });
        };
        _p224Reduce(Go.pointer(_gamma));
        _p224Mul(_y3, Go.pointer(_alpha), Go.pointer(_beta), Go.pointer(_c));
        _p224Sub(_y3, _y3, Go.pointer(_gamma));
        _p224Reduce(_y3);
    }
/**
    // p224CopyConditional sets *out = *in iff the least-significant-bit of control
    // is true, and it runs in constant time.
**/
function _p224CopyConditional(_out:Pointer<T_p224FieldElement>, _in:Pointer<T_p224FieldElement>, _control:GoUInt32):Void {
        _control = (_control << (((31 : GoUnTypedInt))));
        _control = (((((_control : GoInt32)) >> ((31 : GoUnTypedInt))) : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _out.value.__t__[_i] = _out.value.__t__[_i] ^ ((_out.value.__t__[_i] ^ _in.value.__t__[_i]) & _control);
            });
        };
    }
function _p224ScalarMult(_outX:Pointer<T_p224FieldElement>, _outY:Pointer<T_p224FieldElement>, _outZ:Pointer<T_p224FieldElement>, _inX:Pointer<T_p224FieldElement>, _inY:Pointer<T_p224FieldElement>, _inZ:Pointer<T_p224FieldElement>, _scalar:Slice<GoByte>):Void {
        var _xx:T_p224FieldElement = new T_p224FieldElement(), _yy:T_p224FieldElement = new T_p224FieldElement(), _zz:T_p224FieldElement = new T_p224FieldElement();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _outX.value.__t__[_i] = ((0 : GoUInt32));
                _outY.value.__t__[_i] = ((0 : GoUInt32));
                _outZ.value.__t__[_i] = ((0 : GoUInt32));
            });
        };
        for (_byte in _scalar) {
            {
                var _bitNum:GoUInt = ((((0 : GoUInt)) : GoUInt));
                Go.cfor(_bitNum < ((8 : GoUInt)), _bitNum++, {
                    _p224DoubleJacobian(_outX, _outY, _outZ, _outX, _outY, _outZ);
                    var _bit:GoUInt32 = (((((_byte >> (((7 : GoUInt)) - _bitNum))) & ((1 : GoUInt8))) : GoUInt32));
                    _p224AddJacobian(Go.pointer(_xx), Go.pointer(_yy), Go.pointer(_zz), _inX, _inY, _inZ, _outX, _outY, _outZ);
                    _p224CopyConditional(_outX, Go.pointer(_xx), _bit);
                    _p224CopyConditional(_outY, Go.pointer(_yy), _bit);
                    _p224CopyConditional(_outZ, Go.pointer(_zz), _bit);
                });
            };
        };
    }
/**
    // p224ToAffine converts from Jacobian to affine form.
**/
function _p224ToAffine(_x:Pointer<T_p224FieldElement>, _y:Pointer<T_p224FieldElement>, _z:Pointer<T_p224FieldElement>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _zinv:T_p224FieldElement = new T_p224FieldElement(), _zinvsq:T_p224FieldElement = new T_p224FieldElement(), _outx:T_p224FieldElement = new T_p224FieldElement(), _outy:T_p224FieldElement = new T_p224FieldElement();
        var _tmp:T_p224LargeFieldElement = new T_p224LargeFieldElement();
        {
            var _isPointAtInfinity:GoUInt32 = _p224IsZero(_z);
            if (_isPointAtInfinity == ((1 : GoUInt32))) {
                return { _0 : Go.pointer(new stdgo.math.big.Big.Int_()), _1 : Go.pointer(new stdgo.math.big.Big.Int_()) };
            };
        };
        _p224Invert(Go.pointer(_zinv), _z);
        _p224Square(Go.pointer(_zinvsq), Go.pointer(_zinv), Go.pointer(_tmp));
        _p224Mul(_x, _x, Go.pointer(_zinvsq), Go.pointer(_tmp));
        _p224Mul(Go.pointer(_zinvsq), Go.pointer(_zinvsq), Go.pointer(_zinv), Go.pointer(_tmp));
        _p224Mul(_y, _y, Go.pointer(_zinvsq), Go.pointer(_tmp));
        _p224Contract(Go.pointer(_outx), _x);
        _p224Contract(Go.pointer(_outy), _y);
        return { _0 : _p224ToBig(Go.pointer(_outx)), _1 : _p224ToBig(Go.pointer(_outy)) };
    }
/**
    // get28BitsFromEnd returns the least-significant 28 bits from buf>>shift,
    // where buf is interpreted as a big-endian number.
**/
function _get28BitsFromEnd(_buf:Slice<GoByte>, _shift:GoUInt):{ var _0 : GoUInt32; var _1 : Slice<GoByte>; } {
        var _ret:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_i < ((4 : GoUInt)), _i++, {
                var _b:GoByte = ((0 : GoUInt8));
                {
                    var _l:GoInt = _buf.length;
                    if (_l > ((0 : GoInt))) {
                        _b = _buf[_l - ((1 : GoInt))];
                        if (_i != ((3 : GoUInt)) || _shift == ((4 : GoUInt))) {
                            _buf = _buf.__slice__(0, _l - ((1 : GoInt)));
                        };
                    };
                };
                _ret = _ret | (((((_b : GoUInt32)) << (((8 : GoUInt)) * _i)) >> _shift));
            });
        };
        _ret = _ret & (_bottom28Bits);
        return { _0 : _ret, _1 : _buf };
    }
/**
    // p224FromBig sets *out = *in.
**/
function _p224FromBig(_out:Pointer<T_p224FieldElement>, _in:Pointer<stdgo.math.big.Big.Int_>):Void {
        var _bytes:Slice<GoUInt8> = _in.value.bytes();
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((0 : GoUInt)));
            _out.value.__t__[((0 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((4 : GoUInt)));
            _out.value.__t__[((1 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((0 : GoUInt)));
            _out.value.__t__[((2 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((4 : GoUInt)));
            _out.value.__t__[((3 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((0 : GoUInt)));
            _out.value.__t__[((4 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((4 : GoUInt)));
            _out.value.__t__[((5 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((0 : GoUInt)));
            _out.value.__t__[((6 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
        {
            var __tmp__ = _get28BitsFromEnd(_bytes, ((4 : GoUInt)));
            _out.value.__t__[((7 : GoInt))] = __tmp__._0;
            _bytes = __tmp__._1;
        };
    }
/**
    // p224ToBig returns in as a big.Int.
**/
function _p224ToBig(_in:Pointer<T_p224FieldElement>):Pointer<stdgo.math.big.Big.Int_> {
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
        _buf[((27 : GoInt))] = ((_in.value.__t__[((0 : GoInt))] : GoByte));
        _buf[((26 : GoInt))] = (((_in.value.__t__[((0 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
        _buf[((25 : GoInt))] = (((_in.value.__t__[((0 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
        _buf[((24 : GoInt))] = ((((((_in.value.__t__[((0 : GoInt))] >> ((24 : GoUnTypedInt)))) & ((15 : GoUInt32))) | ((_in.value.__t__[((1 : GoInt))] << ((4 : GoUnTypedInt)))) & ((240 : GoUInt32))) : GoByte));
        _buf[((23 : GoInt))] = (((_in.value.__t__[((1 : GoInt))] >> ((4 : GoUnTypedInt))) : GoByte));
        _buf[((22 : GoInt))] = (((_in.value.__t__[((1 : GoInt))] >> ((12 : GoUnTypedInt))) : GoByte));
        _buf[((21 : GoInt))] = (((_in.value.__t__[((1 : GoInt))] >> ((20 : GoUnTypedInt))) : GoByte));
        _buf[((20 : GoInt))] = ((_in.value.__t__[((2 : GoInt))] : GoByte));
        _buf[((19 : GoInt))] = (((_in.value.__t__[((2 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
        _buf[((18 : GoInt))] = (((_in.value.__t__[((2 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
        _buf[((17 : GoInt))] = ((((((_in.value.__t__[((2 : GoInt))] >> ((24 : GoUnTypedInt)))) & ((15 : GoUInt32))) | ((_in.value.__t__[((3 : GoInt))] << ((4 : GoUnTypedInt)))) & ((240 : GoUInt32))) : GoByte));
        _buf[((16 : GoInt))] = (((_in.value.__t__[((3 : GoInt))] >> ((4 : GoUnTypedInt))) : GoByte));
        _buf[((15 : GoInt))] = (((_in.value.__t__[((3 : GoInt))] >> ((12 : GoUnTypedInt))) : GoByte));
        _buf[((14 : GoInt))] = (((_in.value.__t__[((3 : GoInt))] >> ((20 : GoUnTypedInt))) : GoByte));
        _buf[((13 : GoInt))] = ((_in.value.__t__[((4 : GoInt))] : GoByte));
        _buf[((12 : GoInt))] = (((_in.value.__t__[((4 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
        _buf[((11 : GoInt))] = (((_in.value.__t__[((4 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
        _buf[((10 : GoInt))] = ((((((_in.value.__t__[((4 : GoInt))] >> ((24 : GoUnTypedInt)))) & ((15 : GoUInt32))) | ((_in.value.__t__[((5 : GoInt))] << ((4 : GoUnTypedInt)))) & ((240 : GoUInt32))) : GoByte));
        _buf[((9 : GoInt))] = (((_in.value.__t__[((5 : GoInt))] >> ((4 : GoUnTypedInt))) : GoByte));
        _buf[((8 : GoInt))] = (((_in.value.__t__[((5 : GoInt))] >> ((12 : GoUnTypedInt))) : GoByte));
        _buf[((7 : GoInt))] = (((_in.value.__t__[((5 : GoInt))] >> ((20 : GoUnTypedInt))) : GoByte));
        _buf[((6 : GoInt))] = ((_in.value.__t__[((6 : GoInt))] : GoByte));
        _buf[((5 : GoInt))] = (((_in.value.__t__[((6 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte));
        _buf[((4 : GoInt))] = (((_in.value.__t__[((6 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte));
        _buf[((3 : GoInt))] = ((((((_in.value.__t__[((6 : GoInt))] >> ((24 : GoUnTypedInt)))) & ((15 : GoUInt32))) | ((_in.value.__t__[((7 : GoInt))] << ((4 : GoUnTypedInt)))) & ((240 : GoUInt32))) : GoByte));
        _buf[((2 : GoInt))] = (((_in.value.__t__[((7 : GoInt))] >> ((4 : GoUnTypedInt))) : GoByte));
        _buf[((1 : GoInt))] = (((_in.value.__t__[((7 : GoInt))] >> ((12 : GoUnTypedInt))) : GoByte));
        _buf[((0 : GoInt))] = (((_in.value.__t__[((7 : GoInt))] >> ((20 : GoUnTypedInt))) : GoByte));
        return Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_buf.__slice__(0));
    }
function _initP256():Void {
        _p256Params = Go.pointer((({ name : "P-256", p : new Pointer<stdgo.math.big.Big.Int_>().nil(), n : new Pointer<stdgo.math.big.Big.Int_>().nil(), b : new Pointer<stdgo.math.big.Big.Int_>().nil(), gx : new Pointer<stdgo.math.big.Big.Int_>().nil(), gy : new Pointer<stdgo.math.big.Big.Int_>().nil(), bitSize : 0 } : CurveParams)));
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("115792089210356248762697446949407573530086143415290314195533631308867097853951", ((10 : GoInt)));
            _p256Params.value.p = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("115792089210356248762697446949407573529996955224135760342422259061068512044369", ((10 : GoInt)));
            _p256Params.value.n = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", ((16 : GoInt)));
            _p256Params.value.b = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296", ((16 : GoInt)));
            _p256Params.value.gx = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5", ((16 : GoInt)));
            _p256Params.value.gy = __tmp__._0;
        };
        _p256Params.value.bitSize = ((256 : GoInt));
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("7fffffff00000001fffffffe8000000100000000ffffffff0000000180000000", ((16 : GoInt)));
            _p256RInverse = __tmp__._0;
        };
        _initP256Arch();
    }
/**
    // p256GetScalar endian-swaps the big-endian scalar value from in and writes it
    // to out. If the scalar is equal or greater than the order of the group, it's
    // reduced modulo that order.
**/
function _p256GetScalar(_out:Pointer<GoArray<GoByte>>, _in:Slice<GoByte>):Void {
        var _n:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_in);
        var _scalarBytes:Slice<GoByte> = new Slice<GoUInt8>().nil();
        if (_n.value.cmp(_p256Params.value.n) >= ((0 : GoInt))) {
            _n.value.mod(_n, _p256Params.value.n);
            _scalarBytes = _n.value.bytes();
        } else {
            _scalarBytes = _in;
        };
        {
            var _i;
            var _v;
            for (_obj in _scalarBytes.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                _out.value[_scalarBytes.length - (((1 : GoInt)) + _i)] = _v;
            };
        };
    }
/**
    // nonZeroToAllOnes returns:
    //   0xffffffff for 0 < x <= 2**31
    //   0 for x == 0 or x > 2**31.
**/
function _nonZeroToAllOnes(_x:GoUInt32):GoUInt32 {
        return (((_x - ((1 : GoUInt32))) >> ((31 : GoUnTypedInt)))) - ((1 : GoUInt32));
    }
/**
    // p256ReduceCarry adds a multiple of p in order to cancel |carry|,
    // which is a term at 2**257.
    //
    // On entry: carry < 2**3, inout[0,2,...] < 2**29, inout[1,3,...] < 2**28.
    // On exit: inout[0,2,..] < 2**30, inout[1,3,...] < 2**29.
**/
function _p256ReduceCarry(_inout:Pointer<GoArray<GoUInt32>>, _carry:GoUInt32):Void {
        var _carry_mask:GoUInt32 = _nonZeroToAllOnes(_carry);
        _inout.value[((0 : GoInt))] = _inout.value[((0 : GoInt))] + ((_carry << ((1 : GoUnTypedInt))));
        _inout.value[((3 : GoInt))] = _inout.value[((3 : GoInt))] + (((268435456 : GoUInt32)) & _carry_mask);
        _inout.value[((3 : GoInt))] = _inout.value[((3 : GoInt))] - ((_carry << ((11 : GoUnTypedInt))));
        _inout.value[((4 : GoInt))] = _inout.value[((4 : GoInt))] + ((((536870912 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) & _carry_mask);
        _inout.value[((5 : GoInt))] = _inout.value[((5 : GoInt))] + ((((268435456 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) & _carry_mask);
        _inout.value[((6 : GoInt))] = _inout.value[((6 : GoInt))] + ((((536870912 : GoUnTypedInt)) - ((1 : GoUnTypedInt))) & _carry_mask);
        _inout.value[((6 : GoInt))] = _inout.value[((6 : GoInt))] - ((_carry << ((22 : GoUnTypedInt))));
        _inout.value[((7 : GoInt))] = _inout.value[((7 : GoInt))] - (((1 : GoUInt32)) & _carry_mask);
        _inout.value[((7 : GoInt))] = _inout.value[((7 : GoInt))] + ((_carry << ((25 : GoUnTypedInt))));
    }
/**
    // p256Sum sets out = in+in2.
    //
    // On entry, in[i]+in2[i] must not overflow a 32-bit word.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29
**/
function _p256Sum(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>, _in2:Pointer<GoArray<GoUInt32>>):Void {
        var _carry:GoUInt32 = ((((0 : GoUInt32)) : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _out.value[_i] = _in.value[_i] + _in2.value[_i];
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((29 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                _out.value[_i] = _in.value[_i] + _in2.value[_i];
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((28 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Diff sets out = in-in2.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29 and
    //           in2[0,2,...] < 2**30, in2[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Diff(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>, _in2:Pointer<GoArray<GoUInt32>>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _out.value[_i] = _in.value[_i] - _in2.value[_i];
                _out.value[_i] = _out.value[_i] + (_p256Zero31[_i]);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((29 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                _out.value[_i] = _in.value[_i] - _in2.value[_i];
                _out.value[_i] = _out.value[_i] + (_p256Zero31[_i]);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((28 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256ReduceDegree sets out = tmp/R mod p where tmp contains 64-bit words with
    // the same 29,28,... bit positions as a field element.
    //
    // The values in field elements are in Montgomery form: x*R mod p where R =
    // 2**257. Since we just multiplied two Montgomery values together, the result
    // is x*y*R*R mod p. We wish to divide by R in order for the result also to be
    // in Montgomery form.
    //
    // On entry: tmp[i] < 2**64
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29
**/
function _p256ReduceDegree(_out:Pointer<GoArray<GoUInt32>>, _tmp:GoArray<GoUInt64>):Void {
        var _tmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 18) ((0 : GoUInt32))]);
        var _carry:GoUInt32 = ((0 : GoUInt32)), _x:GoUInt32 = ((0 : GoUInt32)), _xMask:GoUInt32 = ((0 : GoUInt32));
        _tmp2[((0 : GoInt))] = ((_tmp[((0 : GoInt))] : GoUInt32)) & _bottom29Bits;
        _tmp2[((1 : GoInt))] = (((_tmp[((0 : GoInt))] : GoUInt32)) >> ((29 : GoUnTypedInt)));
        _tmp2[((1 : GoInt))] = _tmp2[((1 : GoInt))] | ((((((_tmp[((0 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((3 : GoUnTypedInt)))) & _bottom28Bits);
        _tmp2[((1 : GoInt))] = _tmp2[((1 : GoInt))] + (((_tmp[((1 : GoInt))] : GoUInt32)) & _bottom28Bits);
        _carry = (_tmp2[((1 : GoInt))] >> ((28 : GoUnTypedInt)));
        _tmp2[((1 : GoInt))] = _tmp2[((1 : GoInt))] & (_bottom28Bits);
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((17 : GoInt)), _i++, {
                _tmp2[_i] = (((((_tmp[_i - ((2 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32))) >> ((25 : GoUnTypedInt)));
                _tmp2[_i] = _tmp2[_i] + (((((_tmp[_i - ((1 : GoInt))] : GoUInt32))) >> ((28 : GoUnTypedInt))));
                _tmp2[_i] = _tmp2[_i] + ((((((_tmp[_i - ((1 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((4 : GoUnTypedInt)))) & _bottom29Bits);
                _tmp2[_i] = _tmp2[_i] + (((_tmp[_i] : GoUInt32)) & _bottom29Bits);
                _tmp2[_i] = _tmp2[_i] + (_carry);
                _carry = (_tmp2[_i] >> ((29 : GoUnTypedInt)));
                _tmp2[_i] = _tmp2[_i] & (_bottom29Bits);
                _i++;
                if (_i == ((17 : GoInt))) {
                    break;
                };
                _tmp2[_i] = ((((_tmp[_i - ((2 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32)) >> ((25 : GoUnTypedInt)));
                _tmp2[_i] = _tmp2[_i] + ((((_tmp[_i - ((1 : GoInt))] : GoUInt32)) >> ((29 : GoUnTypedInt))));
                _tmp2[_i] = _tmp2[_i] + (((((((_tmp[_i - ((1 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32))) << ((3 : GoUnTypedInt)))) & _bottom28Bits);
                _tmp2[_i] = _tmp2[_i] + (((_tmp[_i] : GoUInt32)) & _bottom28Bits);
                _tmp2[_i] = _tmp2[_i] + (_carry);
                _carry = (_tmp2[_i] >> ((28 : GoUnTypedInt)));
                _tmp2[_i] = _tmp2[_i] & (_bottom28Bits);
            });
        };
        _tmp2[((17 : GoInt))] = ((((_tmp[((15 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32)) >> ((25 : GoUnTypedInt)));
        _tmp2[((17 : GoInt))] = _tmp2[((17 : GoInt))] + ((((_tmp[((16 : GoInt))] : GoUInt32)) >> ((29 : GoUnTypedInt))));
        _tmp2[((17 : GoInt))] = _tmp2[((17 : GoInt))] + (((((_tmp[((16 : GoInt))] >> ((32 : GoUnTypedInt))) : GoUInt32)) << ((3 : GoUnTypedInt))));
        _tmp2[((17 : GoInt))] = _tmp2[((17 : GoInt))] + (_carry);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i = _i + (((2 : GoInt))), {
                _tmp2[_i + ((1 : GoInt))] = _tmp2[_i + ((1 : GoInt))] + ((_tmp2[_i] >> ((29 : GoUnTypedInt))));
                _x = _tmp2[_i] & _bottom29Bits;
                _xMask = _nonZeroToAllOnes(_x);
                _tmp2[_i] = ((0 : GoUInt32));
                _tmp2[_i + ((3 : GoInt))] = _tmp2[_i + ((3 : GoInt))] + (((_x << ((10 : GoUnTypedInt)))) & _bottom28Bits);
                _tmp2[_i + ((4 : GoInt))] = _tmp2[_i + ((4 : GoInt))] + (((_x >> ((18 : GoUnTypedInt)))));
                _tmp2[_i + ((6 : GoInt))] = _tmp2[_i + ((6 : GoInt))] + (((_x << ((21 : GoUnTypedInt)))) & _bottom29Bits);
                _tmp2[_i + ((7 : GoInt))] = _tmp2[_i + ((7 : GoInt))] + ((_x >> ((8 : GoUnTypedInt))));
                _tmp2[_i + ((7 : GoInt))] = _tmp2[_i + ((7 : GoInt))] + (((268435456 : GoUInt32)) & _xMask);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] + ((_x - ((1 : GoUInt32))) & _xMask);
                _tmp2[_i + ((7 : GoInt))] = _tmp2[_i + ((7 : GoInt))] - (((_x << ((24 : GoUnTypedInt)))) & _bottom28Bits);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] - ((_x >> ((4 : GoUnTypedInt))));
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] + (((536870912 : GoUInt32)) & _xMask);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] - (_x);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] + (((_x << ((28 : GoUnTypedInt)))) & _bottom29Bits);
                _tmp2[_i + ((9 : GoInt))] = _tmp2[_i + ((9 : GoInt))] + ((((_x >> ((1 : GoUnTypedInt)))) - ((1 : GoUInt32))) & _xMask);
                if (_i + ((1 : GoInt)) == _p256Limbs) {
                    break;
                };
                _tmp2[_i + ((2 : GoInt))] = _tmp2[_i + ((2 : GoInt))] + ((_tmp2[_i + ((1 : GoInt))] >> ((28 : GoUnTypedInt))));
                _x = _tmp2[_i + ((1 : GoInt))] & _bottom28Bits;
                _xMask = _nonZeroToAllOnes(_x);
                _tmp2[_i + ((1 : GoInt))] = ((0 : GoUInt32));
                _tmp2[_i + ((4 : GoInt))] = _tmp2[_i + ((4 : GoInt))] + (((_x << ((11 : GoUnTypedInt)))) & _bottom29Bits);
                _tmp2[_i + ((5 : GoInt))] = _tmp2[_i + ((5 : GoInt))] + (((_x >> ((18 : GoUnTypedInt)))));
                _tmp2[_i + ((7 : GoInt))] = _tmp2[_i + ((7 : GoInt))] + (((_x << ((21 : GoUnTypedInt)))) & _bottom28Bits);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] + ((_x >> ((7 : GoUnTypedInt))));
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] + (((536870912 : GoUInt32)) & _xMask);
                _tmp2[_i + ((9 : GoInt))] = _tmp2[_i + ((9 : GoInt))] + ((_x - ((1 : GoUInt32))) & _xMask);
                _tmp2[_i + ((8 : GoInt))] = _tmp2[_i + ((8 : GoInt))] - (((_x << ((25 : GoUnTypedInt)))) & _bottom29Bits);
                _tmp2[_i + ((9 : GoInt))] = _tmp2[_i + ((9 : GoInt))] - ((_x >> ((4 : GoUnTypedInt))));
                _tmp2[_i + ((9 : GoInt))] = _tmp2[_i + ((9 : GoInt))] + (((268435456 : GoUInt32)) & _xMask);
                _tmp2[_i + ((9 : GoInt))] = _tmp2[_i + ((9 : GoInt))] - (_x);
                _tmp2[_i + ((10 : GoInt))] = _tmp2[_i + ((10 : GoInt))] + ((_x - ((1 : GoUInt32))) & _xMask);
            });
        };
        _carry = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _out.value[_i] = _tmp2[_i + ((9 : GoInt))];
                _out.value[_i] = _out.value[_i] + (_carry);
                _out.value[_i] = _out.value[_i] + (((_tmp2[_i + ((10 : GoInt))] << ((28 : GoUnTypedInt)))) & _bottom29Bits);
                _carry = (_out.value[_i] >> ((29 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                _out.value[_i] = (_tmp2[_i + ((9 : GoInt))] >> ((1 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((28 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _out.value[((8 : GoInt))] = _tmp2[((17 : GoInt))];
        _out.value[((8 : GoInt))] = _out.value[((8 : GoInt))] + (_carry);
        _carry = (_out.value[((8 : GoInt))] >> ((29 : GoUnTypedInt)));
        _out.value[((8 : GoInt))] = _out.value[((8 : GoInt))] & (_bottom29Bits);
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Square sets out=in*in.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Square(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>):Void {
        var _tmp:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 17) ((0 : GoUInt64))]);
        _tmp[((0 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((_in.value[((0 : GoInt))] : GoUInt64));
        _tmp[((1 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((2 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((2 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((3 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((2 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((4 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((4 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((3 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((_in.value[((2 : GoInt))] : GoUInt64));
        _tmp[((5 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((4 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((6 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((4 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((7 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((4 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((8 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((_in.value[((4 : GoInt))] : GoUInt64));
        _tmp[((9 : GoInt))] = ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((10 : GoInt))] = ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((11 : GoInt))] = ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in.value[((6 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((12 : GoInt))] = ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((2 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((_in.value[((6 : GoInt))] : GoUInt64));
        _tmp[((13 : GoInt))] = ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((14 : GoInt))] = ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((15 : GoInt))] = ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in.value[((8 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt))));
        _tmp[((16 : GoInt))] = ((_in.value[((8 : GoInt))] : GoUInt64)) * ((_in.value[((8 : GoInt))] : GoUInt64));
        _p256ReduceDegree(_out, _tmp.copy());
    }
/**
    // p256Mul sets out=in*in2.
    //
    // On entry: in[0,2,...] < 2**30, in[1,3,...] < 2**29 and
    //           in2[0,2,...] < 2**30, in2[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Mul(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>, _in2:Pointer<GoArray<GoUInt32>>):Void {
        var _tmp:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 17) ((0 : GoUInt64))]);
        _tmp[((0 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((_in2.value[((0 : GoInt))] : GoUInt64));
        _tmp[((1 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((2 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((3 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((4 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((5 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((6 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((7 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((8 : GoInt))] = ((_in.value[((0 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((0 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((9 : GoInt))] = ((_in.value[((1 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((1 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((10 : GoInt))] = ((_in.value[((2 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((2 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((11 : GoInt))] = ((_in.value[((3 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((3 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((12 : GoInt))] = ((_in.value[((4 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((4 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((13 : GoInt))] = ((_in.value[((5 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((5 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((14 : GoInt))] = ((_in.value[((6 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((1 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((6 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((15 : GoInt))] = ((_in.value[((7 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt)))) + ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((7 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _tmp[((16 : GoInt))] = ((_in.value[((8 : GoInt))] : GoUInt64)) * ((((_in2.value[((8 : GoInt))] : GoUInt64)) << ((0 : GoUnTypedInt))));
        _p256ReduceDegree(_out, _tmp.copy());
    }
function _p256Assign(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>):Void {
        _out.value = _in.value.copy();
    }
/**
    // p256Invert calculates |out| = |in|^{-1}
    //
    // Based on Fermat's Little Theorem:
    //   a^p = a (mod p)
    //   a^{p-1} = 1 (mod p)
    //   a^{p-2} = a^{-1} (mod p)
**/
function _p256Invert(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>):Void {
        var _ftmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ftmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        var _e2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e4:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e8:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e16:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e32:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _e64:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(Go.pointer(_ftmp), _in);
        _p256Mul(Go.pointer(_ftmp), _in, Go.pointer(_ftmp));
        _p256Assign(Go.pointer(_e2), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Mul(Go.pointer(_ftmp), Go.pointer(_ftmp), Go.pointer(_e2));
        _p256Assign(Go.pointer(_e4), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
        _p256Mul(Go.pointer(_ftmp), Go.pointer(_ftmp), Go.pointer(_e4));
        _p256Assign(Go.pointer(_e8), Go.pointer(_ftmp));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
            });
        };
        _p256Mul(Go.pointer(_ftmp), Go.pointer(_ftmp), Go.pointer(_e8));
        _p256Assign(Go.pointer(_e16), Go.pointer(_ftmp));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
            });
        };
        _p256Mul(Go.pointer(_ftmp), Go.pointer(_ftmp), Go.pointer(_e16));
        _p256Assign(Go.pointer(_e32), Go.pointer(_ftmp));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((32 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
            });
        };
        _p256Assign(Go.pointer(_e64), Go.pointer(_ftmp));
        _p256Mul(Go.pointer(_ftmp), Go.pointer(_ftmp), _in);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((192 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp), Go.pointer(_ftmp));
            });
        };
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_e64), Go.pointer(_e32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
            });
        };
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_ftmp2), Go.pointer(_e16));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
            });
        };
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_ftmp2), Go.pointer(_e8));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((4 : GoInt)), _i++, {
                _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
            });
        };
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_ftmp2), Go.pointer(_e4));
        _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
        _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_ftmp2), Go.pointer(_e2));
        _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
        _p256Square(Go.pointer(_ftmp2), Go.pointer(_ftmp2));
        _p256Mul(Go.pointer(_ftmp2), Go.pointer(_ftmp2), _in);
        _p256Mul(_out, Go.pointer(_ftmp2), Go.pointer(_ftmp));
    }
/**
    // p256Scalar3 sets out=3*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar3(_out:Pointer<GoArray<GoUInt32>>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _out.value[_i] = _out.value[_i] * (((3 : GoUInt32)));
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((29 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                _out.value[_i] = _out.value[_i] * (((3 : GoUInt32)));
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = (_out.value[_i] >> ((28 : GoUnTypedInt)));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Scalar4 sets out=4*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar4(_out:Pointer<GoArray<GoUInt32>>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32)), _nextCarry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _nextCarry = (_out.value[_i] >> ((27 : GoUnTypedInt)));
                _out.value[_i] = (_out.value[_i] << (((2 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = _nextCarry + ((_out.value[_i] >> ((29 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                _nextCarry = (_out.value[_i] >> ((26 : GoUnTypedInt)));
                _out.value[_i] = (_out.value[_i] << (((2 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = _nextCarry + ((_out.value[_i] >> ((28 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256Scalar8 sets out=8*out.
    //
    // On entry: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
    // On exit: out[0,2,...] < 2**30, out[1,3,...] < 2**29.
**/
function _p256Scalar8(_out:Pointer<GoArray<GoUInt32>>):Void {
        var _carry:GoUInt32 = ((0 : GoUInt32)), _nextCarry:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                _nextCarry = (_out.value[_i] >> ((26 : GoUnTypedInt)));
                _out.value[_i] = (_out.value[_i] << (((3 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = _nextCarry + ((_out.value[_i] >> ((29 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom29Bits);
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                _nextCarry = (_out.value[_i] >> ((25 : GoUnTypedInt)));
                _out.value[_i] = (_out.value[_i] << (((3 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
                _out.value[_i] = _out.value[_i] + (_carry);
                _carry = _nextCarry + ((_out.value[_i] >> ((28 : GoUnTypedInt))));
                _out.value[_i] = _out.value[_i] & (_bottom28Bits);
            });
        };
        _p256ReduceCarry(_out, _carry);
    }
/**
    // p256PointDouble sets {xOut,yOut,zOut} = 2*{x,y,z}.
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#doubling-dbl-2009-l
**/
function _p256PointDouble(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _x:Pointer<GoArray<GoUInt32>>, _y:Pointer<GoArray<GoUInt32>>, _z:Pointer<GoArray<GoUInt32>>):Void {
        var _delta:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _gamma:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _alpha:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _beta:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(Go.pointer(_delta), _z);
        _p256Square(Go.pointer(_gamma), _y);
        _p256Mul(Go.pointer(_beta), _x, Go.pointer(_gamma));
        _p256Sum(Go.pointer(_tmp), _x, Go.pointer(_delta));
        _p256Diff(Go.pointer(_tmp2), _x, Go.pointer(_delta));
        _p256Mul(Go.pointer(_alpha), Go.pointer(_tmp), Go.pointer(_tmp2));
        _p256Scalar3(Go.pointer(_alpha));
        _p256Sum(Go.pointer(_tmp), _y, _z);
        _p256Square(Go.pointer(_tmp), Go.pointer(_tmp));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_tmp), Go.pointer(_gamma));
        _p256Diff(_zOut, Go.pointer(_tmp), Go.pointer(_delta));
        _p256Scalar4(Go.pointer(_beta));
        _p256Square(_xOut, Go.pointer(_alpha));
        _p256Diff(_xOut, _xOut, Go.pointer(_beta));
        _p256Diff(_xOut, _xOut, Go.pointer(_beta));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_beta), _xOut);
        _p256Mul(Go.pointer(_tmp), Go.pointer(_alpha), Go.pointer(_tmp));
        _p256Square(Go.pointer(_tmp2), Go.pointer(_gamma));
        _p256Scalar8(Go.pointer(_tmp2));
        _p256Diff(_yOut, Go.pointer(_tmp), Go.pointer(_tmp2));
    }
/**
    // p256PointAddMixed sets {xOut,yOut,zOut} = {x1,y1,z1} + {x2,y2,1}.
    // (i.e. the second point is affine.)
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#addition-add-2007-bl
    //
    // Note that this function does not handle P+P, infinity+P nor P+infinity
    // correctly.
**/
function _p256PointAddMixed(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _x1:Pointer<GoArray<GoUInt32>>, _y1:Pointer<GoArray<GoUInt32>>, _z1:Pointer<GoArray<GoUInt32>>, _x2:Pointer<GoArray<GoUInt32>>, _y2:Pointer<GoArray<GoUInt32>>):Void {
        var _z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _h:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _i:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _j:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _r:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _rr:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _v:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(Go.pointer(_z1z1), _z1);
        _p256Sum(Go.pointer(_tmp), _z1, _z1);
        _p256Mul(Go.pointer(_u2), _x2, Go.pointer(_z1z1));
        _p256Mul(Go.pointer(_z1z1z1), _z1, Go.pointer(_z1z1));
        _p256Mul(Go.pointer(_s2), _y2, Go.pointer(_z1z1z1));
        _p256Diff(Go.pointer(_h), Go.pointer(_u2), _x1);
        _p256Sum(Go.pointer(_i), Go.pointer(_h), Go.pointer(_h));
        _p256Square(Go.pointer(_i), Go.pointer(_i));
        _p256Mul(Go.pointer(_j), Go.pointer(_h), Go.pointer(_i));
        _p256Diff(Go.pointer(_r), Go.pointer(_s2), _y1);
        _p256Sum(Go.pointer(_r), Go.pointer(_r), Go.pointer(_r));
        _p256Mul(Go.pointer(_v), _x1, Go.pointer(_i));
        _p256Mul(_zOut, Go.pointer(_tmp), Go.pointer(_h));
        _p256Square(Go.pointer(_rr), Go.pointer(_r));
        _p256Diff(_xOut, Go.pointer(_rr), Go.pointer(_j));
        _p256Diff(_xOut, _xOut, Go.pointer(_v));
        _p256Diff(_xOut, _xOut, Go.pointer(_v));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_v), _xOut);
        _p256Mul(_yOut, Go.pointer(_tmp), Go.pointer(_r));
        _p256Mul(Go.pointer(_tmp), _y1, Go.pointer(_j));
        _p256Diff(_yOut, _yOut, Go.pointer(_tmp));
        _p256Diff(_yOut, _yOut, Go.pointer(_tmp));
    }
/**
    // p256PointAdd sets {xOut,yOut,zOut} = {x1,y1,z1} + {x2,y2,z2}.
    //
    // See https://www.hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#addition-add-2007-bl
    //
    // Note that this function does not handle P+P, infinity+P nor P+infinity
    // correctly.
**/
function _p256PointAdd(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _x1:Pointer<GoArray<GoUInt32>>, _y1:Pointer<GoArray<GoUInt32>>, _z1:Pointer<GoArray<GoUInt32>>, _x2:Pointer<GoArray<GoUInt32>>, _y2:Pointer<GoArray<GoUInt32>>, _z2:Pointer<GoArray<GoUInt32>>):Void {
        var _z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z1z1z1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z2z2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _z2z2z2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _s2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u1:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _u2:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _h:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _i:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _j:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _r:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _rr:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _v:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tmp:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Square(Go.pointer(_z1z1), _z1);
        _p256Square(Go.pointer(_z2z2), _z2);
        _p256Mul(Go.pointer(_u1), _x1, Go.pointer(_z2z2));
        _p256Sum(Go.pointer(_tmp), _z1, _z2);
        _p256Square(Go.pointer(_tmp), Go.pointer(_tmp));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_tmp), Go.pointer(_z1z1));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_tmp), Go.pointer(_z2z2));
        _p256Mul(Go.pointer(_z2z2z2), _z2, Go.pointer(_z2z2));
        _p256Mul(Go.pointer(_s1), _y1, Go.pointer(_z2z2z2));
        _p256Mul(Go.pointer(_u2), _x2, Go.pointer(_z1z1));
        _p256Mul(Go.pointer(_z1z1z1), _z1, Go.pointer(_z1z1));
        _p256Mul(Go.pointer(_s2), _y2, Go.pointer(_z1z1z1));
        _p256Diff(Go.pointer(_h), Go.pointer(_u2), Go.pointer(_u1));
        _p256Sum(Go.pointer(_i), Go.pointer(_h), Go.pointer(_h));
        _p256Square(Go.pointer(_i), Go.pointer(_i));
        _p256Mul(Go.pointer(_j), Go.pointer(_h), Go.pointer(_i));
        _p256Diff(Go.pointer(_r), Go.pointer(_s2), Go.pointer(_s1));
        _p256Sum(Go.pointer(_r), Go.pointer(_r), Go.pointer(_r));
        _p256Mul(Go.pointer(_v), Go.pointer(_u1), Go.pointer(_i));
        _p256Mul(_zOut, Go.pointer(_tmp), Go.pointer(_h));
        _p256Square(Go.pointer(_rr), Go.pointer(_r));
        _p256Diff(_xOut, Go.pointer(_rr), Go.pointer(_j));
        _p256Diff(_xOut, _xOut, Go.pointer(_v));
        _p256Diff(_xOut, _xOut, Go.pointer(_v));
        _p256Diff(Go.pointer(_tmp), Go.pointer(_v), _xOut);
        _p256Mul(_yOut, Go.pointer(_tmp), Go.pointer(_r));
        _p256Mul(Go.pointer(_tmp), Go.pointer(_s1), Go.pointer(_j));
        _p256Diff(_yOut, _yOut, Go.pointer(_tmp));
        _p256Diff(_yOut, _yOut, Go.pointer(_tmp));
    }
/**
    // p256CopyConditional sets out=in if mask = 0xffffffff in constant time.
    //
    // On entry: mask is either 0 or 0xffffffff.
**/
function _p256CopyConditional(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<GoArray<GoUInt32>>, _mask:GoUInt32):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _p256Limbs, _i++, {
                var _tmp:GoUInt32 = _mask & (_in.value[_i] ^ _out.value[_i]);
                _out.value[_i] = _out.value[_i] ^ (_tmp);
            });
        };
    }
/**
    // p256SelectAffinePoint sets {out_x,out_y} to the index'th entry of table.
    // On entry: index < 16, table[0] must be zero.
**/
function _p256SelectAffinePoint(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _table:Slice<GoUInt32>, _index:GoUInt32):Void {
        {
            var _i;
            for (_obj in _xOut.value.keyValueIterator()) {
                _i = _obj.key;
                _xOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _yOut.value.keyValueIterator()) {
                _i = _obj.key;
                _yOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32));
            Go.cfor(_i < ((16 : GoUInt32)), _i++, {
                var _mask:GoUInt32 = _i ^ _index;
                _mask = _mask | ((_mask >> ((2 : GoUnTypedInt))));
                _mask = _mask | ((_mask >> ((1 : GoUnTypedInt))));
                _mask = _mask & (((1 : GoUInt32)));
                _mask--;
                {
                    var _j;
                    for (_obj in _xOut.value.keyValueIterator()) {
                        _j = _obj.key;
                        _xOut.value[_j] = _xOut.value[_j] | (_table[((0 : GoInt))] & _mask);
                        _table = _table.__slice__(((1 : GoInt)));
                    };
                };
                {
                    var _j;
                    for (_obj in _yOut.value.keyValueIterator()) {
                        _j = _obj.key;
                        _yOut.value[_j] = _yOut.value[_j] | (_table[((0 : GoInt))] & _mask);
                        _table = _table.__slice__(((1 : GoInt)));
                    };
                };
            });
        };
    }
/**
    // p256SelectJacobianPoint sets {out_x,out_y,out_z} to the index'th entry of
    // table.
    // On entry: index < 16, table[0] must be zero.
**/
function _p256SelectJacobianPoint(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _table:Pointer<GoArray<GoArray<GoArray<GoUInt32>>>>, _index:GoUInt32):Void {
        {
            var _i;
            for (_obj in _xOut.value.keyValueIterator()) {
                _i = _obj.key;
                _xOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _yOut.value.keyValueIterator()) {
                _i = _obj.key;
                _yOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _zOut.value.keyValueIterator()) {
                _i = _obj.key;
                _zOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32));
            Go.cfor(_i < ((16 : GoUInt32)), _i++, {
                var _mask:GoUInt32 = _i ^ _index;
                _mask = _mask | ((_mask >> ((2 : GoUnTypedInt))));
                _mask = _mask | ((_mask >> ((1 : GoUnTypedInt))));
                _mask = _mask & (((1 : GoUInt32)));
                _mask--;
                {
                    var _j;
                    for (_obj in _xOut.value.keyValueIterator()) {
                        _j = _obj.key;
                        _xOut.value[_j] = _xOut.value[_j] | (_table.value[_i][((0 : GoInt))][_j] & _mask);
                    };
                };
                {
                    var _j;
                    for (_obj in _yOut.value.keyValueIterator()) {
                        _j = _obj.key;
                        _yOut.value[_j] = _yOut.value[_j] | (_table.value[_i][((1 : GoInt))][_j] & _mask);
                    };
                };
                {
                    var _j;
                    for (_obj in _zOut.value.keyValueIterator()) {
                        _j = _obj.key;
                        _zOut.value[_j] = _zOut.value[_j] | (_table.value[_i][((2 : GoInt))][_j] & _mask);
                    };
                };
            });
        };
    }
/**
    // p256GetBit returns the bit'th bit of scalar.
**/
function _p256GetBit(_scalar:Pointer<GoArray<GoUInt8>>, _bit:GoUInt):GoUInt32 {
        return ((((((_scalar.value[(_bit >> ((3 : GoUnTypedInt)))]) >> (_bit & ((7 : GoUInt))))) & ((1 : GoUInt8))) : GoUInt32));
    }
/**
    // p256ScalarBaseMult sets {xOut,yOut,zOut} = scalar*G where scalar is a
    // little-endian number. Note that the value of scalar must be less than the
    // order of the group.
**/
function _p256ScalarBaseMult(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _scalar:Pointer<GoArray<GoUInt8>>):Void {
        var _nIsInfinityMask:GoUInt32 = -1 ^ ((((0 : GoUInt32)) : GoUInt32));
        var _pIsNoninfiniteMask:GoUInt32 = ((0 : GoUInt32)), _mask:GoUInt32 = ((0 : GoUInt32)), _tableOffset:GoUInt32 = ((0 : GoUInt32));
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ty:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        {
            var _i;
            for (_obj in _xOut.value.keyValueIterator()) {
                _i = _obj.key;
                _xOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _yOut.value.keyValueIterator()) {
                _i = _obj.key;
                _yOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _zOut.value.keyValueIterator()) {
                _i = _obj.key;
                _zOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_i < ((32 : GoUInt)), _i++, {
                if (_i != ((0 : GoUInt))) {
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                };
                _tableOffset = ((0 : GoUInt32));
                {
                    var _j:GoUInt = ((((0 : GoUInt)) : GoUInt));
                    Go.cfor(_j <= ((32 : GoUInt)), _j = _j + (((32 : GoUInt))), {
                        var _bit0:GoUInt32 = _p256GetBit(_scalar, ((31 : GoUInt)) - _i + _j);
                        var _bit1:GoUInt32 = _p256GetBit(_scalar, ((95 : GoUInt)) - _i + _j);
                        var _bit2:GoUInt32 = _p256GetBit(_scalar, ((159 : GoUInt)) - _i + _j);
                        var _bit3:GoUInt32 = _p256GetBit(_scalar, ((223 : GoUInt)) - _i + _j);
                        var _index:GoUInt32 = _bit0 | ((_bit1 << ((1 : GoUnTypedInt)))) | ((_bit2 << ((2 : GoUnTypedInt)))) | ((_bit3 << ((3 : GoUnTypedInt))));
                        _p256SelectAffinePoint(Go.pointer(_px), Go.pointer(_py), _p256Precomputed.__slice__(_tableOffset), _index);
                        _tableOffset = _tableOffset + (((30 : GoUnTypedInt)) * _p256Limbs);
                        _p256PointAddMixed(Go.pointer(_tx), Go.pointer(_ty), Go.pointer(_tz), _xOut, _yOut, _zOut, Go.pointer(_px), Go.pointer(_py));
                        _p256CopyConditional(_xOut, Go.pointer(_px), _nIsInfinityMask);
                        _p256CopyConditional(_yOut, Go.pointer(_py), _nIsInfinityMask);
                        _p256CopyConditional(_zOut, Go.pointer(_p256One), _nIsInfinityMask);
                        _pIsNoninfiniteMask = _nonZeroToAllOnes(_index);
                        _mask = _pIsNoninfiniteMask & -1 ^ _nIsInfinityMask;
                        _p256CopyConditional(_xOut, Go.pointer(_tx), _mask);
                        _p256CopyConditional(_yOut, Go.pointer(_ty), _mask);
                        _p256CopyConditional(_zOut, Go.pointer(_tz), _mask);
                        _nIsInfinityMask = (_nIsInfinityMask & (_pIsNoninfiniteMask)) ^ ((-1 : GoUnTypedInt));
                    });
                };
            });
        };
    }
/**
    // p256PointToAffine converts a Jacobian point to an affine point. If the input
    // is the point at infinity then it returns (0, 0) in constant time.
**/
function _p256PointToAffine(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _x:Pointer<GoArray<GoUInt32>>, _y:Pointer<GoArray<GoUInt32>>, _z:Pointer<GoArray<GoUInt32>>):Void {
        var _zInv:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _zInvSq:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256Invert(Go.pointer(_zInv), _z);
        _p256Square(Go.pointer(_zInvSq), Go.pointer(_zInv));
        _p256Mul(_xOut, _x, Go.pointer(_zInvSq));
        _p256Mul(Go.pointer(_zInv), Go.pointer(_zInv), Go.pointer(_zInvSq));
        _p256Mul(_yOut, _y, Go.pointer(_zInv));
    }
/**
    // p256ToAffine returns a pair of *big.Int containing the affine representation
    // of {x,y,z}.
**/
function _p256ToAffine(_x:Pointer<GoArray<GoUInt32>>, _y:Pointer<GoArray<GoUInt32>>, _z:Pointer<GoArray<GoUInt32>>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } {
        var _xOut:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil(), _yOut:Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
        var _xx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _yy:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        _p256PointToAffine(Go.pointer(_xx), Go.pointer(_yy), _x, _y, _z);
        return { _0 : _p256ToBig(Go.pointer(_xx)), _1 : _p256ToBig(Go.pointer(_yy)) };
    }
/**
    // p256ScalarMult sets {xOut,yOut,zOut} = scalar*{x,y}.
**/
function _p256ScalarMult(_xOut:Pointer<GoArray<GoUInt32>>, _yOut:Pointer<GoArray<GoUInt32>>, _zOut:Pointer<GoArray<GoUInt32>>, _x:Pointer<GoArray<GoUInt32>>, _y:Pointer<GoArray<GoUInt32>>, _scalar:Pointer<GoArray<GoUInt8>>):Void {
        var _px:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _py:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _pz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tx:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _ty:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]), _tz:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))]);
        var _precomp:GoArray<GoArray<GoArray<GoUInt32>>> = new GoArray<GoArray<GoArray<GoUInt32>>>(...[for (i in 0 ... 16) new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 3) new GoArray<GoUInt32>(...[for (i in 0 ... 9) ((0 : GoUInt32))])])]);
        var _nIsInfinityMask:GoUInt32 = ((0 : GoUInt32)), _index:GoUInt32 = ((0 : GoUInt32)), _pIsNoninfiniteMask:GoUInt32 = ((0 : GoUInt32)), _mask:GoUInt32 = ((0 : GoUInt32));
        _precomp[((1 : GoInt))][((0 : GoInt))] = _x.value.copy();
        _precomp[((1 : GoInt))][((1 : GoInt))] = _y.value.copy();
        _precomp[((1 : GoInt))][((2 : GoInt))] = _p256One.copy();
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i = _i + (((2 : GoInt))), {
                _p256PointDouble(Go.pointer(_precomp[_i][((0 : GoInt))]), Go.pointer(_precomp[_i][((1 : GoInt))]), Go.pointer(_precomp[_i][((2 : GoInt))]), Go.pointer(_precomp[_i / ((2 : GoInt))][((0 : GoInt))]), Go.pointer(_precomp[_i / ((2 : GoInt))][((1 : GoInt))]), Go.pointer(_precomp[_i / ((2 : GoInt))][((2 : GoInt))]));
                _p256PointAddMixed(Go.pointer(_precomp[_i + ((1 : GoInt))][((0 : GoInt))]), Go.pointer(_precomp[_i + ((1 : GoInt))][((1 : GoInt))]), Go.pointer(_precomp[_i + ((1 : GoInt))][((2 : GoInt))]), Go.pointer(_precomp[_i][((0 : GoInt))]), Go.pointer(_precomp[_i][((1 : GoInt))]), Go.pointer(_precomp[_i][((2 : GoInt))]), _x, _y);
            });
        };
        {
            var _i;
            for (_obj in _xOut.value.keyValueIterator()) {
                _i = _obj.key;
                _xOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _yOut.value.keyValueIterator()) {
                _i = _obj.key;
                _yOut.value[_i] = ((0 : GoUInt32));
            };
        };
        {
            var _i;
            for (_obj in _zOut.value.keyValueIterator()) {
                _i = _obj.key;
                _zOut.value[_i] = ((0 : GoUInt32));
            };
        };
        _nIsInfinityMask = -1 ^ ((((0 : GoUInt32)) : GoUInt32));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((64 : GoInt)), _i++, {
                if (_i != ((0 : GoInt))) {
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                    _p256PointDouble(_xOut, _yOut, _zOut, _xOut, _yOut, _zOut);
                };
                _index = ((_scalar.value[((31 : GoInt)) - _i / ((2 : GoInt))] : GoUInt32));
                if ((_i & ((1 : GoInt))) == ((1 : GoInt))) {
                    _index = _index & (((15 : GoUInt32)));
                } else {
                    _index = (_index >> (((4 : GoUnTypedInt))));
                };
                _p256SelectJacobianPoint(Go.pointer(_px), Go.pointer(_py), Go.pointer(_pz), Go.pointer(_precomp), _index);
                _p256PointAdd(Go.pointer(_tx), Go.pointer(_ty), Go.pointer(_tz), _xOut, _yOut, _zOut, Go.pointer(_px), Go.pointer(_py), Go.pointer(_pz));
                _p256CopyConditional(_xOut, Go.pointer(_px), _nIsInfinityMask);
                _p256CopyConditional(_yOut, Go.pointer(_py), _nIsInfinityMask);
                _p256CopyConditional(_zOut, Go.pointer(_pz), _nIsInfinityMask);
                _pIsNoninfiniteMask = _nonZeroToAllOnes(_index);
                _mask = _pIsNoninfiniteMask & -1 ^ _nIsInfinityMask;
                _p256CopyConditional(_xOut, Go.pointer(_tx), _mask);
                _p256CopyConditional(_yOut, Go.pointer(_ty), _mask);
                _p256CopyConditional(_zOut, Go.pointer(_tz), _mask);
                _nIsInfinityMask = (_nIsInfinityMask & (_pIsNoninfiniteMask)) ^ ((-1 : GoUnTypedInt));
            });
        };
    }
/**
    // p256FromBig sets out = R*in.
**/
function _p256FromBig(_out:Pointer<GoArray<GoUInt32>>, _in:Pointer<stdgo.math.big.Big.Int_>):Void {
        var _tmp:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.lsh(_in, ((257 : GoUInt)));
        _tmp.value.mod(_tmp, _p256Params.value.p);
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _p256Limbs, _i++, {
                {
                    var _bits:Slice<stdgo.math.big.Big.Word> = _tmp.value.bits();
                    if (_bits.length > ((0 : GoInt))) {
                        _out.value[_i] = _bits[((0 : GoInt))].__t__ & _bottom29Bits;
                    } else {
                        _out.value[_i] = ((0 : GoUInt32));
                    };
                };
                _tmp.value.rsh(_tmp, ((29 : GoUInt)));
                _i++;
                if (_i == _p256Limbs) {
                    break;
                };
                {
                    var _bits:Slice<stdgo.math.big.Big.Word> = _tmp.value.bits();
                    if (_bits.length > ((0 : GoInt))) {
                        _out.value[_i] = _bits[((0 : GoInt))].__t__ & _bottom28Bits;
                    } else {
                        _out.value[_i] = ((0 : GoUInt32));
                    };
                };
                _tmp.value.rsh(_tmp, ((28 : GoUInt)));
            });
        };
    }
/**
    // p256ToBig returns a *big.Int containing the value of in.
**/
function _p256ToBig(_in:Pointer<GoArray<GoUInt32>>):Pointer<stdgo.math.big.Big.Int_> {
        var _result:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()), _tmp:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        _result.value.setInt64(((_in.value[_p256Limbs - ((1 : GoUnTypedInt))] : GoInt64)));
        {
            var _i:GoInt = _p256Limbs - ((2 : GoUnTypedInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if ((_i & ((1 : GoInt))) == ((0 : GoInt))) {
                    _result.value.lsh(_result, ((29 : GoUInt)));
                } else {
                    _result.value.lsh(_result, ((28 : GoUInt)));
                };
                _tmp.value.setInt64(((_in.value[_i] : GoInt64)));
                _result.value.add(_result, _tmp);
            });
        };
        _result.value.mul(_result, _p256RInverse);
        _result.value.mod(_result, _p256Params.value.p);
        return _result;
    }
function _initP256Arch():Void {
        _p256 = new T_p256Curve(_p256Params).__copy__();
    }
function _initP521():Void {
        _p521.curveParams = Go.pointer((({ name : "P-521", p : new Pointer<stdgo.math.big.Big.Int_>().nil(), n : new Pointer<stdgo.math.big.Big.Int_>().nil(), b : new Pointer<stdgo.math.big.Big.Int_>().nil(), gx : new Pointer<stdgo.math.big.Big.Int_>().nil(), gy : new Pointer<stdgo.math.big.Big.Int_>().nil(), bitSize : 0 } : CurveParams)));
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151", ((10 : GoInt)));
            _p521.curveParams.value.p = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449", ((10 : GoInt)));
            _p521.curveParams.value.n = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00", ((16 : GoInt)));
            _p521.curveParams.value.b = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66", ((16 : GoInt)));
            _p521.curveParams.value.gx = __tmp__._0;
        };
        {
            var __tmp__ = Go.pointer(new stdgo.math.big.Big.Int_()).value.setString("11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650", ((16 : GoInt)));
            _p521.curveParams.value.gy = __tmp__._0;
        };
        _p521.curveParams.value.bitSize = ((521 : GoInt));
    }
function _fiatP521ToBigInt(_x:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element>):Pointer<stdgo.math.big.Big.Int_> {
        var _xBytes:Slice<GoUInt8> = _x.value.bytes();
        {
            var _i;
            for (_obj in _xBytes.__slice__(0, _xBytes.length / ((2 : GoInt))).keyValueIterator()) {
                _i = _obj.key;
                {
                    final __tmp__0 = _xBytes[_xBytes.length - _i - ((1 : GoInt))];
                    final __tmp__1 = _xBytes[_i];
                    _xBytes[_i] = __tmp__0;
                    _xBytes[_xBytes.length - _i - ((1 : GoInt))] = __tmp__1;
                };
            };
        };
        return Go.pointer(new stdgo.math.big.Big.Int_()).value.setBytes(_xBytes);
    }
function _bigIntToFiatP521(_x:Pointer<stdgo.math.big.Big.Int_>):Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> {
        var _xBytes:Slice<GoUInt8> = Go.pointer(new stdgo.math.big.Big.Int_()).value.mod(_x, _p521.curveParams.value.p).value.fillBytes(new Slice<GoUInt8>(...[for (i in 0 ... ((((66 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]));
        {
            var _i;
            for (_obj in _xBytes.__slice__(0, _xBytes.length / ((2 : GoInt))).keyValueIterator()) {
                _i = _obj.key;
                {
                    final __tmp__0 = _xBytes[_xBytes.length - _i - ((1 : GoInt))];
                    final __tmp__1 = _xBytes[_i];
                    _xBytes[_i] = __tmp__0;
                    _xBytes[_xBytes.length - _i - ((1 : GoInt))] = __tmp__1;
                };
            };
        };
        var __tmp__ = Go.pointer(new crypto.elliptic.internal.fiat.Fiat.P521Element()).value.setBytes(_xBytes), _x1:Pointer<crypto.elliptic.internal.fiat.Fiat.P521Element> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw "internal error: bigIntToFiatP521";
        };
        return _x1;
    }
class CurveParams_extension_fields {
    public function params(__tmp__):Pointer<CurveParams> return __tmp__.params();
    public function _polynomial(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>):Pointer<stdgo.math.big.Big.Int_> return __tmp__._polynomial(_x);
    public function isOnCurve(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool return __tmp__.isOnCurve(_x, _y);
    public function _affineFromJacobian(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__._affineFromJacobian(_x, _y, _z);
    public function add(__tmp__, _x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.add(_x1, _y1, _x2, _y2);
    public function _addJacobian(__tmp__, _x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _z1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>, _z2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
    public function double(__tmp__, _x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.double(_x1, _y1);
    public function _doubleJacobian(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>, _z:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; var _2 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__._doubleJacobian(_x, _y, _z);
    public function scalarMult(__tmp__, bx:Pointer<stdgo.math.big.Big.Int_>, by:Pointer<stdgo.math.big.Big.Int_>, _k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarMult(bx, by, _k);
    public function scalarBaseMult(__tmp__, _k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarBaseMult(_k);
}
class T_p224Curve_extension_fields {
    public function params(__tmp__):Pointer<CurveParams> return __tmp__.params();
    public function isOnCurve(__tmp__, _bigX:Pointer<stdgo.math.big.Big.Int_>, _bigY:Pointer<stdgo.math.big.Big.Int_>):Bool return __tmp__.isOnCurve(_bigX, _bigY);
    public function add(__tmp__, _bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>, _bigX2:Pointer<stdgo.math.big.Big.Int_>, _bigY2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.add(_bigX1, _bigY1, _bigX2, _bigY2);
    public function double(__tmp__, _bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.double(_bigX1, _bigY1);
    public function scalarMult(__tmp__, _bigX1:Pointer<stdgo.math.big.Big.Int_>, _bigY1:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarMult(_bigX1, _bigY1, _scalar);
    public function scalarBaseMult(__tmp__, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarBaseMult(_scalar);
}
class T_p256Curve_extension_fields {
    public function params(__tmp__):Pointer<CurveParams> return __tmp__.params();
    public function scalarBaseMult(__tmp__, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarBaseMult(_scalar);
    public function scalarMult(__tmp__, _bigX:Pointer<stdgo.math.big.Big.Int_>, _bigY:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarMult(_bigX, _bigY, _scalar);
}
class T_p521Curve_extension_fields {
    public function params(__tmp__):Pointer<CurveParams> return __tmp__.params();
    public function isOnCurve(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Bool return __tmp__.isOnCurve(_x, _y);
    public function _affineFromJacobian(__tmp__, _p:Pointer<T_p521Point>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__._affineFromJacobian(_p);
    public function _jacobianFromAffine(__tmp__, _x:Pointer<stdgo.math.big.Big.Int_>, _y:Pointer<stdgo.math.big.Big.Int_>):Pointer<T_p521Point> return __tmp__._jacobianFromAffine(_x, _y);
    public function add(__tmp__, _x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>, _x2:Pointer<stdgo.math.big.Big.Int_>, _y2:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.add(_x1, _y1, _x2, _y2);
    public function double(__tmp__, _x1:Pointer<stdgo.math.big.Big.Int_>, _y1:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.double(_x1, _y1);
    public function scalarMult(__tmp__, bx:Pointer<stdgo.math.big.Big.Int_>, by:Pointer<stdgo.math.big.Big.Int_>, _scalar:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarMult(bx, by, _scalar);
    public function scalarBaseMult(__tmp__, _k:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Pointer<stdgo.math.big.Big.Int_>; } return __tmp__.scalarBaseMult(_k);
}
class T_p521Point_extension_fields {
    public function _addJacobian(__tmp__, _p1:Pointer<T_p521Point>, _p2:Pointer<T_p521Point>):Pointer<T_p521Point> return __tmp__._addJacobian(_p1, _p2);
    public function _doubleJacobian(__tmp__, _p:Pointer<T_p521Point>):Pointer<T_p521Point> return __tmp__._doubleJacobian(_p);
}
