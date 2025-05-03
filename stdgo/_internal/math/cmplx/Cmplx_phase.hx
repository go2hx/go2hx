package stdgo._internal.math.cmplx;
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/phase.go#L11"
        return stdgo._internal.math.Math_atan2.atan2((_x : stdgo.GoComplex128).imag, (_x : stdgo.GoComplex128).real);
    }
