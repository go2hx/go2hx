package stdgo._internal.time;
function _daysIn(_m:stdgo._internal.time.Time_month.Month, _year:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1059"
        if (((_m == (2 : stdgo._internal.time.Time_month.Month)) && stdgo._internal.time.Time__isleap._isLeap(_year) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1060"
            return (29 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/time/time.go#L1062"
        return ((stdgo._internal.time.Time__daysbefore._daysBefore[(_m : stdgo.GoInt)] - stdgo._internal.time.Time__daysbefore._daysBefore[((_m - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt);
    }
