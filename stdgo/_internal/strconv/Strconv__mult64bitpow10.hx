package stdgo._internal.strconv;
function _mult64bitPow10(_m:stdgo.GoUInt32, _e2:stdgo.GoInt, _q:stdgo.GoInt):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _resM = (0 : stdgo.GoUInt32), _resE = (0 : stdgo.GoInt), _exact = false;
        if (_q == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (_m << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : (_e2 - (6 : stdgo.GoInt) : stdgo.GoInt), _2 : true };
                _resM = __tmp__._0;
                _resE = __tmp__._1;
                _exact = __tmp__._2;
                __tmp__;
            };
        };
        if (((_q < (-348 : stdgo.GoInt) : Bool) || ((347 : stdgo.GoInt) < _q : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("mult64bitPow10: power of 10 is out of range" : stdgo.GoString));
        };
        var _pow = (stdgo._internal.strconv.Strconv__detailedpowersoften._detailedPowersOfTen[(_q - (-348 : stdgo.GoInt) : stdgo.GoInt)][(1 : stdgo.GoInt)] : stdgo.GoUInt64);
        if ((_q < (0 : stdgo.GoInt) : Bool)) {
            _pow = (_pow + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_m : stdgo.GoUInt64), _pow), _hi:stdgo.GoUInt64 = __tmp__._0, _lo:stdgo.GoUInt64 = __tmp__._1;
        _e2 = (_e2 + (((stdgo._internal.strconv.Strconv__mulbylog10log2._mulByLog10Log2(_q) - (63 : stdgo.GoInt) : stdgo.GoInt) + (57 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (((_hi << (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo >> (57i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), _1 : _e2, _2 : (_lo << (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == ((0i64 : stdgo.GoUInt64)) };
            _resM = __tmp__._0;
            _resE = __tmp__._1;
            _exact = __tmp__._2;
            __tmp__;
        };
    }
