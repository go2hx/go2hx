package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testZeroMonthString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var __0 = (((0 : stdgo._internal.time.Time_Month.Month).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ("%!Month(0)" : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                _t.errorf(("zero month = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
