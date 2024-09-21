package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__parseTests._parseTests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_test._format?.__copy__(), _test._value?.__copy__()), _time:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
            } else {
                _internal.time_test.Time_test__checkTime._checkTime(_time?.__copy__(), (stdgo.Go.setRef(_test) : stdgo.Ref<_internal.time_test.Time_test_ParseTest.ParseTest>), _t);
            };
        };
    }
