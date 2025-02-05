package stdgo._internal.net;
@:interface typedef Error = stdgo.StructType & {
    > stdgo.Error,
    /**
        
        
        * Is the error a timeout?
    **/
    @:interfacetypeffun
    public dynamic function timeout():Bool;
    /**
        * Deprecated: Temporary errors are not well-defined.
        * Most "temporary" errors are timeouts, and the few exceptions are surprising.
        * Do not use this method.
        
        
    **/
    @:interfacetypeffun
    public dynamic function temporary():Bool;
};
