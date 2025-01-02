package stdgo._internal.net.http;
typedef T_http2headersOrContinuation = stdgo.StructType & {
    > stdgo._internal.net.http.Http_T_http2headersEnder.T_http2headersEnder,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function headerBlockFragment():stdgo.Slice<stdgo.GoUInt8>;
};
