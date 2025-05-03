package stdgo._internal.time;
function after(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L157"
        return stdgo._internal.time.Time_newtimer.newTimer(_d).c;
    }
