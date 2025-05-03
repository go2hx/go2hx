package stdgo._internal.math.big;
function _rndNat(_n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L199"
        return (stdgo._internal.math.big.Big__rndv._rndV(_n) : stdgo._internal.math.big.Big_t_nat.T_nat)._norm();
    }
