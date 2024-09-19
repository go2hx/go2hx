package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkSleep(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.time_test.Time_test__benchmark._benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _wg:stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
            _wg.add(_n);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.time.Time_sleep.sleep((1i64 : stdgo._internal.time.Time_Duration.Duration));
                            _wg.done();
                        };
                        a();
                    });
                });
            };
            _wg.wait_();
        });
    }
