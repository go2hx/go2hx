package stdgo._internal.runtime.internal.sys;
function bswap64(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        var _c8 = ((71777214294589695i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _a = ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & _c8 : stdgo.GoUInt64);
        var _b = (((_x & _c8 : stdgo.GoUInt64)) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (_a | _b : stdgo.GoUInt64);
        var _c16 = ((281470681808895i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _a = ((_x >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & _c16 : stdgo.GoUInt64);
        _b = (((_x & _c16 : stdgo.GoUInt64)) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (_a | _b : stdgo.GoUInt64);
        var _c32 = ((4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _a = ((_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) & _c32 : stdgo.GoUInt64);
        _b = (((_x & _c32 : stdgo.GoUInt64)) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _x = (_a | _b : stdgo.GoUInt64);
        return _x;
    }
