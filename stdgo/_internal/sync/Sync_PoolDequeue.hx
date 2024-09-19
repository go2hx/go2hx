package stdgo._internal.sync;
typedef PoolDequeue = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function pushHead(_val:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function popHead():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function popTail():{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
};
