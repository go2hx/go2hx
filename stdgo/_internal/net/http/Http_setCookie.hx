package stdgo._internal.net.http;
function setCookie(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _cookie:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>):Void {
        {
            var _v = ((_cookie.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_v != (stdgo.Go.str())) {
                _w.header().add(("Set-Cookie" : stdgo.GoString), _v?.__copy__());
            };
        };
    }
