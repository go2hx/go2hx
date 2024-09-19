package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDurationMinutes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__minDurationTests._minDurationTests) {
            {
                var _got = (_tt._d.minutes() : stdgo.GoFloat64);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Minutes() = %g; want: %g" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
