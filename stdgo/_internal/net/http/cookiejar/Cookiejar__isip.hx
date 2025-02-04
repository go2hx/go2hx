package stdgo._internal.net.http.cookiejar;
function _isIP(_host:stdgo.GoString):Bool {
        return stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) != null;
    }
