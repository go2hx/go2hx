package stdgo._internal.go.types;
@:interface typedef Type_ = stdgo.StructType & {
    /**
        * Underlying returns the underlying type of a type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_;
    /**
        * String returns a string representation of a type.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
