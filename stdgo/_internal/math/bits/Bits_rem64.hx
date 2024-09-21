package stdgo._internal.math.bits;
function rem64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoUInt64 {
        var __tmp__ = stdgo._internal.math.bits.Bits_div64.div64((_hi % _y : stdgo.GoUInt64), _lo, _y), __0:stdgo.GoUInt64 = __tmp__._0, _rem:stdgo.GoUInt64 = __tmp__._1;
        return _rem;
    }
