package stdgo._internal.math.bits;
function reverse64(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        {};
        _x = (((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (6148914691236517205i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_x & (6148914691236517205i64 : stdgo.GoUInt64) : stdgo.GoUInt64) << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (((_x >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (3689348814741910323i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_x & (3689348814741910323i64 : stdgo.GoUInt64) : stdgo.GoUInt64) << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (1085102592571150095i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_x & (1085102592571150095i64 : stdgo.GoUInt64) : stdgo.GoUInt64) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        return stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64(_x);
    }
