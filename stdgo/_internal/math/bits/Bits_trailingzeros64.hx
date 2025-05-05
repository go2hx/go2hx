package stdgo._internal.math.bits;
function trailingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L91"
        if (_x == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L92"
            return (64 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/bits/bits.go#L105"
        return (stdgo._internal.math.bits.Bits__debruijn64tab._deBruijn64tab[(((((_x & -_x : stdgo.GoUInt64)) * (285870213051353865i64 : stdgo.GoUInt64) : stdgo.GoUInt64) >> (58i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)] : stdgo.GoInt);
    }
