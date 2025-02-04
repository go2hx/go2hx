package stdgo._internal.time;
function until(_t:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_duration.Duration {
        var _now:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _now = (new stdgo._internal.time.Time_time.Time((-9223372036854775808i64 : stdgo.GoUInt64), (stdgo._internal.time.Time__runtimenano._runtimeNano() - stdgo._internal.time.Time__startnano._startNano : stdgo.GoInt64), null) : stdgo._internal.time.Time_time.Time);
        } else {
            _now = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        return _t.sub(_now?.__copy__());
    }
