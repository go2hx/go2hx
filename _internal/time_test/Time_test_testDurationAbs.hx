package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDurationAbs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__durationAbsTests._durationAbsTests) {
            {
                var _got = (_tt._d.abs() : stdgo._internal.time.Time_Duration.Duration);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Abs() = %s; want: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._want)));
                };
            };
        };
    }
