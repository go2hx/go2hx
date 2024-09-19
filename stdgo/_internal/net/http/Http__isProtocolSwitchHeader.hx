package stdgo._internal.net.http;
function _isProtocolSwitchHeader(_h:stdgo._internal.net.http.Http_Header.Header):Bool {
        return ((_h.get(("Upgrade" : stdgo.GoString)) != stdgo.Go.str()) && _internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_h[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("Upgrade" : stdgo.GoString)) : Bool);
    }
