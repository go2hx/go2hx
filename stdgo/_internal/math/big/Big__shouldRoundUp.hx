package stdgo._internal.math.big;
function _shouldRoundUp(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _n:stdgo.GoInt):Bool {
        if (((_x._mant[(_n : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_n + (1 : stdgo.GoInt) : stdgo.GoInt) == (_x._mant.length)) : Bool)) {
            return ((_n > (0 : stdgo.GoInt) : Bool) && ((((_x._mant[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        return (_x._mant[(_n : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
