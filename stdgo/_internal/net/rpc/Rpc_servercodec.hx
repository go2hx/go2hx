package stdgo._internal.net.rpc;
@:interface typedef ServerCodec = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readRequestHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readRequestBody(_0:stdgo.AnyInterface):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeResponse(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>, _1:stdgo.AnyInterface):stdgo.Error;
    /**
        * Close can be called multiple times and must be idempotent.
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
};
