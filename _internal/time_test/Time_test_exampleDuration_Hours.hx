package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration_Hours():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("4h30m" : stdgo.GoString)), _h:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_printf.printf(("I\'ve got %.1f hours of work left." : stdgo.GoString), stdgo.Go.toInterface(_h.hours()));
    }
