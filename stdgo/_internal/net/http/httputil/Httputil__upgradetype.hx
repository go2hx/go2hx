package stdgo._internal.net.http.httputil;
function _upgradeType(_h:stdgo._internal.net.http.Http_header.Header):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L720"
        if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L721"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/reverseproxy.go#L723"
        return _h.get(("Upgrade" : stdgo.GoString))?.__copy__();
    }
