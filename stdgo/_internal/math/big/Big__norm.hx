package stdgo._internal.math.big;
function _norm(_x:stdgo._internal.math.big.Big_t_nat.T_nat):stdgo._internal.math.big.Big_t_nat.T_nat {
        var _i = (_x.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L335"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L336"
            _i--;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L338"
        return (_x.__slice__(0, _i) : stdgo._internal.math.big.Big_t_nat.T_nat);
    }
