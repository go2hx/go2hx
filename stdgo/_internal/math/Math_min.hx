package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function min(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
        if (_x < 0 && !std.Math.isFinite(_x.toBasic()) || _y < 0 && !std.Math.isFinite(_y.toBasic())) return stdgo._internal.math.Math_inf.inf(-1);
        if (_x == 0.0 && stdgo._internal.math.Math_signbit.signbit(_x) && !stdgo._internal.math.Math_isNaN.isNaN(_y) || _y == 0.0 && stdgo._internal.math.Math_signbit.signbit(_y) && !stdgo._internal.math.Math_isNaN.isNaN(_x)) return stdgo._internal.math.Math_negZero.negZero();
        if (stdgo._internal.math.Math_isNaN.isNaN(_x) || stdgo._internal.math.Math_isNaN.isNaN(_y)) return stdgo._internal.math.Math_naN.naN();
        return std.Math.min(_x.toBasic(), _y.toBasic());
    }
