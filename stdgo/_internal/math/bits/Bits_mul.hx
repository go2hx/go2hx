package stdgo._internal.math.bits;
function mul(_x:stdgo.GoUInt, _y:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
        var _hi = (0 : stdgo.GoUInt), _lo = (0 : stdgo.GoUInt);
        if (true) {
            var __tmp__ = stdgo._internal.math.bits.Bits_mul32.mul32((_x : stdgo.GoUInt32), (_y : stdgo.GoUInt32)), _h:stdgo.GoUInt32 = __tmp__._0, _l:stdgo.GoUInt32 = __tmp__._1;
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } = { _0 : (_h : stdgo.GoUInt), _1 : (_l : stdgo.GoUInt) };
                _hi = __tmp__._0;
                _lo = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_mul64.mul64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64)), _h:stdgo.GoUInt64 = __tmp__._0, _l:stdgo.GoUInt64 = __tmp__._1;
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } = { _0 : (_h : stdgo.GoUInt), _1 : (_l : stdgo.GoUInt) };
            _hi = __tmp__._0;
            _lo = __tmp__._1;
            __tmp__;
        };
    }
