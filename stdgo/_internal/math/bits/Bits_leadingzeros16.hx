package stdgo._internal.math.bits;
function leadingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L31"
        return ((16 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len16.len16(_x) : stdgo.GoInt);
    }
