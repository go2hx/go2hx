package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function log(_x:stdgo.GoComplex128):stdgo.GoComplex128 {
        return new stdgo.GoComplex128(stdgo._internal.math.Math_log.log(stdgo._internal.math.cmplx.Cmplx_abs.abs(_x)), stdgo._internal.math.cmplx.Cmplx_phase.phase(_x));
    }
