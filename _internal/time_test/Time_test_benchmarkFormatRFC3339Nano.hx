package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkFormatRFC3339Nano(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _t = (stdgo._internal.time.Time_unix.unix((1265346057i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _t.format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString));
            });
        };
    }
