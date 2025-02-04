package stdgo._internal.time;
function now():stdgo._internal.time.Time_time.Time {
        var __tmp__ = stdgo._internal.time.Time__now._now(), _sec:stdgo.GoInt64 = __tmp__._0, _nsec:stdgo.GoInt32 = __tmp__._1, _mono:stdgo.GoInt64 = __tmp__._2;
        _mono = (_mono - (stdgo._internal.time.Time__startnano._startNano) : stdgo.GoInt64);
        _sec = (_sec + ((2682288000i64 : stdgo.GoInt64)) : stdgo.GoInt64);
        if (((_sec : stdgo.GoUInt64) >> (33i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
            return (new stdgo._internal.time.Time_time.Time((_nsec : stdgo.GoUInt64), (_sec + (59453308800i64 : stdgo.GoInt64) : stdgo.GoInt64), stdgo._internal.time.Time_local.local) : stdgo._internal.time.Time_time.Time);
        };
        return (new stdgo._internal.time.Time_time.Time((((-9223372036854775808i64 : stdgo.GoUInt64) | ((_sec : stdgo.GoUInt64) << (30i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_nsec : stdgo.GoUInt64) : stdgo.GoUInt64), _mono, stdgo._internal.time.Time_local.local) : stdgo._internal.time.Time_time.Time);
    }
