package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTick(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _got = stdgo._internal.time.Time_tick.tick((-1i64 : stdgo._internal.time.Time_Duration.Duration));
            if (_got != null) {
                _t.errorf(("Tick(-1) = %v; want nil" : stdgo.GoString), stdgo.Go.toInterface(_got));
            };
        };
    }
