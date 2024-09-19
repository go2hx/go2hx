package stdgo._internal.math.big;
function _isEven64(_f:stdgo.GoFloat64):Bool {
        return (stdgo._internal.math.Math_float64bits.float64bits(_f) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64));
    }
