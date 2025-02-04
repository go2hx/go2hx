package stdgo._internal.context;
@:interface typedef T_canceler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function done():stdgo.Chan<{ }>;
};
