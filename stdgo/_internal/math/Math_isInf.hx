package stdgo._internal.math;
import stdgo._internal.math.bits.Bits;
function isInf(_f:stdgo.GoFloat64, _sign:stdgo.GoInt):Bool return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;
