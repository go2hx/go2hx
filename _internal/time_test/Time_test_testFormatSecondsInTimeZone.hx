package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormatSecondsInTimeZone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in _internal.time_test.Time_test__secondsTimeZoneOffsetTests._secondsTimeZoneOffsetTests) {
            var _d = (stdgo._internal.time.Time_date.date((1871 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (33 : stdgo.GoInt), (2 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_fixedZone.fixedZone(("LMT" : stdgo.GoString), _test._expectedoffset))?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _timestr = (_d.format(_test._format?.__copy__())?.__copy__() : stdgo.GoString);
            if (_timestr != (_test._value)) {
                _t.errorf(("Format = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_timestr), stdgo.Go.toInterface(_test._value));
            };
        };
    }
