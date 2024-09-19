package stdgo._internal.net.http;
function _http2isConnectionCloseRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        return (_req.close || _internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken((_req.header[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("close" : stdgo.GoString)) : Bool);
    }
