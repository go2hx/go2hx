package stdgo._internal.math.big;
function _benchmarkNatMul(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _nwords:stdgo.GoInt):Void {
        var _x = (stdgo._internal.math.big.Big__rndnat._rndNat(_nwords) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _y = (stdgo._internal.math.big.Big__rndnat._rndNat(_nwords) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                _z._mul(_x, _y);
                _i++;
            };
        };
    }
