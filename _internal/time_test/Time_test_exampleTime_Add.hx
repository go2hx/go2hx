package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Add():Void {
        var _start = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _afterTenSeconds = (_start.add((10000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _afterTenMinutes = (_start.add((600000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _afterTenHours = (_start.add((36000000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _afterTenDays = (_start.add((864000000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_printf.printf(("start = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_start)));
        stdgo._internal.fmt.Fmt_printf.printf(("start.Add(time.Second * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenSeconds)));
        stdgo._internal.fmt.Fmt_printf.printf(("start.Add(time.Minute * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenMinutes)));
        stdgo._internal.fmt.Fmt_printf.printf(("start.Add(time.Hour * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenHours)));
        stdgo._internal.fmt.Fmt_printf.printf(("start.Add(time.Hour * 24 * 10) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_afterTenDays)));
    }
