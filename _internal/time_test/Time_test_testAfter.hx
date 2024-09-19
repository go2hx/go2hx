package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _end = (stdgo._internal.time.Time_after.after((100000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _delayadj = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
        if (false) {
            _delayadj = (_delayadj - ((17000000i64 : stdgo._internal.time.Time_Duration.Duration)) : stdgo._internal.time.Time_Duration.Duration);
        };
        {
            var _duration = (stdgo._internal.time.Time_now.now().sub(_start?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
            if ((_duration < _delayadj : Bool)) {
                _t.fatalf(("After(%s) slept for only %d ns" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_duration)));
            };
        };
        {
            var _min = (_start.add(_delayadj)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            if (_end.before(_min?.__copy__())) {
                _t.fatalf(("After(%s) expect >= %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((100000000i64 : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_min)), stdgo.Go.toInterface(stdgo.Go.asInterface(_end)));
            };
        };
    }
