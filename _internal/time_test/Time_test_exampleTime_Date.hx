package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Date():Void {
        var _d = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var __tmp__ = _d.date(), _year:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        stdgo._internal.fmt.Fmt_printf.printf(("year = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_year));
        stdgo._internal.fmt.Fmt_printf.printf(("month = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_month)));
        stdgo._internal.fmt.Fmt_printf.printf(("day = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_day));
    }
