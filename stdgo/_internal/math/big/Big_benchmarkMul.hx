package stdgo._internal.math.big;
function benchmarkMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _mulx = (stdgo._internal.math.big.Big__rndNat._rndNat((10000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _muly = (stdgo._internal.math.big.Big__rndNat._rndNat((10000 : stdgo.GoInt)) : stdgo._internal.math.big.Big_T_nat.T_nat);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
                _z._mul(_mulx, _muly);
            });
        };
    }