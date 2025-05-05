package stdgo._internal.math.big;
function _low64(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L413"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L414"
            return (0i64 : stdgo.GoUInt64);
        };
        var _v = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L417"
        if ((true && ((_x.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L418"
            return (((_x[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | _v : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L420"
        return _v;
    }
