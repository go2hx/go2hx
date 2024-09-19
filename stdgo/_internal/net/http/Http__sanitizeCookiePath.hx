package stdgo._internal.net.http;
function _sanitizeCookiePath(_v:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.http.Http__sanitizeOrWarn._sanitizeOrWarn(("Cookie.Path" : stdgo.GoString), stdgo._internal.net.http.Http__validCookiePathByte._validCookiePathByte, _v?.__copy__())?.__copy__();
    }
