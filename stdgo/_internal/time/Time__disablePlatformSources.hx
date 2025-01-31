package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _disablePlatformSources():() -> Void {
        var _undo = null;
        stdgo._internal.time.Time__platformZoneSources._platformZoneSources = (null : stdgo.Slice<stdgo.GoString>);
        return _undo = function():Void {
            stdgo._internal.time.Time__platformZoneSources._platformZoneSources = stdgo._internal.time.Time__origPlatformZoneSources._origPlatformZoneSources;
        };
    }
