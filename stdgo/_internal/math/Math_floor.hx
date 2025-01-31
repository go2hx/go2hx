package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function floor(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        return std.Math.ffloor(_x.toBasic());
    }
