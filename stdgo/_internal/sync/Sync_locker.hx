package stdgo._internal.sync;
@:interface typedef Locker = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function lock():Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unlock():Void;
};
