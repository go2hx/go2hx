package stdgo._internal.time;
function after(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        return stdgo._internal.time.Time_newtimer.newTimer(_d).c;
    }
