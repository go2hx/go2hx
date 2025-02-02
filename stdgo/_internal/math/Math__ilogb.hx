package stdgo._internal.math;
function _ilogb(_x:stdgo.GoFloat64):stdgo.GoInt {
        var __tmp__ = stdgo._internal.math.Math__normalize._normalize(_x), _x:stdgo.GoFloat64 = __tmp__._0, _exp:stdgo.GoInt = __tmp__._1;
        return ((((((stdgo._internal.math.Math_float64bits.float64bits(_x) >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt) - (1023 : stdgo.GoInt) : stdgo.GoInt) + _exp : stdgo.GoInt);
    }
