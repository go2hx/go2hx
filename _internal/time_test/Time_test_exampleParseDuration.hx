package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleParseDuration():Void {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("10h" : stdgo.GoString)), _hours:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1h10m10s" : stdgo.GoString)), _complex:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __3:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1µs" : stdgo.GoString)), _micro:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __4:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(("1us" : stdgo.GoString)), _micro2:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, __5:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_hours)));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_complex)));
        stdgo._internal.fmt.Fmt_printf.printf(("There are %.0f seconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_complex.seconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_complex)));
        stdgo._internal.fmt.Fmt_printf.printf(("There are %d nanoseconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_micro.nanoseconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_micro)));
        stdgo._internal.fmt.Fmt_printf.printf(("There are %6.2e seconds in %v.\n" : stdgo.GoString), stdgo.Go.toInterface(_micro2.seconds()), stdgo.Go.toInterface(stdgo.Go.asInterface(_micro)));
    }
