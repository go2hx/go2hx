package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverConn_asInterface) class T_http2serverConn_static_extension {
    @:keep
    @:tdfield
    static public function headerEncoder( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):{ var _0 : stdgo.Ref<_internal.vendor.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; } throw "T_http2serverConn:net.http.headerEncoder is not yet implemented";
    @:keep
    @:tdfield
    static public function flush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error throw "T_http2serverConn:net.http.flush is not yet implemented";
    @:keep
    @:tdfield
    static public function closeConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error throw "T_http2serverConn:net.http.closeConn is not yet implemented";
    @:keep
    @:tdfield
    static public function framer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> throw "T_http2serverConn:net.http.framer is not yet implemented";
}
