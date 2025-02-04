package stdgo._internal.math.big;
function _alias(_x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
        return (((_x.capacity > (0 : stdgo.GoInt) : Bool) && (_y.capacity > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.pointer((_x.__slice__((0 : stdgo.GoInt), _x.capacity) : stdgo._internal.math.big.Big_t_nat.T_nat)[(_x.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)]) == stdgo.Go.pointer((_y.__slice__((0 : stdgo.GoInt), _y.capacity) : stdgo._internal.math.big.Big_t_nat.T_nat)[(_y.capacity - (1 : stdgo.GoInt) : stdgo.GoInt)])) : Bool);
    }
