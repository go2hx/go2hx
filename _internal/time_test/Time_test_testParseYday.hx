package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testParseYday(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.parallel();
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (365 : stdgo.GoInt) : Bool), _i++, {
                var _d = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("2020-%03d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-002" : stdgo.GoString), _d?.__copy__()), _tm:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("unexpected error for %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                } else if (((_tm.year() != (2020 : stdgo.GoInt)) || (_tm.yearDay() != _i) : Bool)) {
                    _t.errorf(("got year %d yearday %d, want %d %d" : stdgo.GoString), stdgo.Go.toInterface(_tm.year()), stdgo.Go.toInterface(_tm.yearDay()), stdgo.Go.toInterface((2020 : stdgo.GoInt)), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
