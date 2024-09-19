package stdgo._internal.net.http;
function _http2foreachHeaderElement(_v:stdgo.GoString, _fn:stdgo.GoString -> Void):Void {
        _v = stdgo._internal.net.textproto.Textproto_trimString.trimString(_v?.__copy__())?.__copy__();
        if (_v == (stdgo.Go.str())) {
            return;
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_v?.__copy__(), ("," : stdgo.GoString))) {
            _fn(_v?.__copy__());
            return;
        };
        for (__143 => _f in stdgo._internal.strings.Strings_split.split(_v?.__copy__(), ("," : stdgo.GoString))) {
            {
                _f = stdgo._internal.net.textproto.Textproto_trimString.trimString(_f?.__copy__())?.__copy__();
                if (_f != (stdgo.Go.str())) {
                    _fn(_f?.__copy__());
                };
            };
        };
    }
