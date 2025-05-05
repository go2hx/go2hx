package stdgo._internal.math;
function _mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L30"
        if ((((_y == ((0 : stdgo.GoFloat64)) || stdgo._internal.math.Math_isinf.isInf(_x, (0 : stdgo.GoInt)) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_x) : Bool) || stdgo._internal.math.Math_isnan.isNaN(_y) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L31"
            return stdgo._internal.math.Math_nan.naN();
        };
        _y = stdgo._internal.math.Math_abs.abs(_y);
        var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_y), _yfr:stdgo.GoFloat64 = __tmp__._0, _yexp:stdgo.GoInt = __tmp__._1;
        var _r = (_x : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L37"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _r = -_x;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L41"
        while ((_r >= _y : Bool)) {
            var __tmp__ = stdgo._internal.math.Math_frexp.frexp(_r), _rfr:stdgo.GoFloat64 = __tmp__._0, _rexp:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L43"
            if ((_rfr < _yfr : Bool)) {
                _rexp = (_rexp - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _r = (_r - stdgo._internal.math.Math_ldexp.ldexp(_y, (_rexp - _yexp : stdgo.GoInt)) : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L48"
        if ((_x < (0 : stdgo.GoFloat64) : Bool)) {
            _r = -_r;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/mod.go#L51"
        return _r;
    }
