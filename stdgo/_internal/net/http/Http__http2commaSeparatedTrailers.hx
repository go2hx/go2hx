package stdgo._internal.net.http;
function _http2commaSeparatedTrailers(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_req.trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _ in _req.trailer) {
            _k = stdgo._internal.net.http.Http__http2canonicalHeader._http2canonicalHeader(_k?.__copy__())?.__copy__();
            {
                final __value__ = _k;
                if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid Trailer key %q" : stdgo.GoString), stdgo.Go.toInterface(_k)) };
                };
            };
            _keys = (_keys.__append__(_k?.__copy__()));
        };
        if (((_keys.length) > (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.sort.Sort_strings.strings(_keys);
            return { _0 : stdgo._internal.strings.Strings_join.join(_keys, ("," : stdgo.GoString))?.__copy__(), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Error) };
    }
