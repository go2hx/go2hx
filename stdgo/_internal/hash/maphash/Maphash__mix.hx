package stdgo._internal.hash.maphash;
function _mix(_a:stdgo.GoUInt64, _b:stdgo.GoUInt64):stdgo.GoUInt64 {
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_a, _b), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        return (_hi ^ _lo : stdgo.GoUInt64);
    }
