package stdgo._internal.runtime.internal.sys;
function trailingZeros32(_x:stdgo.GoUInt32):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L45"
        if (_x == ((0u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L46"
            return (32 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L49"
        return (stdgo._internal.runtime.internal.sys.Sys__debruijn32tab._deBruijn32tab[(((((_x & -_x : stdgo.GoUInt32)) * (125613361u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoInt);
    }
