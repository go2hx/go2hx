package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkStartStop(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.time_test.Time_test__benchmark._benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _timers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _timers[(_i : stdgo.GoInt)] = stdgo._internal.time.Time_afterFunc.afterFunc((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration), null);
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    _timers[(_i : stdgo.GoInt)].stop();
                });
            };
        });
    }
