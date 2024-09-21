package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfterStress(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _stop:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                while (!_stop.load()) {
                    stdgo._internal.runtime.Runtime_gc.gc();
                    stdgo._internal.time.Time_sleep.sleep((1i64 : stdgo._internal.time.Time_Duration.Duration));
                };
            };
            a();
        });
        var _ticker = stdgo._internal.time.Time_newTicker.newTicker((1i64 : stdgo._internal.time.Time_Duration.Duration));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                _ticker.c.__get__();
            });
        };
        _ticker.stop();
        _stop.store(true);
    }
