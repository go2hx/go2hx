package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_socksDialer_asInterface) class T_socksDialer_static_extension {
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "T_socksDialer:net.http.dial is not yet implemented";
    @:keep
    @:tdfield
    static public function dialWithConn( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.net.Net_conn.Conn, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_addr.Addr; var _1 : stdgo.Error; } throw "T_socksDialer:net.http.dialWithConn is not yet implemented";
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } throw "T_socksDialer:net.http.dialContext is not yet implemented";
}
