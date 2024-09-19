package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _same(_t:stdgo._internal.time.Time_Time.Time, _u:stdgo.Ref<_internal.time_test.Time_test_T_parsedTime.T_parsedTime>):Bool {
        var __tmp__ = _t.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hour:stdgo.GoInt = __tmp__._0, _min:stdgo.GoInt = __tmp__._1, _sec:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.zone(), _name:stdgo.GoString = __tmp__._0, _offset:stdgo.GoInt = __tmp__._1;
        if ((((((((_year != (_u.year) || _month != (_u.month) : Bool) || _day != (_u.day) : Bool) || _hour != (_u.hour) : Bool) || _min != (_u.minute) : Bool) || _sec != (_u.second) : Bool) || _name != (_u.zone) : Bool) || (_offset != _u.zoneOffset) : Bool)) {
            return false;
        };
        return (((((((_t.year() == (_u.year) && _t.month() == (_u.month) : Bool) && _t.day() == (_u.day) : Bool) && _t.hour() == (_u.hour) : Bool) && _t.minute() == (_u.minute) : Bool) && _t.second() == (_u.second) : Bool) && _t.nanosecond() == (_u.nanosecond) : Bool) && (_t.weekday() == _u.weekday) : Bool);
    }
