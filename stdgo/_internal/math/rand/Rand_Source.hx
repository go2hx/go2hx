package stdgo._internal.math.rand;
@:interface typedef Source = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function int63():stdgo.GoInt64;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function seed(_seed:stdgo.GoInt64):Void;
};
