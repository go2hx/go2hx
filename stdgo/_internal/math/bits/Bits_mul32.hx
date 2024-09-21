package stdgo._internal.math.bits;
function mul32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hi = (0 : stdgo.GoUInt32), _lo = (0 : stdgo.GoUInt32);
        var _tmp = ((_x : stdgo.GoUInt64) * (_y : stdgo.GoUInt64) : stdgo.GoUInt64);
        {
            final __tmp__0 = ((_tmp >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
            final __tmp__1 = (_tmp : stdgo.GoUInt32);
            _hi = __tmp__0;
            _lo = __tmp__1;
        };
        return { _0 : _hi, _1 : _lo };
    }
