package stdgo._internal.archive.tar;
@:interface typedef T_fileState = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _logicalRemaining():stdgo.GoInt64;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function _physicalRemaining():stdgo.GoInt64;
};
