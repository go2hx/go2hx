package stdgo._internal.math.cmplx;
function phase(_x:stdgo.GoComplex128):stdgo.GoFloat64 {
        return stdgo._internal.math.Math_atan2.atan2((_x : stdgo.GoComplex128).imag, (_x : stdgo.GoComplex128).real);
    }
