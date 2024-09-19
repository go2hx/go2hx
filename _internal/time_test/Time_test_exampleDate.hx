package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleDate():Void {
        var _t = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_printf.printf(("Go launched at %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t.local())));
    }
