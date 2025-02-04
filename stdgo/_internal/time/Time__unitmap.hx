package stdgo._internal.time;
var _unitMap : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
        x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
        x.set(("ns" : stdgo.GoString), ((1i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("us" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("µs" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("μs" : stdgo.GoString), ((1000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("ms" : stdgo.GoString), ((1000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("s" : stdgo.GoString), ((1000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("m" : stdgo.GoString), ((60000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
x.set(("h" : stdgo.GoString), ((3600000000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo.GoUInt64));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
