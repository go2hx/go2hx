package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseSecondsInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__secondsTimeZoneOffsetTests._secondsTimeZoneOffsetTests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_test._format?.__copy__(), _test._value?.__copy__()), _time:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(("error parsing date:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
            var __tmp__ = _time.zone(), __3:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
            if (_offset != (_test._expectedoffset)) {
                _t.errorf(("ZoneOffset = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_test._expectedoffset));
            };
        };
    }
