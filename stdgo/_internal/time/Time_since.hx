package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function since(_t:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Duration.Duration {
        var _now:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
        if ((_t._wall & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            _now = (new stdgo._internal.time.Time_Time.Time((-9223372036854775808i64 : stdgo.GoUInt64), (stdgo._internal.time.Time__runtimeNano._runtimeNano() - stdgo._internal.time.Time__startNano._startNano : stdgo.GoInt64), null) : stdgo._internal.time.Time_Time.Time);
        } else {
            _now = stdgo._internal.time.Time_now.now()?.__copy__();
        };
        return _now.sub(_t?.__copy__());
    }
