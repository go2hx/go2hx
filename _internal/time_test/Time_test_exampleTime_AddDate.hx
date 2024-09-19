package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_AddDate():Void {
        var _start = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _oneDayLater = (_start.addDate((0 : stdgo.GoInt), (0 : stdgo.GoInt), (1 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _oneMonthLater = (_start.addDate((0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _oneYearLater = (_start.addDate((1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_printf.printf(("oneDayLater: start.AddDate(0, 0, 1) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneDayLater)));
        stdgo._internal.fmt.Fmt_printf.printf(("oneMonthLater: start.AddDate(0, 1, 0) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneMonthLater)));
        stdgo._internal.fmt.Fmt_printf.printf(("oneYearLater: start.AddDate(1, 0, 0) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_oneYearLater)));
    }
