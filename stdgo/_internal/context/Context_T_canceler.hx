package stdgo._internal.context;
typedef T_canceler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _cancel(_removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void;
    /**
        
        
        
    **/
    public dynamic function done():stdgo.Chan<{ }>;
};
