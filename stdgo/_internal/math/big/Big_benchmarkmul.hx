package stdgo._internal.math.big;
function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _mulx = (stdgo._internal.math.big.Big__rndnat._rndNat((10000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _muly = (stdgo._internal.math.big.Big__rndnat._rndNat((10000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L214"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L215"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L217"
                _z._mul(_mulx, _muly);
                _i++;
            };
        };
    }
