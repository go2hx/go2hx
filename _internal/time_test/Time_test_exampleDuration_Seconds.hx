package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration_Seconds():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1m30s" : stdgo.GoString)), _m:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("Take off in t-%.0f seconds." : stdgo.GoString), stdgo.Go.toInterface(_m.seconds()));
    }
