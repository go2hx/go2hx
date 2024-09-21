package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleParse():Void {
        {};
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("Jan 2, 2006 at 3:04pm (MST)" : stdgo.GoString), ("Feb 3, 2013 at 7:54pm (PST)" : stdgo.GoString)), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {};
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-Jan-02" : stdgo.GoString), ("2013-Feb-03" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05+07:00" : stdgo.GoString));
            _t = __tmp__._0?.__copy__();
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)), __3:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error" : stdgo.GoString)), stdgo.Go.toInterface(_err));
    }
