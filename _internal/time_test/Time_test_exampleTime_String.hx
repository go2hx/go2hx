package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_String():Void {
        var _timeWithNanoseconds = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (14 : stdgo.GoInt), (15 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _withNanoseconds = ((_timeWithNanoseconds.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _timeWithoutNanoseconds = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (13 : stdgo.GoInt), (14 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _withoutNanoseconds = ((_timeWithoutNanoseconds.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_printf.printf(("withNanoseconds = %v\n" : stdgo.GoString), stdgo.Go.toInterface((_withNanoseconds : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_printf.printf(("withoutNanoseconds = %v\n" : stdgo.GoString), stdgo.Go.toInterface((_withoutNanoseconds : stdgo.GoString)));
    }
