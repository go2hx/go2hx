package stdgo._internal.net.http;
function _http2isConnectionCloseRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool {
        return ((@:checkr _req ?? throw "null pointer dereference").close || _internal.golang_dot_org.x.net.http.httpguts.Httpguts_headerValuesContainsToken.headerValuesContainsToken(((@:checkr _req ?? throw "null pointer dereference").header[("Connection" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("close" : stdgo.GoString)) : Bool);
    }
