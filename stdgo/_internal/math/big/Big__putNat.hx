package stdgo._internal.math.big;
function _putNat(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_nat.T_nat>):Void {
        stdgo._internal.math.big.Big__natPool._natPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
    }
