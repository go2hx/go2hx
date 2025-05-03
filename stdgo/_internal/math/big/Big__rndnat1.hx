package stdgo._internal.math.big;
function _rndNat1(_n:stdgo.GoInt):stdgo._internal.math.big.Big_t_nat.T_nat {
        var _x = ((stdgo._internal.math.big.Big__rndv._rndV(_n) : stdgo._internal.math.big.Big_t_nat.T_nat)._norm() : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L205"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L206"
            _x._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L208"
        return _x;
    }
