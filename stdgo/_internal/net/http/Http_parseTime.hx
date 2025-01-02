package stdgo._internal.net.http;
function parseTime(_text:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_Time.Time; var _1 : stdgo.Error; } {
        var _t = ({} : stdgo._internal.time.Time_Time.Time), _err = (null : stdgo.Error);
        for (__137 => _layout in stdgo._internal.net.http.Http__timeFormats._timeFormats) {
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_layout?.__copy__(), _text?.__copy__());
                _t = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err == null) {
                return { _0 : _t, _1 : _err };
            };
        };
        return { _0 : _t, _1 : _err };
    }
