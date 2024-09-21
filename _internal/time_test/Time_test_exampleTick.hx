package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTick():Void {
        var _c = stdgo._internal.time.Time_tick.tick((5000000000i64 : stdgo._internal.time.Time_Duration.Duration));
        for (_next => _ in _c) {
            stdgo._internal.fmt.Fmt_printf.printf(("%v %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_next)), stdgo.Go.toInterface(_internal.time_test.Time_test__statusUpdate._statusUpdate()));
        };
    }
