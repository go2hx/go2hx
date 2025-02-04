package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverConn_asInterface) class T_http2serverConn_static_extension {
    @:keep
    @:tdfield
    static public function headerEncoder( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        return { _0 : (@:checkr _sc ?? throw "null pointer dereference")._hpackEncoder, _1 : (stdgo.Go.setRef((@:checkr _sc ?? throw "null pointer dereference")._headerWriteBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) };
    }
    @:keep
    @:tdfield
    static public function flush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        return @:check2r (@:checkr _sc ?? throw "null pointer dereference")._bw.flush();
    }
    @:keep
    @:tdfield
    static public function closeConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        return (@:checkr _sc ?? throw "null pointer dereference")._conn.close();
    }
    @:keep
    @:tdfield
    static public function framer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        return (@:checkr _sc ?? throw "null pointer dereference")._framer;
    }
}
