package stdgo._internal.time;
function parseInLocation(_layout:stdgo.GoString, _value:stdgo.GoString, _loc:stdgo.Ref<stdgo._internal.time.Time_location.Location>):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1024"
        if (((_layout == ("2006-01-02T15:04:05Z07:00" : stdgo.GoString)) || (_layout == ("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1025"
            {
                var __tmp__ = stdgo._internal.time.Time__parserfc3339._parseRFC3339(_value?.__copy__(), _loc), _t:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1026"
                    return { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L1029"
        return stdgo._internal.time.Time__parse._parse(_layout?.__copy__(), _value?.__copy__(), _loc, _loc);
    }
