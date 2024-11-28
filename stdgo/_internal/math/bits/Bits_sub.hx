package stdgo._internal.math.bits;
function sub(_x:stdgo.GoUInt, _y:stdgo.GoUInt, _borrow:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } {
        var _diff = (0 : stdgo.GoUInt), _borrowOut = (0 : stdgo.GoUInt);
        if (true) {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub32.sub32((_x : stdgo.GoUInt32), (_y : stdgo.GoUInt32), (_borrow : stdgo.GoUInt32)), _d32:stdgo.GoUInt32 = __tmp__._0, _b32:stdgo.GoUInt32 = __tmp__._1;
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } = { _0 : (_d32 : stdgo.GoUInt), _1 : (_b32 : stdgo.GoUInt) };
                _diff = __tmp__._0;
                _borrowOut = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64((_x : stdgo.GoUInt64), (_y : stdgo.GoUInt64), (_borrow : stdgo.GoUInt64)), _d64:stdgo.GoUInt64 = __tmp__._0, _b64:stdgo.GoUInt64 = __tmp__._1;
        return {
            final __tmp__:{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } = { _0 : (_d64 : stdgo.GoUInt), _1 : (_b64 : stdgo.GoUInt) };
            _diff = __tmp__._0;
            _borrowOut = __tmp__._1;
            __tmp__;
        };
    }
