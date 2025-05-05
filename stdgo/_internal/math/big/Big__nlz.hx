package stdgo._internal.math.big;
function _nlz(_x:stdgo._internal.math.big.Big_word.Word):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/arith.go#L60"
        return (stdgo._internal.math.bits.Bits_leadingzeros.leadingZeros((_x : stdgo.GoUInt)) : stdgo.GoUInt);
    }
