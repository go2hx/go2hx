package stdgo._internal.time;
function tick(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            return (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
        };
        return stdgo._internal.time.Time_newticker.newTicker(_d).c;
    }
