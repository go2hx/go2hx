package stdgo._internal.math.cmplx;
function _tanSeries(_z:stdgo.GoComplex128):stdgo.GoFloat64 {
        {};
        var _x = (stdgo._internal.math.Math_abs.abs(((2 : stdgo.GoFloat64) * (_z : stdgo.GoComplex128).real : stdgo.GoFloat64)) : stdgo.GoFloat64);
        var _y = (stdgo._internal.math.Math_abs.abs(((2 : stdgo.GoFloat64) * (_z : stdgo.GoComplex128).imag : stdgo.GoFloat64)) : stdgo.GoFloat64);
        _x = stdgo._internal.math.cmplx.Cmplx__reducepi._reducePi(_x);
        _x = (_x * _x : stdgo.GoFloat64);
        _y = (_y * _y : stdgo.GoFloat64);
        var _x2 = (1 : stdgo.GoFloat64);
        var _y2 = (1 : stdgo.GoFloat64);
        var _f = (1 : stdgo.GoFloat64);
        var _rn = (0 : stdgo.GoFloat64);
        var _d = (0 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L233"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L234"
            _rn++;
            _f = (_f * (_rn) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L236"
            _rn++;
            _f = (_f * (_rn) : stdgo.GoFloat64);
            _x2 = (_x2 * (_x) : stdgo.GoFloat64);
            _y2 = (_y2 * (_y) : stdgo.GoFloat64);
            var _t = (_y2 + _x2 : stdgo.GoFloat64);
            _t = (_t / (_f) : stdgo.GoFloat64);
            _d = (_d + (_t) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L244"
            _rn++;
            _f = (_f * (_rn) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L246"
            _rn++;
            _f = (_f * (_rn) : stdgo.GoFloat64);
            _x2 = (_x2 * (_x) : stdgo.GoFloat64);
            _y2 = (_y2 * (_y) : stdgo.GoFloat64);
            _t = (_y2 - _x2 : stdgo.GoFloat64);
            _t = (_t / (_f) : stdgo.GoFloat64);
            _d = (_d + (_t) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L253"
            if (!((stdgo._internal.math.Math_abs.abs((_t / _d : stdgo.GoFloat64)) > (1.1102230246251565e-16 : stdgo.GoFloat64) : Bool))) {
                //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L256"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/tan.go#L259"
        return _d;
    }
