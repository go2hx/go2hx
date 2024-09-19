package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _absWeekday(_abs:stdgo.GoUInt64):stdgo._internal.time.Time_Weekday.Weekday {
        var _sec = (((_abs + (86400i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) % (604800i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        return (((_sec : stdgo.GoInt) / (86400 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_Weekday.Weekday);
    }
