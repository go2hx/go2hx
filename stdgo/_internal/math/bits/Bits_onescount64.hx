package stdgo._internal.math.bits;
function onesCount64(_x:stdgo.GoUInt64):stdgo.GoInt {
        {};
        _x = (((_x >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (6148914691236517205i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_x & (6148914691236517205i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (((_x >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (3689348814741910323i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_x & (3689348814741910323i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = ((((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _x : stdgo.GoUInt64)) & (1085102592571150095i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (_x + ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x + ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _x = (_x + ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return ((_x : stdgo.GoInt) & (127 : stdgo.GoInt) : stdgo.GoInt);
    }
