package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _separator(_std:stdgo.GoInt):stdgo.GoUInt8 {
        if (((_std >> (28i64 : stdgo.GoUInt64) : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            return (46 : stdgo.GoUInt8);
        };
        return (44 : stdgo.GoUInt8);
    }
