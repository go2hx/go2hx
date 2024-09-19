package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration_Milliseconds():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1s" : stdgo.GoString)), _u:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("One second is %d milliseconds.\n" : stdgo.GoString), stdgo.Go.toInterface(_u.milliseconds()));
    }
