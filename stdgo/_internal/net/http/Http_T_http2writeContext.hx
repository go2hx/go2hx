package stdgo._internal.net.http;
typedef T_http2writeContext = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function framer():stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>;
    /**
        
        
        
    **/
    public dynamic function flush():stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function closeConn():stdgo.Error;
    /**
        HeaderEncoder returns an HPACK encoder that writes to the
        returned buffer.
        
        
    **/
    public dynamic function headerEncoder():{ var _0 : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>; };
};
