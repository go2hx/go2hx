package stdgo._internal.math.cmplx;
function abs(_x:stdgo.GoComplex128):stdgo.GoFloat64 {
        return stdgo._internal.math.Math_hypot.hypot(_x.real, _x.imag);
    }