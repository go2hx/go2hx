package stdgo._internal.math;
function copysign(_f:stdgo.GoFloat64, _sign:stdgo.GoFloat64):stdgo.GoFloat64 {
        {};
        //"file:///home/runner/.go/go1.21.3/src/math/copysign.go#L11"
        return stdgo._internal.math.Math_float64frombits.float64frombits(((stdgo._internal.math.Math_float64bits.float64bits(_f) & (((-9223372036854775808i64 : stdgo.GoUInt64) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64) | (stdgo._internal.math.Math_float64bits.float64bits(_sign) & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64));
    }
