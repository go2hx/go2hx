package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function parse(_layout:stdgo.GoString, _value:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        if (((_layout == ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) || (_layout == ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : Bool)) {
            {
                var __tmp__ = stdgo._internal.time.Time__parseRFC3339._parseRFC3339(_value?.__copy__(), stdgo._internal.time.Time_local.local), _t:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        return stdgo._internal.time.Time__parse._parse(_layout?.__copy__(), _value?.__copy__(), stdgo._internal.time.Time_utc.utc, stdgo._internal.time.Time_local.local);
    }