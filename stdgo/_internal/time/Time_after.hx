package stdgo._internal.time;
function after(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        return stdgo._internal.time.Time_newTimer.newTimer(_d).c;
    }
