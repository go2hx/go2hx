package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function inf():stdgo.GoComplex128 {
        var _inf = (stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt)) : stdgo.GoFloat64);
        return new stdgo.GoComplex128(_inf, _inf);
    }
