package stdgo._internal.runtime.internal.sys;
function leadingZeros64(_x:stdgo.GoUInt64):stdgo.GoInt {
        return ((64 : stdgo.GoInt) - stdgo._internal.runtime.internal.sys.Sys_len64.len64(_x) : stdgo.GoInt);
    }
