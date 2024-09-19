package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testNanosecondsToUTC(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__nanoutctests._nanoutctests) {
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<_internal.time_test.Time_test_T_parsedTime.T_parsedTime>);
            var _nsec = ((_test._seconds * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_golden.nanosecond : stdgo.GoInt64) : stdgo.GoInt64);
            var _tm = (stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), _nsec).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _newnsec = ((_tm.unix() * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_tm.nanosecond() : stdgo.GoInt64) : stdgo.GoInt64);
            if (_newnsec != (_nsec)) {
                _t.errorf(("NanosecondsToUTC(%d).Nanoseconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_nsec), stdgo.Go.toInterface(_newnsec));
            };
            if (!_internal.time_test.Time_test__same._same(_tm?.__copy__(), _golden)) {
                _t.errorf(("NanosecondsToUTC(%d):" : stdgo.GoString), stdgo.Go.toInterface(_nsec));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : _internal.time_test.Time_test_T_parsedTime.T_parsedTime)));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
