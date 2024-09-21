package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseDayOutOfRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__dayOutOfRangeTests._dayOutOfRangeTests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon Jan _2 15:04:05 2006" : stdgo.GoString), _test._date?.__copy__()), __3:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_test._ok && (_err == null) : Bool)) {} else if ((!_test._ok && (_err != null) : Bool)) {
                if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("day out of range" : stdgo.GoString))) {
                    _t.errorf(("%q: expected \'day\' error, got %v" : stdgo.GoString), stdgo.Go.toInterface(_test._date), stdgo.Go.toInterface(_err));
                };
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._date), stdgo.Go.toInterface(_err));
            } else if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%q: expected \'day\' error, got none" : stdgo.GoString), stdgo.Go.toInterface(_test._date));
            };
        };
    }
