package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _digitsLen(_std:stdgo.GoInt):stdgo.GoInt {
        return (((_std >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (4095 : stdgo.GoInt) : stdgo.GoInt);
    }
