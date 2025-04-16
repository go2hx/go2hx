package stdgo._internal.sync;
@:interface typedef PoolDequeue = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
};
