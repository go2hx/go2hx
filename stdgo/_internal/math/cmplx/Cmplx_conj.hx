package stdgo._internal.math.cmplx;
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        //"file:///home/runner/.go/go1.21.3/src/math/cmplx/conj.go#L8"
        return new stdgo.GoComplex128((_x : stdgo.GoComplex128).real, -(_x : stdgo.GoComplex128).imag);
    }
