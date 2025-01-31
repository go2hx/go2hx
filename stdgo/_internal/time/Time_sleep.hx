package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function sleep(_d:stdgo._internal.time.Time_Duration.Duration):Void {
        final seconds = _d.toFloat() / 1000000000;
        #if (sys || hxnodejs) {
            var ticks = std.Math.floor(seconds * 100);
            while (--ticks > 0) {
                stdgo._internal.internal.Async.tick();
                std.Sys.sleep(0.01);
            };
        } #else null #end;
    }
