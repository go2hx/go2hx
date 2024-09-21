package stdgo._internal.math.bits;
function sub64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _borrow:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _diff = (0 : stdgo.GoUInt64), _borrowOut = (0 : stdgo.GoUInt64);
        _diff = ((_x - _y : stdgo.GoUInt64) - _borrow : stdgo.GoUInt64);
        _borrowOut = ((((((-1 ^ _x) & _y : stdgo.GoUInt64)) | (((-1 ^ (_x ^ _y : stdgo.GoUInt64)) & _diff : stdgo.GoUInt64)) : stdgo.GoUInt64)) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return { _0 : _diff, _1 : _borrowOut };
    }
