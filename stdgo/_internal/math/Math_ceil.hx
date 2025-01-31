package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function ceil(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (!std.Math.isFinite(_x.toBasic()) || std.Math.isNaN(_x.toBasic())) return _x;
        if (_x == 0.0 && stdgo._internal.math.Math_signbit.signbit(_x)) return stdgo._internal.math.Math_negZero.negZero();
        if (_x > -1.0 && _x < 0.0) {
            return stdgo._internal.math.Math_negZero.negZero();
        };
        return std.Math.ceil(_x.toBasic());
    }
