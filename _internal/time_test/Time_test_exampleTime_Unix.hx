package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Unix():Void {
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_unix.unix((1000000000i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)).utc())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (1000000000000000000i64 : stdgo.GoInt64)).utc())));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_unix.unix((2000000000i64 : stdgo.GoInt64), (-1000000000000000000i64 : stdgo.GoInt64)).utc())));
        var _t = (stdgo._internal.time.Time_date.date((2001 : stdgo.GoInt), (9 : stdgo._internal.time.Time_Month.Month), (9 : stdgo.GoInt), (1 : stdgo.GoInt), (46 : stdgo.GoInt), (40 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.unix()));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.unixNano()));
    }
