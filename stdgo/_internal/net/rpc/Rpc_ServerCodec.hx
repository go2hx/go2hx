package stdgo._internal.net.rpc;
typedef ServerCodec = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function readRequestHeader(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>):stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function readRequestBody(_0:stdgo.AnyInterface):stdgo.Error;
    /**
        
        
        
    **/
    public dynamic function writeResponse(_0:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>, _1:stdgo.AnyInterface):stdgo.Error;
    /**
        Close can be called multiple times and must be idempotent.
        
        
    **/
    public dynamic function close():stdgo.Error;
};
