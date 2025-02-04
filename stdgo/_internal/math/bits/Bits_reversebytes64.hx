package stdgo._internal.math.bits;
function reverseBytes64(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        {};
        _x = (((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (71777214294589695i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_x & (71777214294589695i64 : stdgo.GoUInt64) : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & (281470681808895i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_x & (281470681808895i64 : stdgo.GoUInt64) : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        return ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_x << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
