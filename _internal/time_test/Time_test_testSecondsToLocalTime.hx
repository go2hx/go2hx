package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testSecondsToLocalTime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__localtests._localtests) {
            var _sec = (_test._seconds : stdgo.GoInt64);
            var _golden = (stdgo.Go.setRef(_test._golden) : stdgo.Ref<_internal.time_test.Time_test_T_parsedTime.T_parsedTime>);
            var _tm = (stdgo._internal.time.Time_unix.unix(_sec, (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _newsec = (_tm.unix() : stdgo.GoInt64);
            if (_newsec != (_sec)) {
                _t.errorf(("SecondsToLocalTime(%d).Seconds() = %d" : stdgo.GoString), stdgo.Go.toInterface(_sec), stdgo.Go.toInterface(_newsec));
            };
            if (!_internal.time_test.Time_test__same._same(_tm?.__copy__(), _golden)) {
                _t.errorf(("SecondsToLocalTime(%d):" : stdgo.GoString), stdgo.Go.toInterface(_sec));
                _t.errorf(("  want=%+v" : stdgo.GoString), stdgo.Go.toInterface((_golden : _internal.time_test.Time_test_T_parsedTime.T_parsedTime)));
                _t.errorf(("  have=%+v" : stdgo.GoString), stdgo.Go.toInterface(_tm.format(("2006-01-02T15:04:05Z07:00 MST" : stdgo.GoString))));
            };
        };
    }
