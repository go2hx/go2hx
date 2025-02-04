package stdgo._internal.math.big;
function _shouldRoundUp(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>, _n:stdgo.GoInt):Bool {
        if ((((@:checkr _x ?? throw "null pointer dereference")._mant[(_n : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) && ((_n + (1 : stdgo.GoInt) : stdgo.GoInt) == ((@:checkr _x ?? throw "null pointer dereference")._mant.length)) : Bool)) {
            return ((_n > (0 : stdgo.GoInt) : Bool) && (((((@:checkr _x ?? throw "null pointer dereference")._mant[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8)) & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool);
        };
        return ((@:checkr _x ?? throw "null pointer dereference")._mant[(_n : stdgo.GoInt)] >= (53 : stdgo.GoUInt8) : Bool);
    }
