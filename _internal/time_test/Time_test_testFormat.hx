package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _time = (stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (1233810057012345600i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        for (__2 => _test in _internal.time_test.Time_test__formatTests._formatTests) {
            var _result = (_time.format(_test._format?.__copy__())?.__copy__() : stdgo.GoString);
            if (_result != (_test._result)) {
                _t.errorf(("%s expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._result), stdgo.Go.toInterface(_result));
            };
        };
    }
