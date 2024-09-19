package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTeardown(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var delta = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
        if (stdgo._internal.testing.Testing_short.short()) {
            delta = (20000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                var _ticker = stdgo._internal.time.Time_newTicker.newTicker(delta);
                _ticker.c.__get__();
                _ticker.stop();
            });
        };
    }
