package stdgo._internal.math.bits;
function onesCount(_x:stdgo.GoUInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L118"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L119"
            return stdgo._internal.math.bits.Bits_onescount32.onesCount32((_x : stdgo.GoUInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L121"
        return stdgo._internal.math.bits.Bits_onescount64.onesCount64((_x : stdgo.GoUInt64));
    }
