package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration_Nanoseconds():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1µs" : stdgo.GoString)), _u:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("One microsecond is %d nanoseconds.\n" : stdgo.GoString), stdgo.Go.toInterface(_u.nanoseconds()));
    }
