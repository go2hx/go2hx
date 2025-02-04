package stdgo._internal.time;
function unixMilli(_msec:stdgo.GoInt64):stdgo._internal.time.Time_time.Time {
        return stdgo._internal.time.Time_unix.unix((_msec / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), (((_msec % (1000i64 : stdgo.GoInt64) : stdgo.GoInt64)) * (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64))?.__copy__();
    }
