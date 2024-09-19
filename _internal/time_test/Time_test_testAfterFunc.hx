package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfterFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _i = (10 : stdgo.GoInt);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _f:() -> Void = null;
        _f = function():Void {
            _i--;
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.time.Time_afterFunc.afterFunc((0i64 : stdgo._internal.time.Time_Duration.Duration), _f);
                stdgo._internal.time.Time_sleep.sleep((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            } else {
                _c.__send__(true);
            };
        };
        stdgo._internal.time.Time_afterFunc.afterFunc((0i64 : stdgo._internal.time.Time_Duration.Duration), _f);
        _c.__get__();
    }
