package stdgo._internal.net;
typedef Error = stdgo.StructType & {
    > stdgo.Error,
    /**
        
        
        Is the error a timeout?
    **/
    public dynamic function timeout():Bool;
    /**
        Deprecated: Temporary errors are not well-defined.
        Most "temporary" errors are timeouts, and the few exceptions are surprising.
        Do not use this method.
        
        
    **/
    public dynamic function temporary():Bool;
};
