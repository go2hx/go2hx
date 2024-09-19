package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _unixTime(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt32):stdgo._internal.time.Time_Time.Time {
        return (new stdgo._internal.time.Time_Time.Time((_nsec : stdgo.GoUInt64), (_sec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64), stdgo._internal.time.Time_local.local) : stdgo._internal.time.Time_Time.Time);
    }
