package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.ServeMux_asInterface) class ServeMux_static_extension {
    @:keep
    @:tdfield
    static public function handleFunc( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void throw "ServeMux:net.http.handleFunc is not yet implemented";
    @:keep
    @:tdfield
    static public function handle( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _pattern:stdgo.GoString, _handler:stdgo._internal.net.http.Http_handler.Handler):Void throw "ServeMux:net.http.handle is not yet implemented";
    @:keep
    @:tdfield
    static public function serveHTTP( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void throw "ServeMux:net.http.serveHTTP is not yet implemented";
    @:keep
    @:tdfield
    static public function handler( _mux:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo._internal.net.http.Http_handler.Handler; var _1 : stdgo.GoString; } throw "ServeMux:net.http.handler is not yet implemented";
}
