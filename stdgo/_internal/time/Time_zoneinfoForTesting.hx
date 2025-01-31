package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function zoneinfoForTesting():stdgo.Pointer<stdgo.GoString> {
        return stdgo._internal.time.Time__zoneinfo._zoneinfo;
    }
