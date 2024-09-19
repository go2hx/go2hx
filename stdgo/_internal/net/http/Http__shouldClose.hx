package stdgo._internal.net.http;
function _shouldClose(_major:stdgo.GoInt, _minor:stdgo.GoInt, _header:stdgo._internal.net.http.Http_Header.Header, _removeCloseHeader:Bool):Bool {
        if ((_major < (1 : stdgo.GoInt) : Bool)) {
            return true;
        };
        var _conv = (_header[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        var _hasClose = (_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken(_conv, ("close" : stdgo.GoString)) : Bool);
        if (((_major == (1 : stdgo.GoInt)) && (_minor == (0 : stdgo.GoInt)) : Bool)) {
            return (_hasClose || !_internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken(_conv, ("keep-alive" : stdgo.GoString)) : Bool);
        };
        if ((_hasClose && _removeCloseHeader : Bool)) {
            _header.del(("Connection" : stdgo.GoString));
        };
        return _hasClose;
    }
