package stdgo._internal.math.big;
function _norm(_x:stdgo._internal.math.big.Big_T_nat.T_nat):stdgo._internal.math.big.Big_T_nat.T_nat {
        var _i = (_x.length : stdgo.GoInt);
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
            _i--;
        };
        return (_x.__slice__(0, _i) : stdgo._internal.math.big.Big_T_nat.T_nat);
    }
