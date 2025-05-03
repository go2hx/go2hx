package stdgo._internal.math.bits;
function rotateLeft(_x:stdgo.GoUInt, _k:stdgo.GoInt):stdgo.GoUInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L177"
        if (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L178"
            return (stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32((_x : stdgo.GoUInt32), _k) : stdgo.GoUInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L180"
        return (stdgo._internal.math.bits.Bits_rotateleft64.rotateLeft64((_x : stdgo.GoUInt64), _k) : stdgo.GoUInt);
    }
