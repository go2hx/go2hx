package stdgo._internal.crypto.internal.edwards25519.field;
function _mul51(_a:stdgo.GoUInt64, _b:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _lo = (0 : stdgo.GoUInt64), _hi = (0 : stdgo.GoUInt64);
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64(_a, (_b : stdgo.GoUInt64)), _mh:stdgo.GoUInt64 = __tmp__._0, _ml:stdgo.GoUInt64 = __tmp__._1;
        _lo = (_ml & (2251799813685247i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _hi = (((_mh << (13i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | ((_ml >> (51i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        return { _0 : _lo, _1 : _hi };
    }
