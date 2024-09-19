package stdgo._internal.net.http;
@:keep class T_http2writeContext_static_extension {
    static public function headerEncoder(t:T_http2writeContext):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>; } return t.headerEncoder();
    static public function closeConn(t:T_http2writeContext):stdgo.Error return t.closeConn();
    static public function flush(t:T_http2writeContext):stdgo.Error return t.flush();
    static public function framer(t:T_http2writeContext):stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> return t.framer();
}
