package stdgo._internal.math.bits;
function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L28"
        return ((8 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len8.len8(_x) : stdgo.GoInt);
    }
