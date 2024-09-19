package stdgo._internal.net.http;
function listenAndServe(_addr:stdgo.GoString, _handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Error {
        var _server = (stdgo.Go.setRef(({ addr : _addr?.__copy__(), handler : _handler } : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return _server.listenAndServe();
    }
