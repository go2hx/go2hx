package stdgo._internal.math;
function _split(_b:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt32; var _2 : stdgo.GoUInt64; } {
        var _sign = (0 : stdgo.GoUInt32), _exp = (0 : stdgo.GoInt32), _mantissa = (0 : stdgo.GoUInt64);
        _sign = ((_b >> (63i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        _exp = (((_b >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32) & (2047 : stdgo.GoInt32) : stdgo.GoInt32);
        _mantissa = (_b & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_exp == ((0 : stdgo.GoInt32))) {
            var _shift = ((stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_mantissa) - (11 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
            _mantissa = (_mantissa << (_shift) : stdgo.GoUInt64);
            _exp = ((1 : stdgo.GoInt32) - (_shift : stdgo.GoInt32) : stdgo.GoInt32);
        } else {
            _mantissa = (_mantissa | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        return { _0 : _sign, _1 : _exp, _2 : _mantissa };
    }
