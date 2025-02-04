package stdgo._internal.time;
function unix(_sec:stdgo.GoInt64, _nsec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time {
        if (((_nsec < (0i64 : stdgo.GoInt64) : Bool) || (_nsec >= (1000000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            var _n = (_nsec / (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
            _sec = (_sec + (_n) : stdgo.GoInt64);
            _nsec = (_nsec - ((_n * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
            if ((_nsec < (0i64 : stdgo.GoInt64) : Bool)) {
                _nsec = (_nsec + ((1000000000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
                _sec--;
            };
        };
        return stdgo._internal.time.Time__unixtime._unixTime(_sec, (_nsec : stdgo.GoInt32))?.__copy__();
    }
