package stdgo._internal.math.cmplx;
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return new stdgo.GoComplex128((_x : stdgo.GoComplex128).real, -(_x : stdgo.GoComplex128).imag);
    }
