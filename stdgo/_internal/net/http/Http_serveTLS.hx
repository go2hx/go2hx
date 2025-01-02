package stdgo._internal.net.http;
function serveTLS(_l:stdgo._internal.net.Net_Listener.Listener, _handler:stdgo._internal.net.http.Http_Handler.Handler, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error {
        var _srv = (stdgo.Go.setRef(({ handler : _handler } : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return @:check2r _srv.serveTLS(_l, _certFile?.__copy__(), _keyFile?.__copy__());
    }
