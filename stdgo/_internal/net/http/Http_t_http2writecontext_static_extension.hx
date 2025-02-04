package stdgo._internal.net.http;
@:keep class T_http2writeContext_static_extension {
    @:interfacetypeffun
    static public function headerEncoder(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; } return t.headerEncoder();
    @:interfacetypeffun
    static public function closeConn(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error return t.closeConn();
    @:interfacetypeffun
    static public function flush(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error return t.flush();
    @:interfacetypeffun
    static public function framer(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> return t.framer();
}
