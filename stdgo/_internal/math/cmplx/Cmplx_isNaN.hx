package stdgo._internal.math.cmplx;
function isNaN(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isInf.isInf(_x.real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf(_x.imag, (0 : stdgo.GoInt)) : Bool)) {
            return false;
        } else if ((stdgo._internal.math.Math_isNaN.isNaN(_x.real) || stdgo._internal.math.Math_isNaN.isNaN(_x.imag) : Bool)) {
            return true;
        };
        return false;
    }
