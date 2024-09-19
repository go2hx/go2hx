package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration_Truncate():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1h15m30.918273645s" : stdgo.GoString)), _d:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _trunc = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(8, 8, ...[(1i64 : stdgo._internal.time.Time_Duration.Duration), (1000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (2000000000i64 : stdgo._internal.time.Time_Duration.Duration), (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        for (__2 => _t in _trunc) {
            stdgo._internal.fmt.Fmt_printf.printf(("d.Truncate(%6s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface((_d.truncate(_t).string() : stdgo.GoString)));
        };
    }
