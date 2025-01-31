package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function tick(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
        };
        return stdgo._internal.time.Time_newTicker.newTicker(_d).c;
    }
