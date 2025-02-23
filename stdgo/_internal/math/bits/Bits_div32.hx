package stdgo._internal.math.bits;
function div32(_hi:stdgo.GoUInt32, _lo:stdgo.GoUInt32, _y:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _quo = (0 : stdgo.GoUInt32), _rem = (0 : stdgo.GoUInt32);
        if (((_y != (0u32 : stdgo.GoUInt32)) && (_y <= _hi : Bool) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.math.bits.Bits__overflowerror._overflowError);
        };
        var _z = (((_hi : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_lo : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            final __tmp__0 = ((_z / (_y : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
            final __tmp__1 = ((_z % (_y : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
            _quo = __tmp__0;
            _rem = __tmp__1;
        };
        return { _0 : _quo, _1 : _rem };
    }
