package stdgo._internal.math.bits;
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L37"
        return ((64 : stdgo.GoInt) - stdgo._internal.math.bits.Bits_len64.len64(_x) : stdgo.GoInt);
    }
