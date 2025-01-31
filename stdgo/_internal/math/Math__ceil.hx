package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function _ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        return -stdgo._internal.math.Math_floor.floor(-_x);
    }
