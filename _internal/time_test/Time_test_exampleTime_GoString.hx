package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_GoString():Void {
        var _t = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (11 : stdgo._internal.time.Time_Month.Month), (10 : stdgo.GoInt), (23 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.goString()));
        _t = _t.add((60000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.goString()));
        _t = _t.addDate((0 : stdgo.GoInt), (1 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.goString()));
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Feb 3, 2013 at 7:54pm (UTC)" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_t.goString()));
    }
