package stdgo._internal.net.http.httputil;
function _upgradeType(_h:stdgo._internal.net.http.Http_Header.Header):stdgo.GoString {
        if (!_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        return _h.get(("Upgrade" : stdgo.GoString))?.__copy__();
    }
