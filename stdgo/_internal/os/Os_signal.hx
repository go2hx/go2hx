package stdgo._internal.os;
@:interface typedef Signal = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        
        
        * to distinguish from other Stringers
    **/
    @:interfacetypeffun
    public dynamic function signal():Void;
};
