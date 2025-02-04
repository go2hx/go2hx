package stdgo._internal.math.big;
function _mulDenom(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        if (((_x.length == (0 : stdgo.GoInt)) && (_y.length == (0 : stdgo.GoInt)) : Bool)) {
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        } else if ((_x.length) == ((0 : stdgo.GoInt))) {
            return _z._set(_y);
        } else if ((_y.length) == ((0 : stdgo.GoInt))) {
            return _z._set(_x);
        };
        return _z._mul(_x, _y);
    }
