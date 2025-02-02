package stdgo._internal.net.http;
@:interface typedef T_http2ClientConnPool = stdgo.StructType & {
    /**
        GetClientConn returns a specific HTTP/2 connection (usually
        a TLS-TCP connection) to an HTTP/2 server. On success, the
        returned ClientConn accounts for the upcoming RoundTrip
        call, so the caller should not omit it. If the caller needs
        to, ClientConn.RoundTrip can be called with a bogus
        new(http.Request) to release the stream reservation.
        
        
    **/
    @:interfacetypeffun
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function markDead(_0:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):Void;
};
