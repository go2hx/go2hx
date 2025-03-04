package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ClientConn_asInterface) class T_http2ClientConn_static_extension {
    @:keep
    @:tdfield
    static public function ping( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error throw "T_http2ClientConn:net.http.ping is not yet implemented";
    @:keep
    @:tdfield
    static public function roundTrip( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "T_http2ClientConn:net.http.roundTrip is not yet implemented";
    @:keep
    @:tdfield
    static public function close( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo.Error throw "T_http2ClientConn:net.http.close is not yet implemented";
    @:keep
    @:tdfield
    static public function shutdown( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error throw "T_http2ClientConn:net.http.shutdown is not yet implemented";
    @:keep
    @:tdfield
    static public function state( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState throw "T_http2ClientConn:net.http.state is not yet implemented";
    @:keep
    @:tdfield
    static public function reserveNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool throw "T_http2ClientConn:net.http.reserveNewRequest is not yet implemented";
    @:keep
    @:tdfield
    static public function canTakeNewRequest( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Bool throw "T_http2ClientConn:net.http.canTakeNewRequest is not yet implemented";
    @:keep
    @:tdfield
    static public function setDoNotReuse( _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void throw "T_http2ClientConn:net.http.setDoNotReuse is not yet implemented";
}
