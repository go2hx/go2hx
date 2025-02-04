package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.CurveParams_asInterface) class CurveParams_static_extension {
    @:keep
    @:tdfield
    static public function scalarBaseMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarBaseMult(_k);
            };
        };
        return @:check2r _curve.scalarMult((@:checkr _curve ?? throw "null pointer dereference").gx, (@:checkr _curve ?? throw "null pointer dereference").gy, _k);
    }
    @:keep
    @:tdfield
    static public function scalarMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.scalarMult(bx, by, _k);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), bx, by);
        var bz = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _z = __2, _y = __1, _x = __0;
        for (__1 => _byte in _k) {
            {
                var _bitNum = (0 : stdgo.GoInt);
                while ((_bitNum < (8 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = @:check2r _curve._doubleJacobian(_x, _y, _z);
                        _x = @:tmpset0 __tmp__._0;
                        _y = @:tmpset0 __tmp__._1;
                        _z = @:tmpset0 __tmp__._2;
                    };
if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = @:check2r _curve._addJacobian(bx, by, bz, _x, _y, _z);
                            _x = @:tmpset0 __tmp__._0;
                            _y = @:tmpset0 __tmp__._1;
                            _z = @:tmpset0 __tmp__._2;
                        };
                    };
_byte = (_byte << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                    _bitNum++;
                };
            };
        };
        return @:check2r _curve._affineFromJacobian(_x, _y, _z);
    }
    @:keep
    @:tdfield
    static public function _doubleJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _delta = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z, _z);
        @:check2r _delta.mod(_delta, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _gamma = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _y);
        @:check2r _gamma.mod(_gamma, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _alpha = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_x, _delta);
        if (@:check2r _alpha.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _alpha.add(_alpha, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _alpha2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_x, _delta);
        @:check2r _alpha.mul(_alpha, _alpha2);
        @:check2r _alpha2.set(_alpha);
        @:check2r _alpha.lsh(_alpha, (1u32 : stdgo.GoUInt));
        @:check2r _alpha.add(_alpha, _alpha2);
        var _beta = @:check2r _alpha2.mul(_x, _gamma);
        var _x3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_alpha, _alpha);
        var _beta8 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_beta, (3u32 : stdgo.GoUInt));
        @:check2r _beta8.mod(_beta8, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _x3.sub(_x3, _beta8);
        if (@:check2r _x3.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _x3.add(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        @:check2r _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _z3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_y, _z);
        @:check2r _z3.mul(_z3, _z3);
        @:check2r _z3.sub(_z3, _gamma);
        if (@:check2r _z3.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _z3.add(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        @:check2r _z3.sub(_z3, _delta);
        if (@:check2r _z3.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _z3.add(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        @:check2r _z3.mod(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _beta.lsh(_beta, (2u32 : stdgo.GoUInt));
        @:check2r _beta.sub(_beta, _x3);
        if (@:check2r _beta.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _beta.add(_beta, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _y3 = @:check2r _alpha.mul(_alpha, _beta);
        @:check2r _gamma.mul(_gamma, _gamma);
        @:check2r _gamma.lsh(_gamma, (3u32 : stdgo.GoUInt));
        @:check2r _gamma.mod(_gamma, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _y3.sub(_y3, _gamma);
        if (@:check2r _y3.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _y3.add(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        @:check2r _y3.mod(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    @:tdfield
    static public function double( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.double(_x1, _y1);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x1, _y1);
        return ({
            var __f__ = @:check2r _curve._affineFromJacobian;
            var __tmp__ = @:check2r _curve._doubleJacobian(_x1, _y1, _z1);
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        });
    }
    @:keep
    @:tdfield
    static public function _addJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _z3 = __2, _y3 = __1, _x3 = __0;
        if (@:check2r _z1.sign() == ((0 : stdgo.GoInt))) {
            @:check2r _x3.set(_x2);
            @:check2r _y3.set(_y2);
            @:check2r _z3.set(_z2);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        if (@:check2r _z2.sign() == ((0 : stdgo.GoInt))) {
            @:check2r _x3.set(_x1);
            @:check2r _y3.set(_y1);
            @:check2r _z3.set(_z1);
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        var _z1z1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z1, _z1);
        @:check2r _z1z1.mod(_z1z1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _z2z2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z2, _z2);
        @:check2r _z2z2.mod(_z2z2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _u1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x1, _z2z2);
        @:check2r _u1.mod(_u1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _u2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x2, _z1z1);
        @:check2r _u2.mod(_u2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _h = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_u2, _u1);
        var _xEqual = (@:check2r _h.sign() == ((0 : stdgo.GoInt)) : Bool);
        if (@:check2r _h.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _h.add(_h, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _i = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_h, (1u32 : stdgo.GoUInt));
        @:check2r _i.mul(_i, _i);
        var _j = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_h, _i);
        var _s1 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y1, _z2);
        @:check2r _s1.mul(_s1, _z2z2);
        @:check2r _s1.mod(_s1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _s2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y2, _z1);
        @:check2r _s2.mul(_s2, _z1z1);
        @:check2r _s2.mod(_s2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _r = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_s2, _s1);
        if (@:check2r _r.sign() == ((-1 : stdgo.GoInt))) {
            @:check2r _r.add(_r, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _yEqual = (@:check2r _r.sign() == ((0 : stdgo.GoInt)) : Bool);
        if ((_xEqual && _yEqual : Bool)) {
            return @:check2r _curve._doubleJacobian(_x1, _y1, _z1);
        };
        @:check2r _r.lsh(_r, (1u32 : stdgo.GoUInt));
        var _v = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_u1, _i);
        @:check2r _x3.set(_r);
        @:check2r _x3.mul(_x3, _x3);
        @:check2r _x3.sub(_x3, _j);
        @:check2r _x3.sub(_x3, _v);
        @:check2r _x3.sub(_x3, _v);
        @:check2r _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _y3.set(_r);
        @:check2r _v.sub(_v, _x3);
        @:check2r _y3.mul(_y3, _v);
        @:check2r _s1.mul(_s1, _j);
        @:check2r _s1.lsh(_s1, (1u32 : stdgo.GoUInt));
        @:check2r _y3.sub(_y3, _s1);
        @:check2r _y3.mod(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _z3.add(_z1, _z2);
        @:check2r _z3.mul(_z3, _z3);
        @:check2r _z3.sub(_z3, _z1z1);
        @:check2r _z3.sub(_z3, _z2z2);
        @:check2r _z3.mul(_z3, _h);
        @:check2r _z3.mod(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    @:tdfield
    static public function add( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.add(_x1, _y1, _x2, _y2);
            };
        };
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x2, _y2);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x1, _y1);
        var _z2 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x2, _y2);
        return ({
            var __f__ = @:check2r _curve._affineFromJacobian;
            var __tmp__ = @:check2r _curve._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        });
    }
    @:keep
    @:tdfield
    static public function _affineFromJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _xOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _yOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        if (@:check2r _z.sign() == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _1 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) };
                _xOut = __tmp__._0;
                _yOut = __tmp__._1;
                __tmp__;
            };
        };
        var _zinv = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_z, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _zinvsq = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_zinv, _zinv);
        _xOut = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x, _zinvsq);
        @:check2r _xOut.mod(_xOut, (@:checkr _curve ?? throw "null pointer dereference").p);
        @:check2r _zinvsq.mul(_zinvsq, _zinv);
        _yOut = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _zinvsq);
        @:check2r _yOut.mod(_yOut, (@:checkr _curve ?? throw "null pointer dereference").p);
        return { _0 : _xOut, _1 : _yOut };
    }
    @:keep
    @:tdfield
    static public function isOnCurve( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _specific.isOnCurve(_x, _y);
            };
        };
        if (((((@:check2r _x.sign() < (0 : stdgo.GoInt) : Bool) || (@:check2r _x.cmp((@:checkr _curve ?? throw "null pointer dereference").p) >= (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r _y.sign() < (0 : stdgo.GoInt) : Bool) : Bool) || (@:check2r _y.cmp((@:checkr _curve ?? throw "null pointer dereference").p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return false;
        };
        var _y2 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _y);
        @:check2r _y2.mod(_y2, (@:checkr _curve ?? throw "null pointer dereference").p);
        return @:check2r @:check2r _curve._polynomial(_x).cmp(_y2) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _polynomial( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _x3 = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x, _x);
        @:check2r _x3.mul(_x3, _x);
        var _threeX = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, (1u32 : stdgo.GoUInt));
        @:check2r _threeX.add(_threeX, _x);
        @:check2r _x3.sub(_x3, _threeX);
        @:check2r _x3.add(_x3, (@:checkr _curve ?? throw "null pointer dereference").b);
        @:check2r _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        return _x3;
    }
    @:keep
    @:tdfield
    static public function params( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        return _curve;
    }
}
