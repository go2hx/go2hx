package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _absString(_t:stdgo._internal.time.Time_Time.Time):stdgo.GoString {
        var __tmp__ = _internal.time_test.Time_test__abs._abs(_t?.__copy__()), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt64 = __tmp__._1;
        if ((_sec < (0i64 : stdgo.GoInt64) : Bool)) {
            _sec = -_sec;
            _nsec = -_nsec;
            if ((_nsec < (0i64 : stdgo.GoInt64) : Bool)) {
                _nsec = (_nsec + ((1000000000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _sec--;
            };
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("-%d%09d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_nsec))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d%09d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_nsec))?.__copy__();
    }
