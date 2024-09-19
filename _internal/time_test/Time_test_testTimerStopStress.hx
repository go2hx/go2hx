package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimerStopStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            return;
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        var _timer = stdgo._internal.time.Time_afterFunc.afterFunc((2000000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {
                            _t.errorf(("timer %d was not stopped" : stdgo.GoString), stdgo.Go.toInterface(_i));
                        });
                        stdgo._internal.time.Time_sleep.sleep((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        _timer.stop();
                    };
                    a(_i);
                });
            });
        };
        stdgo._internal.time.Time_sleep.sleep((3000000000i64 : stdgo._internal.time.Time_Duration.Duration));
    }
