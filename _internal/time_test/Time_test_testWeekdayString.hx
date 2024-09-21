package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testWeekdayString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __0 = (((2 : stdgo._internal.time.Time_Weekday.Weekday).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("Tuesday" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("Tuesday weekday = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        {
            var __0 = (((14 : stdgo._internal.time.Time_Weekday.Weekday).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("%!Weekday(14)" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("14th weekday = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
