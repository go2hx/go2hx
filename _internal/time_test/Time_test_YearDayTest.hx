package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class YearDayTest {
    public var _year : stdgo.GoInt = 0;
    public var _month : stdgo.GoInt = 0;
    public var _day : stdgo.GoInt = 0;
    public var _yday : stdgo.GoInt = 0;
    public function new(?_year:stdgo.GoInt, ?_month:stdgo.GoInt, ?_day:stdgo.GoInt, ?_yday:stdgo.GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yday != null) this._yday = _yday;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YearDayTest(_year, _month, _day, _yday);
    }
}
