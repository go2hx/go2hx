package stdgo._internal.math.big;
function _rndW():stdgo._internal.math.big.Big_word.Word {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith_test.go#L74"
        return (((stdgo._internal.math.big.Big__rnd._rnd.int63() << (1i64 : stdgo.GoUInt64) : stdgo.GoInt64) | stdgo._internal.math.big.Big__rnd._rnd.int63n((2i64 : stdgo.GoInt64)) : stdgo.GoInt64) : stdgo._internal.math.big.Big_word.Word);
    }
