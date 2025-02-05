package stdgo._internal.net.http;
@:interface typedef T_http2writeContext = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function framer():stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function closeConn():stdgo.Error;
    /**
        * HeaderEncoder returns an HPACK encoder that writes to the
        * returned buffer.
        
        
    **/
    @:interfacetypeffun
    public dynamic function headerEncoder():{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; };
};
