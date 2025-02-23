package stdgo._internal.net.http;
function listenAndServeTLS(_addr:stdgo.GoString, _certFile:stdgo.GoString, _keyFile:stdgo.GoString, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        var _server = (stdgo.Go.setRef(({ addr : _addr?.__copy__(), handler : _handler } : stdgo._internal.net.http.Http_server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return @:check2r _server.listenAndServeTLS(_certFile?.__copy__(), _keyFile?.__copy__());
    }
