package stdgo._internal.math.bits;
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _sum = (0 : stdgo.GoUInt32), _carryOut = (0 : stdgo.GoUInt32);
        var _sum64 = (((_x : stdgo.GoUInt64) + (_y : stdgo.GoUInt64) : stdgo.GoUInt64) + (_carry : stdgo.GoUInt64) : stdgo.GoUInt64);
        _sum = (_sum64 : stdgo.GoUInt32);
        _carryOut = ((_sum64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        return { _0 : _sum, _1 : _carryOut };
    }
