package stdgo._internal.math.cmplx;
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L920"
        return stdgo._internal.math.cmplx.Cmplx__ctolerance._cTolerance(_a, _b, _e);
    }
