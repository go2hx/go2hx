package stdgo._internal.net.http;
function serve(_l:stdgo._internal.net.Net_Listener.Listener, _handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Error {
        var _srv = (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return _srv.serve(_l);
    }
