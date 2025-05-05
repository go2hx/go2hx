package stdgo._internal.math.big;
function _log2(_x:stdgo._internal.math.big.Big_word.Word):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L26"
        return (stdgo._internal.math.bits.Bits_len.len((_x : stdgo.GoUInt)) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
