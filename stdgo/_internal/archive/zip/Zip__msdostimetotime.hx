package stdgo._internal.archive.zip;
function _msDosTimeToTime(_dosDate:stdgo.GoUInt16, _dosTime:stdgo.GoUInt16):stdgo._internal.time.Time_time.Time {
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/struct.go#L250"
        return stdgo._internal.time.Time_date.date((((_dosDate >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt16) + (1980 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosDate >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo._internal.time.Time_month.Month), ((_dosDate & (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), ((_dosTime >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosTime >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt16) & (63 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (((_dosTime & (31 : stdgo.GoUInt16) : stdgo.GoUInt16) * (2 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.uTC)?.__copy__();
    }
