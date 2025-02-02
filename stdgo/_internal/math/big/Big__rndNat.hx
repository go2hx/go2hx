package stdgo._internal.math.big;
function _rndNat(_n:stdgo.GoInt):stdgo._internal.math.big.Big_T_nat.T_nat {
        return (stdgo._internal.math.big.Big__rndV._rndV(_n) : stdgo._internal.math.big.Big_T_nat.T_nat)._norm();
    }
