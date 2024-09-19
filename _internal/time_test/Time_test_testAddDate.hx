package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAddDate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t0 = (stdgo._internal.time.Time_date.date((2011 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (18 : stdgo.GoInt), (7 : stdgo.GoInt), (56 : stdgo.GoInt), (35 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _t1 = (stdgo._internal.time.Time_date.date((2016 : stdgo.GoInt), (3 : stdgo._internal.time.Time_Month.Month), (19 : stdgo.GoInt), (7 : stdgo.GoInt), (56 : stdgo.GoInt), (35 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        for (__2 => _at in _internal.time_test.Time_test__addDateTests._addDateTests) {
            var _time = (_t0.addDate(_at._years, _at._months, _at._days)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if (!_time.equal(_t1?.__copy__())) {
                _t.errorf(("AddDate(%d, %d, %d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_at._years), stdgo.Go.toInterface(_at._months), stdgo.Go.toInterface(_at._days), stdgo.Go.toInterface(stdgo.Go.asInterface(_time)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
            };
        };
    }
