package stdgo._internal.time;
function _daysIn(_m:stdgo._internal.time.Time_month.Month, _year:stdgo.GoInt):stdgo.GoInt {
        if (((_m == (2 : stdgo._internal.time.Time_month.Month)) && stdgo._internal.time.Time__isleap._isLeap(_year) : Bool)) {
            return (29 : stdgo.GoInt);
        };
        return ((stdgo._internal.time.Time__daysbefore._daysBefore[(_m : stdgo.GoInt)] - stdgo._internal.time.Time__daysbefore._daysBefore[((_m - (1 : stdgo._internal.time.Time_month.Month) : stdgo._internal.time.Time_month.Month) : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt);
    }
