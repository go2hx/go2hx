package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testDate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__dateTests._dateTests) {
            var _time = (stdgo._internal.time.Time_date.date(_tt._year, (_tt._month : stdgo._internal.time.Time_Month.Month), _tt._day, _tt._hour, _tt._min, _tt._sec, _tt._nsec, _tt._z)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _want = (stdgo._internal.time.Time_unix.unix(_tt._unix, (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if (!_time.equal(_want?.__copy__())) {
                _t.errorf(("Date(%d, %d, %d, %d, %d, %d, %d, %s) = %v, want %v" : stdgo.GoString),
stdgo.Go.toInterface(_tt._year),
stdgo.Go.toInterface(_tt._month),
stdgo.Go.toInterface(_tt._day),
stdgo.Go.toInterface(_tt._hour),
stdgo.Go.toInterface(_tt._min),
stdgo.Go.toInterface(_tt._sec),
stdgo.Go.toInterface(_tt._nsec),
stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._z)),
stdgo.Go.toInterface(stdgo.Go.asInterface(_time)),
stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
        };
    }
