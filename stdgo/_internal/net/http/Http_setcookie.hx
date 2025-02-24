package stdgo._internal.net.http;
function setCookie(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _cookie:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void {
        {
            var _v = ((@:check2r _cookie.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                _w.header().add(("Set-Cookie" : stdgo.GoString), _v?.__copy__());
            };
        };
    }
