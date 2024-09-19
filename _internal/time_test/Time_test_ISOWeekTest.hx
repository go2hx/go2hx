package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class ISOWeekTest {
    public var _year : stdgo.GoInt = 0;
    public var _month : stdgo.GoInt = 0;
    public var _day : stdgo.GoInt = 0;
    public var _yex : stdgo.GoInt = 0;
    public var _wex : stdgo.GoInt = 0;
    public function new(?_year:stdgo.GoInt, ?_month:stdgo.GoInt, ?_day:stdgo.GoInt, ?_yex:stdgo.GoInt, ?_wex:stdgo.GoInt) {
        if (_year != null) this._year = _year;
        if (_month != null) this._month = _month;
        if (_day != null) this._day = _day;
        if (_yex != null) this._yex = _yex;
        if (_wex != null) this._wex = _wex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ISOWeekTest(_year, _month, _day, _yex, _wex);
    }
}
