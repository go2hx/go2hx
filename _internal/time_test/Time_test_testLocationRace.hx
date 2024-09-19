package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testLocationRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.time.Time_resetLocalOnceForTest.resetLocalOnceForTest();
        var _c = (new stdgo.Chan<stdgo.GoString>((1 : stdgo.GoInt).toBasic(), () -> ("" : stdgo.GoString)) : stdgo.Chan<stdgo.GoString>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.__send__((stdgo._internal.time.Time_now.now().string() : stdgo.GoString));
            };
            a();
        });
        var __blank__ = (stdgo._internal.time.Time_now.now().string() : stdgo.GoString);
        _c.__get__();
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        stdgo._internal.time.Time_forceUSPacificForTesting.forceUSPacificForTesting();
    }
