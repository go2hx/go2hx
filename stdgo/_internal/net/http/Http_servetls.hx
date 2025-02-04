package stdgo._internal.net.http;
function serveTLS(_l:stdgo._internal.net.Net_listener.Listener, _handler:stdgo._internal.net.http.Http_handler.Handler, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        var _srv = (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return @:check2r _srv.serveTLS(_l, _certFile?.__copy__(), _keyFile?.__copy__());
    }
