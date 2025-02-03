package stdgo.net.http;
class T_http2serverConn_static_extension {
    static public function headerEncoder(_sc:T_http2serverConn):stdgo.Tuple<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder, stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.headerEncoder(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flush(_sc:T_http2serverConn):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.flush(_sc);
    }
    static public function closeConn(_sc:T_http2serverConn):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.closeConn(_sc);
    }
    static public function framer(_sc:T_http2serverConn):T_http2Framer {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.framer(_sc);
    }
}
