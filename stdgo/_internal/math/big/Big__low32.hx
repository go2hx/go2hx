package stdgo._internal.math.big;
function _low32(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo.GoUInt32 {
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return (0u32 : stdgo.GoUInt32);
        };
        return (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
    }
