package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function isInf(_x:stdgo.GoComplex128):Bool {
        if ((stdgo._internal.math.Math_isInf.isInf((_x : stdgo.GoComplex128).real, (0 : stdgo.GoInt)) || stdgo._internal.math.Math_isInf.isInf((_x : stdgo.GoComplex128).imag, (0 : stdgo.GoInt)) : Bool)) {
            return true;
        };
        return false;
    }
