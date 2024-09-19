package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDaysIn(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__daysInTests._daysInTests) {
            var _di = (stdgo._internal.time.Time_daysIn.daysIn((_tt._month : stdgo._internal.time.Time_Month.Month), _tt._year) : stdgo.GoInt);
            if (_di != (_tt._di)) {
                _t.errorf(("got %d; expected %d for %d-%02d" : stdgo.GoString), stdgo.Go.toInterface(_di), stdgo.Go.toInterface(_tt._di), stdgo.Go.toInterface(_tt._year), stdgo.Go.toInterface(_tt._month));
            };
        };
    }
