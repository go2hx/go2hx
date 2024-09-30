package stdgo._internal.time;
function tick(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Chan<stdgo._internal.time.Time_Time.Time> {
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return (null : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
        };
        return stdgo._internal.time.Time_newTicker.newTicker(_d).c;
    }
