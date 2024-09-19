package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseFractionalSecondsLongerThanNineDigits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__longFractionalDigitsTests._longFractionalDigitsTests) {
            for (__3 => _format in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_format?.__copy__(), _tt._value?.__copy__()), _tm:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%q, %q) error: %v" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(_err));
                    continue;
                };
                {
                    var _got = (_tm.nanosecond() : stdgo.GoInt);
                    if (_got != (_tt._want)) {
                        _t.errorf(("Parse(%q, %q) = got %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                    };
                };
            };
        };
    }
