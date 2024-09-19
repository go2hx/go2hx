package stdgo._internal.net.http;
function _http2canonicalHeader(_v:stdgo.GoString):stdgo.GoString {
        stdgo._internal.net.http.Http__http2buildCommonHeaderMapsOnce._http2buildCommonHeaderMapsOnce();
        {
            var __tmp__ = (stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader != null && stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader.exists(_v?.__copy__()) ? { _0 : stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _s?.__copy__();
            };
        };
        return stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_v?.__copy__())?.__copy__();
    }
