package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseMonthOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__monthOutOfRangeTests._monthOutOfRangeTests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("01-02" : stdgo.GoString), _test._value?.__copy__()), __3:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((!_test._ok && (_err != null) : Bool)) {
                if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("month out of range" : stdgo.GoString))) {
                    _t.errorf(("%q: expected \'month\' error, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
                };
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_err));
            } else if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%q: expected \'month\' error, got none" : stdgo.GoString), stdgo.Go.toInterface(_test._value));
            };
        };
    }
