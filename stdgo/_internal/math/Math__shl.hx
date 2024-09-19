package stdgo._internal.math;
function _shl(_u1:stdgo.GoUInt64, _u2:stdgo.GoUInt64, _n:stdgo.GoUInt):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _r1 = (0 : stdgo.GoUInt64), _r2 = (0 : stdgo.GoUInt64);
        _r1 = (((_u1 << _n : stdgo.GoUInt64) | (_u2 >> (((64u32 : stdgo.GoUInt) - _n : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_u2 << ((_n - (64u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _r2 = (_u2 << _n : stdgo.GoUInt64);
        return { _0 : _r1, _1 : _r2 };
    }
