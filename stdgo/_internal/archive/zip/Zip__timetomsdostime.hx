package stdgo._internal.archive.zip;
function _timeToMsDosTime(_t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } {
        var _fDate = (0 : stdgo.GoUInt16), _fTime = (0 : stdgo.GoUInt16);
        _fDate = (((_t.day() + ((_t.month() : stdgo.GoInt) << (5i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) + (((_t.year() - (1980 : stdgo.GoInt) : stdgo.GoInt)) << (9i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        _fTime = ((((_t.second() / (2 : stdgo.GoInt) : stdgo.GoInt) + (_t.minute() << (5i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) + (_t.hour() << (11i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16);
        return { _0 : _fDate, _1 : _fTime };
    }
