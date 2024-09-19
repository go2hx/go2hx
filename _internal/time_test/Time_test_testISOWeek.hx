package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testISOWeek(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _wt in _internal.time_test.Time_test__isoWeekTests._isoWeekTests) {
            var _dt = (stdgo._internal.time.Time_date.date(_wt._year, (_wt._month : stdgo._internal.time.Time_Month.Month), _wt._day, (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var __tmp__ = _dt.isoweek(), _y:stdgo.GoInt = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
            if (((_w != _wt._wex) || (_y != _wt._yex) : Bool)) {
                _t.errorf(("got %d/%d; expected %d/%d for %d-%02d-%02d" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_wt._yex), stdgo.Go.toInterface(_wt._wex), stdgo.Go.toInterface(_wt._year), stdgo.Go.toInterface(_wt._month), stdgo.Go.toInterface(_wt._day));
            };
        };
        {
            var _year = (1950 : stdgo.GoInt);
            stdgo.Go.cfor((_year < (2100 : stdgo.GoInt) : Bool), _year++, {
                {
                    var __tmp__ = stdgo._internal.time.Time_date.date(_year, (1 : stdgo._internal.time.Time_Month.Month), (4 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc).isoweek(), _y:stdgo.GoInt = __tmp__._0, _w:stdgo.GoInt = __tmp__._1;
                    if (((_y != _year) || (_w != (1 : stdgo.GoInt)) : Bool)) {
                        _t.errorf(("got %d/%d; expected %d/1 for Jan 04" : stdgo.GoString), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_w), stdgo.Go.toInterface(_year));
                    };
                };
            });
        };
    }
