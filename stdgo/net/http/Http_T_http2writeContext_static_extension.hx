package stdgo.net.http;
class T_http2writeContext_static_extension {
    static public function headerEncoder(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Tuple<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder, stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.headerEncoder(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeConn(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.closeConn(t);
    }
    static public function flush(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.flush(t);
    }
    static public function framer(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):T_http2Framer {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.framer(t);
    }
}
