package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
@:structInit class T_parsedTime {
    public var year : stdgo.GoInt = 0;
    public var month : stdgo._internal.time.Time_Month.Month = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_Month.Month);
    public var day : stdgo.GoInt = 0;
    public var hour : stdgo.GoInt = 0;
    public var minute : stdgo.GoInt = 0;
    public var second : stdgo.GoInt = 0;
    public var nanosecond : stdgo.GoInt = 0;
    public var weekday : stdgo._internal.time.Time_Weekday.Weekday = ((0 : stdgo.GoInt) : stdgo._internal.time.Time_Weekday.Weekday);
    public var zoneOffset : stdgo.GoInt = 0;
    public var zone : stdgo.GoString = "";
    public function new(?year:stdgo.GoInt, ?month:stdgo._internal.time.Time_Month.Month, ?day:stdgo.GoInt, ?hour:stdgo.GoInt, ?minute:stdgo.GoInt, ?second:stdgo.GoInt, ?nanosecond:stdgo.GoInt, ?weekday:stdgo._internal.time.Time_Weekday.Weekday, ?zoneOffset:stdgo.GoInt, ?zone:stdgo.GoString) {
        if (year != null) this.year = year;
        if (month != null) this.month = month;
        if (day != null) this.day = day;
        if (hour != null) this.hour = hour;
        if (minute != null) this.minute = minute;
        if (second != null) this.second = second;
        if (nanosecond != null) this.nanosecond = nanosecond;
        if (weekday != null) this.weekday = weekday;
        if (zoneOffset != null) this.zoneOffset = zoneOffset;
        if (zone != null) this.zone = zone;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parsedTime(year, month, day, hour, minute, second, nanosecond, weekday, zoneOffset, zone);
    }
}
