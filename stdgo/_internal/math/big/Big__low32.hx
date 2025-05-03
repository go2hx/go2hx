package stdgo._internal.math.big;
function _low32(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt32 {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L405"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L406"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L408"
        return (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
    }
