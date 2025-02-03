package stdgo.net.http;
class Server_static_extension {
    static public function listenAndServeTLS(_srv:Server, _certFile:String, _keyFile:String):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.listenAndServeTLS(_srv, _certFile, _keyFile);
    }
    static public function setKeepAlivesEnabled(_srv:Server, _v:Bool):Void {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.setKeepAlivesEnabled(_srv, _v);
    }
    static public function serveTLS(_srv:Server, _l:stdgo._internal.net.Net_Listener.Listener, _certFile:String, _keyFile:String):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.serveTLS(_srv, _l, _certFile, _keyFile);
    }
    static public function serve(_srv:Server, _l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.serve(_srv, _l);
    }
    static public function listenAndServe(_srv:Server):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.listenAndServe(_srv);
    }
    static public function registerOnShutdown(_srv:Server, _f:() -> Void):Void {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        final _f = _f;
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.registerOnShutdown(_srv, _f);
    }
    static public function shutdown(_srv:Server, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.shutdown(_srv, _ctx);
    }
    static public function close(_srv:Server):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.close(_srv);
    }
}
