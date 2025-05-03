package stdgo._internal.math.bits;
function reverseBytes16(_x:stdgo.GoUInt16):stdgo.GoUInt16 {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L277"
        return ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_x << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
