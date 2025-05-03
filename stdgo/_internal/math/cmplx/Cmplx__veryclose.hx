package stdgo._internal.math.cmplx;
function _veryclose(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):Bool {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/cmath_test.go#L899"
        return stdgo._internal.math.cmplx.Cmplx__tolerance._tolerance(_a, _b, (4e-16 : stdgo.GoFloat64));
    }
