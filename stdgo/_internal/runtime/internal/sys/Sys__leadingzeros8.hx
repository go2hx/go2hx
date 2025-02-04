package stdgo._internal.runtime.internal.sys;
function leadingZeros8(_x:stdgo.GoUInt8):stdgo.GoInt {
        return ((8 : stdgo.GoInt) - stdgo._internal.runtime.internal.sys.Sys_len8.len8(_x) : stdgo.GoInt);
    }
