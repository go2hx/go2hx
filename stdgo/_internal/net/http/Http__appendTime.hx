package stdgo._internal.net.http;
function _appendTime(_b:stdgo.Slice<stdgo.GoUInt8>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Slice<stdgo.GoUInt8> {
        {};
        {};
        _t = _t.utc()?.__copy__();
        var __tmp__ = _t.date(), _yy:stdgo.GoInt = __tmp__._0, _mm:stdgo._internal.time.Time_Month.Month = __tmp__._1, _dd:stdgo.GoInt = __tmp__._2;
        var __tmp__ = _t.clock(), _hh:stdgo.GoInt = __tmp__._0, _mn:stdgo.GoInt = __tmp__._1, _ss:stdgo.GoInt = __tmp__._2;
        var _day = ((("SunMonTueWedThuFriSat" : stdgo.GoString).__slice__(((3 : stdgo._internal.time.Time_Weekday.Weekday) * _t.weekday() : stdgo._internal.time.Time_Weekday.Weekday)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _mon = ((("JanFebMarAprMayJunJulAugSepOctNovDec" : stdgo.GoString).__slice__(((3 : stdgo._internal.time.Time_Month.Month) * ((_mm - (1 : stdgo._internal.time.Time_Month.Month) : stdgo._internal.time.Time_Month.Month)) : stdgo._internal.time.Time_Month.Month)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        return (_b.__append__(_day[(0 : stdgo.GoInt)],
_day[(1 : stdgo.GoInt)],
_day[(2 : stdgo.GoInt)],
(44 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_dd / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_dd % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
_mon[(0 : stdgo.GoInt)],
_mon[(1 : stdgo.GoInt)],
_mon[(2 : stdgo.GoInt)],
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_yy / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (((_yy / (100 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (((_yy / (10 : stdgo.GoInt) : stdgo.GoInt)) % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_yy % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_hh / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_hh % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_mn / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_mn % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(58 : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_ss / (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(((48 : stdgo.GoInt) + (_ss % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(71 : stdgo.GoUInt8),
(77 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8)));
    }
