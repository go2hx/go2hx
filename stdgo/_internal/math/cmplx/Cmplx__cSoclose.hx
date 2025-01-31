package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
function _cSoclose(_a:stdgo.GoComplex128, _b:stdgo.GoComplex128, _e:stdgo.GoFloat64):Bool {
        return stdgo._internal.math.cmplx.Cmplx__cTolerance._cTolerance(_a, _b, _e);
    }
