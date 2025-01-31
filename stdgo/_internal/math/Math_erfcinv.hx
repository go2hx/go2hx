package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function erfcinv(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return stdgo._internal.math.Math_erfinv.erfinv(((1 : stdgo.GoFloat64) - _x : stdgo.GoFloat64));
    }
