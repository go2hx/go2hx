package stdgo._internal.time;
function _daysIn(_m:stdgo._internal.time.Time_Month.Month, _year:stdgo.GoInt):stdgo.GoInt {
        if (((_m == (2 : stdgo._internal.time.Time_Month.Month)) && stdgo._internal.time.Time__isLeap._isLeap(_year) : Bool)) {
            return (29 : stdgo.GoInt);
        };
        return ((stdgo._internal.time.Time__daysBefore._daysBefore[(_m : stdgo.GoInt)] - stdgo._internal.time.Time__daysBefore._daysBefore[((_m - (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month) : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt);
    }
