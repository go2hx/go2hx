package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function resetLocalOnceForTest():Void {
        stdgo._internal.time.Time__localOnce._localOnce = (new stdgo._internal.sync.Sync_Once.Once() : stdgo._internal.sync.Sync_Once.Once);
        stdgo._internal.time.Time__localLoc._localLoc = (new stdgo._internal.time.Time_Location.Location() : stdgo._internal.time.Time_Location.Location);
    }
