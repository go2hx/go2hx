package stdgo._internal.math.bits;
function reverseBytes(_x:stdgo.GoUInt):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L267"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L268"
            return (stdgo._internal.math.bits.Bits_reversebytes32.reverseBytes32((_x : stdgo.GoUInt32)) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L270"
        return (stdgo._internal.math.bits.Bits_reversebytes64.reverseBytes64((_x : stdgo.GoUInt64)) : stdgo.GoUInt);
    }
