package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testSleep(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        stdgo.Go.routine(() -> {
            var a = function():Void {
                stdgo._internal.time.Time_sleep.sleep((50000000i64 : stdgo._internal.time.Time_Duration.Duration));
                stdgo._internal.time.Time_interrupt.interrupt();
            };
            a();
        });
        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        var _delayadj = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
        if (false) {
            _delayadj = (_delayadj - ((17000000i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
        };
        var _duration = (stdgo._internal.time.Time_now.now().sub(_start?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
        if ((_duration < _delayadj : Bool)) {
            _t.fatalf(("Sleep(%s) slept for only %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_duration)));
        };
    }
