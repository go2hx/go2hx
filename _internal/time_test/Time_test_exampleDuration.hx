package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDuration():Void {
        var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _internal.time_test.Time_test__expensiveCall._expensiveCall();
        var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_printf.printf(("The call took %v to run.\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1.sub(_t0?.__copy__()))));
    }
