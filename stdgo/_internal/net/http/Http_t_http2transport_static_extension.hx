package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Transport_asInterface) class T_http2Transport_static_extension {
    @:keep
    @:tdfield
    static public function newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _c:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } throw "T_http2Transport:net.http.newClientConn is not yet implemented";
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Void throw "T_http2Transport:net.http.closeIdleConnections is not yet implemented";
    @:keep
    @:tdfield
    static public function roundTripOpt( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _opt:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "T_http2Transport:net.http.roundTripOpt is not yet implemented";
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "T_http2Transport:net.http.roundTrip is not yet implemented";
}
