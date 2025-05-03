package stdgo._internal.runtime.internal.sys;
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/runtime/internal/sys/intrinsics.go#L153"
        return ((64 : stdgo.GoInt) - stdgo._internal.runtime.internal.sys.Sys_len64.len64(_x) : stdgo.GoInt);
    }
