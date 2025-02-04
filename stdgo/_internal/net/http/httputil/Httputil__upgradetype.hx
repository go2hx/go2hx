package stdgo._internal.net.http.httputil;
function _upgradeType(_h:stdgo._internal.net.http.Http_header.Header):stdgo.GoString {
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return _h.get(("Upgrade" : stdgo.GoString))?.__copy__();
    }
