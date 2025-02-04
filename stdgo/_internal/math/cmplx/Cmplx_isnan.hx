package stdgo._internal.math.cmplx;
function isNaN(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isinf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            return false;
        } else if ((stdgo._internal.math.Math_isnan.isNaN((_x : stdgo.GoComplex128).real) || stdgo._internal.math.Math_isnan.isNaN((_x : stdgo.GoComplex128).imag) : Bool)) {
            return true;
        };
        return false;
    }
