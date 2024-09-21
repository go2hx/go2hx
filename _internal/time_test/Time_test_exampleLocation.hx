package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleLocation():Void {
        var _secondsEastOfUTC = ((28800000000000i64 : stdgo._internal.time.Time_Duration.Duration).seconds() : stdgo.GoInt);
        var _beijing = stdgo._internal.time.Time_fixedZone.fixedZone(("Beijing Time" : stdgo.GoString), _secondsEastOfUTC);
        var _timeInUTC = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _sameTimeInBeijing = (stdgo._internal.time.Time_date.date((2009 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (20 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _beijing)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _timesAreEqual = (_timeInUTC.equal(_sameTimeInBeijing?.__copy__()) : Bool);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_timesAreEqual));
    }
