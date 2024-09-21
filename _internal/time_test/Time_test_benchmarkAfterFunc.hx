package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function benchmarkAfterFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.time_test.Time_test__benchmark._benchmark(_b, function(_n:stdgo.GoInt):Void {
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var _f:() -> Void = null;
            _f = function():Void {
                _n--;
                if ((_n >= (0 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.time.Time_afterFunc.afterFunc((0i64 : stdgo._internal.time.Time_Duration.Duration), _f);
                } else {
                    _c.__send__(true);
                };
            };
            stdgo._internal.time.Time_afterFunc.afterFunc((0i64 : stdgo._internal.time.Time_Duration.Duration), _f);
            _c.__get__();
        });
    }
