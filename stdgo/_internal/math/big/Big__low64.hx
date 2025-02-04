package stdgo._internal.math.big;
function _low64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return (0i64 : stdgo.GoUInt64);
        };
        var _v = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        if ((true && ((_x.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            return (((_x[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | _v : stdgo.GoUInt64);
        };
        return _v;
    }
