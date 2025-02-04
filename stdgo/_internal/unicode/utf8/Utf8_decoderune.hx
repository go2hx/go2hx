package stdgo._internal.unicode.utf8;
function decodeRune(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        var _r = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt);
        var _n = (_p.length : stdgo.GoInt);
        if ((_n < (1 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _p0 = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _x = (stdgo._internal.unicode.utf8.Utf8__first._first[(_p0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_x >= (240 : stdgo.GoUInt8) : Bool)) {
            var _mask = (((_x : stdgo.GoInt32) << (31i64 : stdgo.GoUInt64) : stdgo.GoInt32) >> (31i64 : stdgo.GoUInt64) : stdgo.GoInt32);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (((_p[(0 : stdgo.GoInt)] : stdgo.GoInt32) & ((_mask ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32) | ((65533 : stdgo.GoInt32) & _mask : stdgo.GoInt32) : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _sz = ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        var _accept = (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
        if ((_n < _sz : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _b1 = (_p[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b1 < _accept._lo : Bool) || (_accept._hi < _b1 : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        if ((_sz <= (2 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : ((((_p0 & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) | ((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (2 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _b2 = (_p[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b2 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _b2 : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        if ((_sz <= (3 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (((((_p0 & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_b2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (3 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        var _b3 = (_p[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
        if (((_b3 < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _b3 : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : (65533 : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
                _r = __tmp__._0;
                _size = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } = { _0 : ((((((_p0 & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (18i64 : stdgo.GoUInt64) : stdgo.GoInt32) | (((_b1 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (12i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | (((_b2 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32) | ((_b3 & (63 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) : stdgo.GoInt32), _1 : (4 : stdgo.GoInt) };
            _r = __tmp__._0;
            _size = __tmp__._1;
            __tmp__;
        };
    }
