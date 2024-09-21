package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMidnightIs12AM(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _midnight = (stdgo._internal.time.Time_date.date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _expect = ("12:00AM" : stdgo.GoString);
        var _got = (_midnight.format(("3:04PM" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_got != (_expect)) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
        _got = _midnight.format(("03:04PM" : stdgo.GoString))?.__copy__();
        if (_got != (_expect)) {
            _t.errorf(("got %q; expect %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_expect));
        };
    }
