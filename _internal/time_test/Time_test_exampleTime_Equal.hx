package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleTime_Equal():Void {
        var _secondsEastOfUTC = ((28800000000000i64 : stdgo._internal.time.Time_Duration.Duration).seconds() : stdgo.GoInt);
        var _beijing = stdgo._internal.time.Time_fixedZone.fixedZone(("Beijing Time" : stdgo.GoString), _secondsEastOfUTC);
        var _d1 = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (12 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _d2 = (stdgo._internal.time.Time_date.date((2000 : stdgo.GoInt), (2 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), _beijing)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var _datesEqualUsingEqualOperator = (stdgo.Go.toInterface(_d1) == stdgo.Go.toInterface(_d2) : Bool);
        var _datesEqualUsingFunction = (_d1.equal(_d2?.__copy__()) : Bool);
        stdgo._internal.fmt.Fmt_printf.printf(("datesEqualUsingEqualOperator = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_datesEqualUsingEqualOperator));
        stdgo._internal.fmt.Fmt_printf.printf(("datesEqualUsingFunction = %v\n" : stdgo.GoString), stdgo.Go.toInterface(_datesEqualUsingFunction));
    }
