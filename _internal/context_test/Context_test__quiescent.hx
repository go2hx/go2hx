package _internal.context_test;
import stdgo._internal.context.Context;
import stdgo._internal.context.Context;
function _quiescent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):stdgo._internal.time.Time_Duration.Duration {
        var __tmp__ = _t.deadline(), _deadline:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return (5000000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        {};
        return (stdgo._internal.time.Time_until.until(_deadline?.__copy__()) - (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
    }
