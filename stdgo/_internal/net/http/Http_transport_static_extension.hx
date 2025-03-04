package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Transport_asInterface) class Transport_static_extension {
    @:keep
    @:tdfield
    static public function cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void throw "Transport:net.http.cancelRequest is not yet implemented";
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):Void throw "Transport:net.http.closeIdleConnections is not yet implemented";
    @:keep
    @:tdfield
    static public function registerProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper):Void throw "Transport:net.http.registerProtocol is not yet implemented";
    @:keep
    @:tdfield
    static public function clone( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> throw "Transport:net.http.clone is not yet implemented";
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Transport:net.http.roundTrip is not yet implemented";
}
