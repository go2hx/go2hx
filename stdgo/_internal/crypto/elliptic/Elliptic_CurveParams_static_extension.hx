package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.CurveParams_asInterface) class CurveParams_static_extension {
    @:keep
    static public function scalarBaseMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesSpecificCurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarBaseMult(_k);
            };
        };
        return _curve.scalarMult(_curve.gx, _curve.gy, _k);
    }
    @:keep
    static public function scalarMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesSpecificCurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarMult(bx, by, _k);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicIfNotOnCurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), bx, by);
        var bz = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _z = __2, _y = __1, _x = __0;
        for (__1 => _byte in _k) {
            {
                var _bitNum = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_bitNum < (8 : stdgo.GoInt) : Bool), _bitNum++, {
                    {
                        var __tmp__ = _curve._doubleJacobian(_x, _y, _z);
                        _x = __tmp__._0;
                        _y = __tmp__._1;
                        _z = __tmp__._2;
                    };
                    if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = _curve._addJacobian(bx, by, bz, _x, _y, _z);
                            _x = __tmp__._0;
                            _y = __tmp__._1;
                            _z = __tmp__._2;
                        };
                    };
                    _byte = (_byte << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                });
            };
        };
        return _curve._affineFromJacobian(_x, _y, _z);
    }
    @:keep
    static public function _doubleJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        var _delta = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_z, _z);
        _delta.mod(_delta, _curve.p);
        var _gamma = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_y, _y);
        _gamma.mod(_gamma, _curve.p);
        var _alpha = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_x, _delta);
        if (_alpha.sign() == ((-1 : stdgo.GoInt))) {
            _alpha.add(_alpha, _curve.p);
        };
        var _alpha2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).add(_x, _delta);
        _alpha.mul(_alpha, _alpha2);
        _alpha2.set(_alpha);
        _alpha.lsh(_alpha, (1u32 : stdgo.GoUInt));
        _alpha.add(_alpha, _alpha2);
        var _beta = _alpha2.mul(_x, _gamma);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_alpha, _alpha);
        var _beta8 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_beta, (3u32 : stdgo.GoUInt));
        _beta8.mod(_beta8, _curve.p);
        _x3.sub(_x3, _beta8);
        if (_x3.sign() == ((-1 : stdgo.GoInt))) {
            _x3.add(_x3, _curve.p);
        };
        _x3.mod(_x3, _curve.p);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).add(_y, _z);
        _z3.mul(_z3, _z3);
        _z3.sub(_z3, _gamma);
        if (_z3.sign() == ((-1 : stdgo.GoInt))) {
            _z3.add(_z3, _curve.p);
        };
        _z3.sub(_z3, _delta);
        if (_z3.sign() == ((-1 : stdgo.GoInt))) {
            _z3.add(_z3, _curve.p);
        };
        _z3.mod(_z3, _curve.p);
        _beta.lsh(_beta, (2u32 : stdgo.GoUInt));
        _beta.sub(_beta, _x3);
        if (_beta.sign() == ((-1 : stdgo.GoInt))) {
            _beta.add(_beta, _curve.p);
        };
        var _y3 = _alpha.mul(_alpha, _beta);
        _gamma.mul(_gamma, _gamma);
        _gamma.lsh(_gamma, (3u32 : stdgo.GoUInt));
        _gamma.mod(_gamma, _curve.p);
        _y3.sub(_y3, _gamma);
        if (_y3.sign() == ((-1 : stdgo.GoInt))) {
            _y3.add(_y3, _curve.p);
        };
        _y3.mod(_y3, _curve.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    static public function double( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesSpecificCurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.double(_x1, _y1);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicIfNotOnCurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zForAffine._zForAffine(_x1, _y1);
        return ({
            var __tmp__ = _curve._doubleJacobian(_x1, _y1, _z1);
            _curve._affineFromJacobian((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        });
    }
    @:keep
    static public function _addJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
var _z3 = __2, _y3 = __1, _x3 = __0;
        if (_z1.sign() == ((0 : stdgo.GoInt))) {
            _x3.set(_x2);
            _y3.set(_y2);
            _z3.set(_z2);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        if (_z2.sign() == ((0 : stdgo.GoInt))) {
            _x3.set(_x1);
            _y3.set(_y1);
            _z3.set(_z1);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        var _z1z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_z1, _z1);
        _z1z1.mod(_z1z1, _curve.p);
        var _z2z2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_z2, _z2);
        _z2z2.mod(_z2z2, _curve.p);
        var _u1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_x1, _z2z2);
        _u1.mod(_u1, _curve.p);
        var _u2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_x2, _z1z1);
        _u2.mod(_u2, _curve.p);
        var _h = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_u2, _u1);
        var _xEqual = (_h.sign() == ((0 : stdgo.GoInt)) : Bool);
        if (_h.sign() == ((-1 : stdgo.GoInt))) {
            _h.add(_h, _curve.p);
        };
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_h, (1u32 : stdgo.GoUInt));
        _i.mul(_i, _i);
        var _j = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_h, _i);
        var _s1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_y1, _z2);
        _s1.mul(_s1, _z2z2);
        _s1.mod(_s1, _curve.p);
        var _s2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_y2, _z1);
        _s2.mul(_s2, _z1z1);
        _s2.mod(_s2, _curve.p);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).sub(_s2, _s1);
        if (_r.sign() == ((-1 : stdgo.GoInt))) {
            _r.add(_r, _curve.p);
        };
        var _yEqual = (_r.sign() == ((0 : stdgo.GoInt)) : Bool);
        if ((_xEqual && _yEqual : Bool)) {
            return _curve._doubleJacobian(_x1, _y1, _z1);
        };
        _r.lsh(_r, (1u32 : stdgo.GoUInt));
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_u1, _i);
        _x3.set(_r);
        _x3.mul(_x3, _x3);
        _x3.sub(_x3, _j);
        _x3.sub(_x3, _v);
        _x3.sub(_x3, _v);
        _x3.mod(_x3, _curve.p);
        _y3.set(_r);
        _v.sub(_v, _x3);
        _y3.mul(_y3, _v);
        _s1.mul(_s1, _j);
        _s1.lsh(_s1, (1u32 : stdgo.GoUInt));
        _y3.sub(_y3, _s1);
        _y3.mod(_y3, _curve.p);
        _z3.add(_z1, _z2);
        _z3.mul(_z3, _z3);
        _z3.sub(_z3, _z1z1);
        _z3.sub(_z3, _z2z2);
        _z3.mul(_z3, _h);
        _z3.mod(_z3, _curve.p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    static public function add( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesSpecificCurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.add(_x1, _y1, _x2, _y2);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicIfNotOnCurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        stdgo._internal.crypto.elliptic.Elliptic__panicIfNotOnCurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x2, _y2);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zForAffine._zForAffine(_x1, _y1);
        var _z2 = stdgo._internal.crypto.elliptic.Elliptic__zForAffine._zForAffine(_x2, _y2);
        return ({
            var __tmp__ = _curve._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            _curve._affineFromJacobian((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
        });
    }
    @:keep
    static public function _affineFromJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        var _xOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _yOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        if (_z.sign() == ((0 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), _1 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) };
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).modInverse(_z, _curve.p);
        var _zinvsq = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_zinv, _zinv);
        _xOut = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_x, _zinvsq);
        _xOut.mod(_xOut, _curve.p);
        _zinvsq.mul(_zinvsq, _zinv);
        _yOut = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_y, _zinvsq);
        _yOut.mod(_yOut, _curve.p);
        return { _0 : _xOut, _1 : _yOut };
    }
    @:keep
    static public function isOnCurve( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesSpecificCurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_Curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.isOnCurve(_x, _y);
            };
        };
        if (((((_x.sign() < (0 : stdgo.GoInt) : Bool) || (_x.cmp(_curve.p) >= (0 : stdgo.GoInt) : Bool) : Bool) || (_y.sign() < (0 : stdgo.GoInt) : Bool) : Bool) || (_y.cmp(_curve.p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _y2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_y, _y);
        _y2.mod(_y2, _curve.p);
        return _curve._polynomial(_x).cmp(_y2) == ((0 : stdgo.GoInt));
    }
    @:keep
    static public function _polynomial( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).mul(_x, _x);
        _x3.mul(_x3, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_x, (1u32 : stdgo.GoUInt));
        _threeX.add(_threeX, _x);
        _x3.sub(_x3, _threeX);
        _x3.add(_x3, _curve.b);
        _x3.mod(_x3, _curve.p);
        return _x3;
    }
    @:keep
    static public function params( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> = _curve;
        return _curve;
    }
}
