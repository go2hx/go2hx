package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMonotonicAdd(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tm = (stdgo._internal.time.Time_unix.unix((1486057371i64 : stdgo.GoInt64), (123456i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_setMono.setMono((stdgo.Go.setRef(_tm) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>), (123456789012345i64 : stdgo.GoInt64));
        var _t2 = (_tm.add((100000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_t2.nanosecond() != ((100123456 : stdgo.GoInt))) {
            _t.errorf(("t2.Nanosecond() = %d, want 100123456" : stdgo.GoString), stdgo.Go.toInterface(_t2.nanosecond()));
        };
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((123456889012345i64 : stdgo.GoInt64))) {
            _t.errorf(("t2.mono = %d, want 123456889012345" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))));
        };
        var _t3 = (_tm.add((-9000000000000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_t3.nanosecond() != ((123456 : stdgo.GoInt))) {
            _t.errorf(("t3.Nanosecond() = %d, want 123456" : stdgo.GoString), stdgo.Go.toInterface(_t3.nanosecond()));
        };
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("t3.mono = %d, want 0 (wall time out of range for monotonic reading)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t3) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))));
        };
        var _t4 = (_tm.add((9000000000000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_t4.nanosecond() != ((123456 : stdgo.GoInt))) {
            _t.errorf(("t4.Nanosecond() = %d, want 123456" : stdgo.GoString), stdgo.Go.toInterface(_t4.nanosecond()));
        };
        if (stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t4) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)) != ((0i64 : stdgo.GoInt64))) {
            _t.errorf(("t4.mono = %d, want 0 (wall time out of range for monotonic reading)" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.time.Time_getMono.getMono((stdgo.Go.setRef(_t4) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))));
        };
        var _tn = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _tn1 = (_tn.add((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
        var _d = (stdgo._internal.time.Time_until.until(_tn1?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
        if ((_d < (3540000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _t.errorf(("Until(Now().Add(1*Hour)) = %v, wanted at least 59m" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        };
        var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        if (_now.after(_tn1?.__copy__())) {
            _t.errorf(("Now().After(Now().Add(1*Hour)) = true, want false" : stdgo.GoString));
        };
        if (!_tn1.after(_now?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).After(now) = false, want true" : stdgo.GoString));
        };
        if (_tn1.before(_now?.__copy__())) {
            _t.errorf(("Now().Add(1*Hour).Before(Now()) = true, want false" : stdgo.GoString));
        };
        if (!_now.before(_tn1?.__copy__())) {
            _t.errorf(("Now().Before(Now().Add(1*Hour)) = false, want true" : stdgo.GoString));
        };
        {
            var __0 = (_now.compare(_tn1?.__copy__()) : stdgo.GoInt), __1 = (-1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Compare(Now().Add(1*Hour)) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (_tn1.compare(_now?.__copy__()) : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Now().Add(1*Hour).Compare(Now()) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
