package stdgo._internal.math.big;
function _putNat(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_nat.T_nat>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat.go#L656"
        stdgo._internal.math.big.Big__natpool._natPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
    }
