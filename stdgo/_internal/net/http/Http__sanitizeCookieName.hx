package stdgo._internal.net.http;
function _sanitizeCookieName(_n:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.net.http.Http__cookieNameSanitizer._cookieNameSanitizer.replace(_n?.__copy__())?.__copy__();
    }
