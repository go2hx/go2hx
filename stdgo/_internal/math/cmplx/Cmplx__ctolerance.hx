package stdgo._internal.math.cmplx;
function _cTolerance(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool {
        var _d = (stdgo._internal.math.cmplx.Cmplx_abs.abs((_a - _b : stdgo.GoComplex128)) : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L912"
        if (_b != (((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64)))) {
            _e = (_e * stdgo._internal.math.cmplx.Cmplx_abs.abs(_b) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L914"
            if ((_e < (0 : stdgo.GoFloat64) : Bool)) {
                _e = -_e;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L918"
        return (_d < _e : Bool);
    }
