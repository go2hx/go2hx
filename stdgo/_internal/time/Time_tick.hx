package stdgo._internal.time;
function tick(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Chan<stdgo._internal.time.Time_time.Time> {
        //"file:///home/runner/.go/go1.21.3/src/time/tick.go#L67"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/tick.go#L68"
            return (null : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/tick.go#L70"
        return stdgo._internal.time.Time_newticker.newTicker(_d).c;
    }
