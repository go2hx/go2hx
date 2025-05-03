package stdgo._internal.math.bits;
function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L82"
        if (_x == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L83"
            return (32 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L86"
        return (stdgo._internal.math.bits.Bits__debruijn32tab._deBruijn32tab[(((((_x & -_x : stdgo.GoUInt32)) * (125613361u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt);
    }
