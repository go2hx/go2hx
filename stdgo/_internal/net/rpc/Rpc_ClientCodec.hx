package stdgo._internal.net.rpc;
typedef ClientCodec = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function writeRequest(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _1:stdgo.AnyInterface):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readResponseHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function readResponseBody(_0:stdgo.AnyInterface):stdgo.Error;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function close():stdgo.Error;
};
