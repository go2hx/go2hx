package stdgo._internal.math.bits;
function leadingZeros(_x:stdgo.GoUInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L25"
        return ((32 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len.len(_x) : stdgo.GoInt);
    }
