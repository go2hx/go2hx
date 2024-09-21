package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testZeroTimer(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            _t.skip(stdgo.Go.toInterface(("-short" : stdgo.GoString)));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000000 : stdgo.GoInt) : Bool), _i++, {
                var _s = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                var _ti = stdgo._internal.time.Time_newTimer.newTimer((0i64 : stdgo._internal.time.Time_Duration.Duration));
                _ti.c.__get__();
                {
                    var _diff = (stdgo._internal.time.Time_since.since(_s?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                    if ((_diff > (2000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        _t.errorf(("Expected time to get value from Timer channel in less than 2 sec, took %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_diff)));
                    };
                };
            });
        };
    }
