package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testYearDay(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _loc in _internal.time_test.Time_test__yearDayLocations._yearDayLocations) {
            for (__2 => _ydt in _internal.time_test.Time_test__yearDayTests._yearDayTests) {
                var _dt = (stdgo._internal.time.Time_date.date(_ydt._year, (_ydt._month : stdgo._internal.time.Time_Month.Month), _ydt._day, (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
                var _yday = (_dt.yearDay() : stdgo.GoInt);
                if (_yday != (_ydt._yday)) {
                    _t.errorf(("Date(%d-%02d-%02d in %v).YearDay() = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_ydt._year), stdgo.Go.toInterface(_ydt._month), stdgo.Go.toInterface(_ydt._day), stdgo.Go.toInterface(stdgo.Go.asInterface(_loc)), stdgo.Go.toInterface(_yday), stdgo.Go.toInterface(_ydt._yday));
                    continue;
                };
                if (((_ydt._year < (0 : stdgo.GoInt) : Bool) || (_ydt._year > (9999 : stdgo.GoInt) : Bool) : Bool)) {
                    continue;
                };
                var _f = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%04d-%02d-%02d %03d %+.2d00" : stdgo.GoString), stdgo.Go.toInterface(_ydt._year), stdgo.Go.toInterface(_ydt._month), stdgo.Go.toInterface(_ydt._day), stdgo.Go.toInterface(_ydt._yday), stdgo.Go.toInterface((((_i - (2 : stdgo.GoInt) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02 002 -0700" : stdgo.GoString), _f?.__copy__()), _dt1:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(\"2006-01-02 002 -0700\", %q): %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_err));
                    continue;
                };
                if (!_dt1.equal(_dt?.__copy__())) {
                    _t.errorf(("Parse(\"2006-01-02 002 -0700\", %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)));
                };
            };
        };
    }
