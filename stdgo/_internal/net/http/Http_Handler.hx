package stdgo._internal.net.http;
typedef Handler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function serveHTTP(_0:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _1:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void;
};
