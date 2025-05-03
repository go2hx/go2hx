package stdgo._internal.math.bits;
function len(_x:stdgo.GoUInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L303"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L304"
            return stdgo._internal.math.bits.Bits_len32.len32((_x : stdgo.GoUInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L306"
        return stdgo._internal.math.bits.Bits_len64.len64((_x : stdgo.GoUInt64));
    }
