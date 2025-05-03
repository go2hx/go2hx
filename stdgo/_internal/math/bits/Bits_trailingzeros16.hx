package stdgo._internal.math.bits;
function trailingZeros16(_x:stdgo.GoUInt16):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L73"
        if (_x == ((0 : stdgo.GoUInt16))) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L74"
            return (16 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L77"
        return (stdgo._internal.math.bits.Bits__debruijn32tab._deBruijn32tab[(((((_x & -_x : stdgo.GoUInt16) : stdgo.GoUInt32) * (125613361u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt);
    }
