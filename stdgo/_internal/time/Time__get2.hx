package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _get2(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        if (((_b.length) < (2 : stdgo.GoInt) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoInt) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
    }
