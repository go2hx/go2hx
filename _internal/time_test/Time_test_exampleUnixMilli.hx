package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleUnixMilli():Void {
        var _umt = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_umt.unixMilli()));
        var _t = (stdgo._internal.time.Time_unixMilli.unixMilli(_umt.unixMilli()).utc()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
    }
