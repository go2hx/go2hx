package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function isNaN(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isInf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            return false;
        } else if ((stdgo._internal.math.Math_isNaN.isNaN((_x : stdgo.GoComplex128).real) || stdgo._internal.math.Math_isNaN.isNaN((_x : stdgo.GoComplex128).imag) : Bool)) {
            return true;
        };
        return false;
    }
