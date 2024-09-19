package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMonotonicOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = (stdgo._internal.time.Time_now.now().add((-30000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _d = (stdgo._internal.time.Time_until.until(_t1?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
        if (((_d < (-35000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || ((-30000000000i64 : stdgo._internal.time.Time_Duration.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Until(Now().Add(-30s)) = %v, want roughly -30s (-35s to -30s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        _t1 = stdgo._internal.time.Time_now.now().add((30000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        _d = stdgo._internal.time.Time_until.until(_t1?.__copy__());
        if (((_d < (25000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || ((30000000000i64 : stdgo._internal.time.Time_Duration.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Until(Now().Add(-30s)) = %v, want roughly 30s (25s to 30s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _t1 = _t0.add((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("Now().Add(maxDuration) has monotonic clock reading (%v => %v %d %d)" : stdgo.GoString), stdgo.Go.toInterface((_t0.string() : stdgo.GoString)), stdgo.Go.toInterface((_t1.string() : stdgo.GoString)), stdgo.Go.toInterface(_t0.unix()), stdgo.Go.toInterface(_t1.unix()));
        };
        var _t2 = (_t1.add((-9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        _d = stdgo._internal.time.Time_since.since(_t2?.__copy__());
        if (((_d < (-10000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool) || ((10000000000i64 : stdgo._internal.time.Time_Duration.Duration) < _d : Bool) : Bool)) {
            _t.errorf(("Since(Now().Add(max).Add(-max)) = %v, want [-10s, 10s]" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        _t0 = stdgo._internal.time.Time_now.now()?.__copy__();
        _t1 = _t0.add((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        _t2 = stdgo._internal.time.Time_now.now().add((-5000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        if (!_t1.after(_t2?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).After(Now().Add(-5*Second)) = false, want true\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (_t2.after(_t1?.__copy__())) {
            _t.errorf(("Now().Add(-5*Second).After(Now().Add(1*Hour)) = true, want false\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (_t1.before(_t2?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).Before(Now().Add(-5*Second)) = true, want false\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        if (!_t2.before(_t1?.__copy__())) {
            _t.errorf(("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = false, want true\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
        };
        {
            var __0 = (_t1.compare(_t2?.__copy__()) : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(1*Hour).Compare(Now().Add(-5*Second)) = %d, want %d\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
        };
        {
            var __0 = (_t2.compare(_t1?.__copy__()) : stdgo.GoInt), __1 = (-1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(-5*Second).Before(Now().Add(1*Hour)) = %d, want %d\nt1=%v\nt2=%v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
            };
        };
    }
