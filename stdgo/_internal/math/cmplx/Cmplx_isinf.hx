package stdgo._internal.math.cmplx;
function isInf(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            return true;
        };
        return false;
    }
