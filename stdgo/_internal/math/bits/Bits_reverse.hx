package stdgo._internal.math.bits;
function reverse(_x:stdgo.GoUInt):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L227"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L228"
            return (stdgo._internal.math.bits.Bits_reverse32.reverse32((_x : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L230"
        return (stdgo._internal.math.bits.Bits_reverse64.reverse64((_x : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
