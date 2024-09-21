package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDefaultLoc(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__defaultLocTests._defaultLocTests) {
            var _t1 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
            var _t2 = ((new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if (!_tt._f(_t1?.__copy__(), _t2?.__copy__())) {
                _t.errorf(("Time{} and Time{}.UTC() behave differently for %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._name));
            };
        };
    }
