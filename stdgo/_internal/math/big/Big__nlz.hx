package stdgo._internal.math.big;
function _nlz(_x:stdgo._internal.math.big.Big_Word.Word):stdgo.GoUInt {
        return (stdgo._internal.math.bits.Bits_leadingZeros.leadingZeros((_x : stdgo.GoUInt)) : stdgo.GoUInt);
    }
