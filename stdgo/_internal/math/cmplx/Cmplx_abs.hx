package stdgo._internal.math.cmplx;
function abs(_x:stdgo.GoComplex128):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/abs.go#L13"
        return stdgo._internal.math.Math_hypot.hypot((_x : stdgo.GoComplex128).real, (_x : stdgo.GoComplex128).imag);
    }
