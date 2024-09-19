package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Round():Void {
        var _t = (stdgo._internal.time.Time_date.date((0 : stdgo.GoInt), (0 : stdgo._internal.time.Time_Month.Month), (0 : stdgo.GoInt), (12 : stdgo.GoInt), (15 : stdgo.GoInt), (30 : stdgo.GoInt), (918273645 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _round = (new stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>(8, 8, ...[(1i64 : stdgo._internal.time.Time_Duration.Duration), (1000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000i64 : stdgo._internal.time.Time_Duration.Duration), (1000000000i64 : stdgo._internal.time.Time_Duration.Duration), (2000000000i64 : stdgo._internal.time.Time_Duration.Duration), (60000000000i64 : stdgo._internal.time.Time_Duration.Duration), (600000000000i64 : stdgo._internal.time.Time_Duration.Duration), (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_Duration.Duration>);
        for (__2 => _d in _round) {
            stdgo._internal.fmt.Fmt_printf.printf(("t.Round(%6s) = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_d)), stdgo.Go.toInterface(_t.round(_d).format(("15:04:05.999999999" : stdgo.GoString))));
        };
    }
