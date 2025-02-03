package stdgo._internal.math.bits;
function add64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64, _carry:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _sum = (0 : stdgo.GoUInt64), _carryOut = (0 : stdgo.GoUInt64);
        _sum = ((_x + _y : stdgo.GoUInt64) + _carry : stdgo.GoUInt64);
        _carryOut = (((((_x & _y : stdgo.GoUInt64)) | ((((_x | _y : stdgo.GoUInt64)) & ((_sum ^ (-1i32 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64)) : stdgo.GoUInt64)) >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return { _0 : _sum, _1 : _carryOut };
    }
