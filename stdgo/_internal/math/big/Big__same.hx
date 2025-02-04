package stdgo._internal.math.big;
function _same(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
        return (((_x.length) == ((_y.length)) && ((_x.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]) == stdgo.Go.pointer(_y[(0 : stdgo.GoInt)])) : Bool);
    }
