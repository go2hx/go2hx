package stdgo._internal.net.http;
function parseTime(_text:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        var _t = ({} : stdgo._internal.time.Time_time.Time), _err = (null : stdgo.Error);
        for (__4 => _layout in stdgo._internal.net.http.Http__timeformats._timeFormats) {
            {
                var __tmp__ = stdgo._internal.net.http.Http__time._time.parse(_layout?.__copy__(), _text?.__copy__());
                _t = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err == null) {
                return { _0 : _t, _1 : _err };
            };
        };
        return { _0 : _t, _1 : _err };
    }
