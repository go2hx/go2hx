package stdgo._internal.time;
function _when(_d:stdgo._internal.time.Time_duration.Duration):stdgo.GoInt64 {
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L29"
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L30"
            return stdgo._internal.time.Time__runtimenano._runtimeNano();
        };
        var _t = (stdgo._internal.time.Time__runtimenano._runtimeNano() + (_d : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L33"
        if ((_t < (0i64 : stdgo.GoInt64) : Bool)) {
            _t = (9223372036854775807i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L38"
        return _t;
    }
