package stdgo._internal.math.bits;
function sub32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _borrow:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _diff = (0 : stdgo.GoUInt32), _borrowOut = (0 : stdgo.GoUInt32);
        _diff = ((_x - _y : stdgo.GoUInt32) - _borrow : stdgo.GoUInt32);
        _borrowOut = ((((((-1 ^ _x) & _y : stdgo.GoUInt32)) | (((-1 ^ (_x ^ _y : stdgo.GoUInt32)) & _diff : stdgo.GoUInt32)) : stdgo.GoUInt32)) >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        return { _0 : _diff, _1 : _borrowOut };
    }
