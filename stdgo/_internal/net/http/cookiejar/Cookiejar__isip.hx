package stdgo._internal.net.http.cookiejar;
function _isIP(_host:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/net/http/cookiejar/jar.go#L365"
        return stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) != null;
    }
