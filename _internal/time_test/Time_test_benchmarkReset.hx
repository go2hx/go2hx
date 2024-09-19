package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkReset(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.time_test.Time_test__benchmark._benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _t = stdgo._internal.time.Time_newTimer.newTimer((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _t.reset((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                });
            };
            _t.stop();
        });
    }
