package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _lessThanHalf(_x:stdgo._internal.time.Time_Duration.Duration, _y:stdgo._internal.time.Time_Duration.Duration):Bool {
        return (((_x : stdgo.GoUInt64) + (_x : stdgo.GoUInt64) : stdgo.GoUInt64) < (_y : stdgo.GoUInt64) : Bool);
    }
