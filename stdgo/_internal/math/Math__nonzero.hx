package stdgo._internal.math;
function _nonzero(_x:stdgo.GoUInt64):stdgo.GoUInt64 {
        //"file:///home/runner/.go/go1.21.3/src/math/fma.go#L19"
        if (_x != ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/math/fma.go#L20"
            return (1i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/math/fma.go#L22"
        return (0i64 : stdgo.GoUInt64);
    }
