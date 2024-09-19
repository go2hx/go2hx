package stdgo._internal.math;
function isInf(_f:stdgo.GoFloat64, _sign:stdgo.GoInt):Bool return _sign.toBasic() >= 0 && _f == std.Math.POSITIVE_INFINITY || _sign.toBasic() <= 0 && _f == std.Math.NEGATIVE_INFINITY;
