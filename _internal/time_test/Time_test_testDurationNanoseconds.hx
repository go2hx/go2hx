package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDurationNanoseconds(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__nsDurationTests._nsDurationTests) {
            {
                var _got = (_tt._d.nanoseconds() : stdgo.GoInt64);
                if (_got != (_tt._want)) {
                    _t.errorf(("Duration(%s).Nanoseconds() = %d; want: %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._d)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
