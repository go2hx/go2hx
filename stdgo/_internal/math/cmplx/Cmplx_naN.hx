package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function naN():stdgo.GoComplex128 {
        var _nan = (stdgo._internal.math.Math_naN.naN() : stdgo.GoFloat64);
        return new stdgo.GoComplex128(_nan, _nan);
    }
