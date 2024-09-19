package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleFixedZone():Void {
        var _loc = stdgo._internal.time.Time_fixedZone.fixedZone(("UTC-8" : stdgo.GoString), (-28800 : stdgo.GoInt));
        var _t = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("The time is:" : stdgo.GoString)), stdgo.Go.toInterface(_t.format(("02 Jan 06 15:04 MST" : stdgo.GoString))));
    }
