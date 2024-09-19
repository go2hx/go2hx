package stdgo._internal.math.big;
function _benchmarkNatMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo._internal.math.big.Big__rndNat._rndNat(_nwords) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _y = (stdgo._internal.math.big.Big__rndNat._rndNat(_nwords) : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _z._mul(_x, _y);
            });
        };
    }
