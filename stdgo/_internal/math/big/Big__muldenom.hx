package stdgo._internal.math.big;
function _mulDenom(_z:stdgo._internal.math.big.Big_t_nat.T_nat, _x:stdgo._internal.math.big.Big_t_nat.T_nat, _y:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L457"
        if (((_x.length == (0 : stdgo.GoInt)) && (_y.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L459"
            return _z._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        } else if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L461"
            return _z._set(_y);
        } else if ((_y.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L463"
            return _z._set(_x);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/rat.go#L465"
        return _z._mul(_x, _y);
    }
