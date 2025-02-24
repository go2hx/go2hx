package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Server_asInterface) class Server_static_extension {
    @:keep
    @:tdfield
    static public function listenAndServeTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error throw "Server:net.http.listenAndServeTLS is not yet implemented";
    @:keep
    @:tdfield
    static public function setKeepAlivesEnabled( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _v:Bool):Void throw "Server:net.http.setKeepAlivesEnabled is not yet implemented";
    @:keep
    @:tdfield
    static public function serveTLS( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error throw "Server:net.http.serveTLS is not yet implemented";
    @:keep
    @:tdfield
    static public function serve( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _l:stdgo._internal.net.Net_listener.Listener):stdgo.Error throw "Server:net.http.serve is not yet implemented";
    @:keep
    @:tdfield
    static public function listenAndServe( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error throw "Server:net.http.listenAndServe is not yet implemented";
    @:keep
    @:tdfield
    static public function registerOnShutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _f:() -> Void):Void throw "Server:net.http.registerOnShutdown is not yet implemented";
    @:keep
    @:tdfield
    static public function shutdown( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error throw "Server:net.http.shutdown is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _srv:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>):stdgo.Error throw "Server:net.http.close is not yet implemented";
}
