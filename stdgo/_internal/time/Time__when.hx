package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _when(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoInt64 {
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return stdgo._internal.time.Time__runtimeNano._runtimeNano();
        };
        var _t = (stdgo._internal.time.Time__runtimeNano._runtimeNano() + (_d : stdgo.GoInt64) : stdgo.GoInt64);
        if ((_t < (0i64 : stdgo.GoInt64) : Bool)) {
            _t = (9223372036854775807i64 : stdgo.GoInt64);
        };
        return _t;
    }