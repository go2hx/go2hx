package stdgo._internal.net.http.httputil;
function _removeHopByHopHeaders(_h:stdgo._internal.net.http.Http_header.Header):Void {
        for (__0 => _f in (_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            for (__1 => _sf in stdgo._internal.strings.Strings_split.split(_f?.__copy__(), ("," : stdgo.GoString))) {
                {
                    _sf = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_sf?.__copy__())?.__copy__();
                    if (_sf != ((stdgo.Go.str() : stdgo.GoString))) {
                        _h.del(_sf?.__copy__());
                    };
                };
            };
        };
        for (__1 => _f in stdgo._internal.net.http.httputil.Httputil__hopheaders._hopHeaders) {
            _h.del(_f?.__copy__());
        };
    }
