package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Day():Void {
        var _d = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _day = (_d.day() : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_printf.printf(("day = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_day));
    }
