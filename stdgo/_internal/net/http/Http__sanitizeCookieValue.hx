package stdgo._internal.net.http;
function _sanitizeCookieValue(_v:stdgo.GoString):stdgo.GoString {
        _v = stdgo._internal.net.http.Http__sanitizeOrWarn._sanitizeOrWarn(("Cookie.Value" : stdgo.GoString), stdgo._internal.net.http.Http__validCookieValueByte._validCookieValueByte, _v?.__copy__())?.__copy__();
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            return _v?.__copy__();
        };
        if (stdgo._internal.strings.Strings_containsAny.containsAny(_v?.__copy__(), (" ," : stdgo.GoString))) {
            return ((("\"" : stdgo.GoString) + _v?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _v?.__copy__();
    }
