package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Truncate():Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006 Jan 02 15:04:05" : stdgo.GoString), ("2012 Dec 07 12:15:30.918273645" : stdgo.GoString)), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, __2:stdgo.Error = __tmp__._1;
        var _trunc = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(7, 7, ...[(1i64 : stdgo._internal.time.Time_Duration.Duration), (1000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (2000000000i64 : stdgo._internal.time.Time_Duration.Duration), (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), (600000000000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        for (__3 => _d in _trunc) {
            stdgo._internal.fmt.Fmt_printf.printf(("t.Truncate(%5s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_t.truncate(_d).format(("15:04:05.999999999" : stdgo.GoString))));
        };
        var _midnight = (stdgo._internal.time.Time_date.date(_t.year(), _t.month(), _t.day(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_local.local)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var __blank__ = _midnight;
    }
