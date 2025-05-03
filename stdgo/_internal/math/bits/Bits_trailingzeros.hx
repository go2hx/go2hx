package stdgo._internal.math.bits;
function trailingZeros(_x:stdgo.GoUInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L60"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L61"
            return stdgo._internal.math.bits.Bits_trailingzeros32.trailingZeros32((_x : stdgo.GoUInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L63"
        return stdgo._internal.math.bits.Bits_trailingzeros64.trailingZeros64((_x : stdgo.GoUInt64));
    }
