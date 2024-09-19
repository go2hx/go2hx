package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Before():Void {
        var _year2000 = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _year3000 = (stdgo._internal.time.Time_date.date((3000 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _isYear2000BeforeYear3000 = (_year2000.before(_year3000?.__copy__()) : Bool);
        var _isYear3000BeforeYear2000 = (_year3000.before(_year2000?.__copy__()) : Bool);
        stdgo._internal.fmt.Fmt_printf.printf(("year2000.Before(year3000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear2000BeforeYear3000));
        stdgo._internal.fmt.Fmt_printf.printf(("year3000.Before(year2000) = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_isYear3000BeforeYear2000));
    }
