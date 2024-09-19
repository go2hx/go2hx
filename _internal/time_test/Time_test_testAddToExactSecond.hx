package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAddToExactSecond(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _t2 = (_t1.add(((1000000000i64 : stdgo._internal.time.Time_Duration.Duration) - (_t1.nanosecond() : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _sec = (((_t1.second() + (1 : stdgo.GoInt) : stdgo.GoInt)) % (60 : stdgo.GoInt) : stdgo.GoInt);
        if (((_t2.second() != _sec) || (_t2.nanosecond() != (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("sec = %d, nsec = %d, want sec = %d, nsec = 0" : stdgo.GoString), stdgo.Go.toInterface(_t2.second()), stdgo.Go.toInterface(_t2.nanosecond()), stdgo.Go.toInterface(_sec));
        };
    }
