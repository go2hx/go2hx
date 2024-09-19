package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__parseTimeZoneTests._parseTimeZoneTests) {
            var __tmp__ = stdgo._internal.time.Time_parseTimeZone.parseTimeZone(_test._value?.__copy__()), _length:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok != (_test._ok)) {
                _t.errorf(("expected %t for %q got %t" : stdgo.GoString), stdgo.Go.toInterface(_test._ok), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_ok));
            } else if (_length != (_test._length)) {
                _t.errorf(("expected %d for %q got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._length), stdgo.Go.toInterface(_test._value), stdgo.Go.toInterface(_length));
            };
        };
    }
