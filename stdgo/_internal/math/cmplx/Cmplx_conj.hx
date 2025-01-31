package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function conj(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return new stdgo.GoComplex128((_x : stdgo.GoComplex128).real, -(_x : stdgo.GoComplex128).imag);
    }
