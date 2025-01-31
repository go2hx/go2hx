package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function resetZoneinfoForTesting():Void {
        stdgo._internal.time.Time__zoneinfo._zoneinfo = (null : stdgo.Pointer<stdgo.GoString>);
        stdgo._internal.time.Time__zoneinfoOnce._zoneinfoOnce = (new stdgo._internal.sync.Sync_Once.Once() : stdgo._internal.sync.Sync_Once.Once);
    }
