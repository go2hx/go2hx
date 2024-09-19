package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleMonth():Void {
        var __tmp__ = stdgo._internal.time.Time_now.now().date(), __2:stdgo.GoInt = __tmp__._0, _month:stdgo._internal.time.Time_Month.Month = __tmp__._1, _day:stdgo.GoInt = __tmp__._2;
        if (((_month == (11 : stdgo._internal.time.Time_Month.Month)) && (_day == (10 : stdgo.GoInt)) : Bool)) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Happy Go day!" : stdgo.GoString)));
        };
    }
