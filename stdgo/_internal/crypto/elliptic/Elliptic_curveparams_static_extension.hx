package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.CurveParams_asInterface) class CurveParams_static_extension {
    @:keep
    @:tdfield
    static public function scalarBaseMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L320"
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L321"
                return _specific.scalarBaseMult(_k);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L324"
        return _curve.scalarMult((@:checkr _curve ?? throw "null pointer dereference").gx, (@:checkr _curve ?? throw "null pointer dereference").gy, _k);
    }
    @:keep
    @:tdfield
    static public function scalarMult( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L290"
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L291"
                return _specific.scalarMult(bx, by, _k);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L293"
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), bx, by);
        var bz = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _z = __2, _y = __1, _x = __0;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L298"
        for (__1 => _byte in _k) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L299"
            {
                var _bitNum = (0 : stdgo.GoInt);
                while ((_bitNum < (8 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _curve._doubleJacobian(_x, _y, _z);
                        _x = @:tmpset0 __tmp__._0;
                        _y = @:tmpset0 __tmp__._1;
                        _z = @:tmpset0 __tmp__._2;
                    };
//"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L301"
                    if ((_byte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = _curve._addJacobian(bx, by, bz, _x, _y, _z);
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
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L308"
        return _curve._affineFromJacobian(_x, _y, _z);
    }
    @:keep
    @:tdfield
    static public function _doubleJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _delta = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L225"
        _delta.mod(_delta, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _gamma = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L227"
        _gamma.mod(_gamma, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _alpha = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_x, _delta);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L229"
        if (_alpha.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L230"
            _alpha.add(_alpha, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _alpha2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_x, _delta);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L233"
        _alpha.mul(_alpha, _alpha2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L234"
        _alpha2.set(_alpha);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L235"
        _alpha.lsh(_alpha, (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L236"
        _alpha.add(_alpha, _alpha2);
        var _beta = _alpha2.mul(_x, _gamma);
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_alpha, _alpha);
        var _beta8 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_beta, (3u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L242"
        _beta8.mod(_beta8, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L243"
        _x3.sub(_x3, _beta8);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L244"
        if (_x3.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L245"
            _x3.add(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L247"
        _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _z3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).add(_y, _z);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L250"
        _z3.mul(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L251"
        _z3.sub(_z3, _gamma);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L252"
        if (_z3.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L253"
            _z3.add(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L255"
        _z3.sub(_z3, _delta);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L256"
        if (_z3.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L257"
            _z3.add(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L259"
        _z3.mod(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L261"
        _beta.lsh(_beta, (2u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L262"
        _beta.sub(_beta, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L263"
        if (_beta.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L264"
            _beta.add(_beta, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _y3 = _alpha.mul(_alpha, _beta);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L268"
        _gamma.mul(_gamma, _gamma);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L269"
        _gamma.lsh(_gamma, (3u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L270"
        _gamma.mod(_gamma, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L272"
        _y3.sub(_y3, _gamma);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L273"
        if (_y3.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L274"
            _y3.add(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L276"
        _y3.mod(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L278"
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    @:tdfield
    static public function double( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L211"
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L212"
                return _specific.double(_x1, _y1);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L214"
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x1, _y1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L217"
        return ({
            @:tupleArg var __tmp__ = _curve._doubleJacobian(_x1, _y1, _z1);
            var __f__ = _curve._affineFromJacobian;
            var __tmp__ = _curve._doubleJacobian(_x1, _y1, _z1);
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        });
    }
    @:keep
    @:tdfield
    static public function _addJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var __0 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), __2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
var _z3 = __2, _y3 = __1, _x3 = __0;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L129"
        if (_z1.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L130"
            _x3.set(_x2);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L131"
            _y3.set(_y2);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L132"
            _z3.set(_z2);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L133"
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L135"
        if (_z2.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L136"
            _x3.set(_x1);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L137"
            _y3.set(_y1);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L138"
            _z3.set(_z1);
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L139"
            return { _0 : _x3, _1 : _y3, _2 : _z3 };
        };
        var _z1z1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z1, _z1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L143"
        _z1z1.mod(_z1z1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _z2z2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_z2, _z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L145"
        _z2z2.mod(_z2z2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _u1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x1, _z2z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L148"
        _u1.mod(_u1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _u2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x2, _z1z1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L150"
        _u2.mod(_u2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _h = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_u2, _u1);
        var _xEqual = (_h.sign() == ((0 : stdgo.GoInt)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L153"
        if (_h.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L154"
            _h.add(_h, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_h, (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L157"
        _i.mul(_i, _i);
        var _j = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_h, _i);
        var _s1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y1, _z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L161"
        _s1.mul(_s1, _z2z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L162"
        _s1.mod(_s1, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _s2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y2, _z1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L164"
        _s2.mul(_s2, _z1z1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L165"
        _s2.mod(_s2, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).sub(_s2, _s1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L167"
        if (_r.sign() == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L168"
            _r.add(_r, (@:checkr _curve ?? throw "null pointer dereference").p);
        };
        var _yEqual = (_r.sign() == ((0 : stdgo.GoInt)) : Bool);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L171"
        if ((_xEqual && _yEqual : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L172"
            return _curve._doubleJacobian(_x1, _y1, _z1);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L174"
        _r.lsh(_r, (1u32 : stdgo.GoUInt));
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_u1, _i);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L177"
        _x3.set(_r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L178"
        _x3.mul(_x3, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L179"
        _x3.sub(_x3, _j);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L180"
        _x3.sub(_x3, _v);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L181"
        _x3.sub(_x3, _v);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L182"
        _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L184"
        _y3.set(_r);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L185"
        _v.sub(_v, _x3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L186"
        _y3.mul(_y3, _v);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L187"
        _s1.mul(_s1, _j);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L188"
        _s1.lsh(_s1, (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L189"
        _y3.sub(_y3, _s1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L190"
        _y3.mod(_y3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L192"
        _z3.add(_z1, _z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L193"
        _z3.mul(_z3, _z3);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L194"
        _z3.sub(_z3, _z1z1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L195"
        _z3.sub(_z3, _z2z2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L196"
        _z3.mul(_z3, _h);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L197"
        _z3.mod(_z3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L199"
        return { _0 : _x3, _1 : _y3, _2 : _z3 };
    }
    @:keep
    @:tdfield
    static public function add( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L113"
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L114"
                return _specific.add(_x1, _y1, _x2, _y2);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L116"
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x1, _y1);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L117"
        stdgo._internal.crypto.elliptic.Elliptic__panicifnotoncurve._panicIfNotOnCurve(stdgo.Go.asInterface(_curve), _x2, _y2);
        var _z1 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x1, _y1);
        var _z2 = stdgo._internal.crypto.elliptic.Elliptic__zforaffine._zForAffine(_x2, _y2);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L121"
        return ({
            @:tupleArg var __tmp__ = _curve._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            var __f__ = _curve._affineFromJacobian;
            var __tmp__ = _curve._addJacobian(_x1, _y1, _z1, _x2, _y2, _z2);
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (__tmp__._2 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        });
    }
    @:keep
    @:tdfield
    static public function _affineFromJacobian( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _z:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _xOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _yOut = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L89"
        if (_z.sign() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L90"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } = { _0 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _1 : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) };
                _xOut = __tmp__._0;
                _yOut = __tmp__._1;
                __tmp__;
            };
        };
        var _zinv = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).modInverse(_z, (@:checkr _curve ?? throw "null pointer dereference").p);
        var _zinvsq = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_zinv, _zinv);
        _xOut = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x, _zinvsq);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L97"
        _xOut.mod(_xOut, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L98"
        _zinvsq.mul(_zinvsq, _zinv);
        _yOut = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _zinvsq);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L100"
        _yOut.mod(_yOut, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L101"
        return { _0 : _xOut, _1 : _yOut };
    }
    @:keep
    @:tdfield
    static public function isOnCurve( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L59"
        {
            var __tmp__ = stdgo._internal.crypto.elliptic.Elliptic__matchesspecificcurve._matchesSpecificCurve(_curve), _specific:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L60"
                return _specific.isOnCurve(_x, _y);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L63"
        if (((((_x.sign() < (0 : stdgo.GoInt) : Bool) || (_x.cmp((@:checkr _curve ?? throw "null pointer dereference").p) >= (0 : stdgo.GoInt) : Bool) : Bool) || (_y.sign() < (0 : stdgo.GoInt) : Bool) : Bool) || (_y.cmp((@:checkr _curve ?? throw "null pointer dereference").p) >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L65"
            return false;
        };
        var _y2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_y, _y);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L70"
        _y2.mod(_y2, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L72"
        return _curve._polynomial(_x).cmp(_y2) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _polynomial( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        var _x3 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).mul(_x, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L38"
        _x3.mul(_x3, _x);
        var _threeX = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_x, (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L41"
        _threeX.add(_threeX, _x);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L43"
        _x3.sub(_x3, _threeX);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L44"
        _x3.add(_x3, (@:checkr _curve ?? throw "null pointer dereference").b);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L45"
        _x3.mod(_x3, (@:checkr _curve ?? throw "null pointer dereference").p);
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L47"
        return _x3;
    }
    @:keep
    @:tdfield
    static public function params( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> = _curve;
        //"file:///home/runner/.go/go1.21.3/src/crypto/elliptic/params.go#L25"
        return _curve;
    }
}
