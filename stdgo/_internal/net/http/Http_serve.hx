package stdgo._internal.net.http;
function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Error {
        var _srv = (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return @:check2r _srv.serve(_l);
    }
