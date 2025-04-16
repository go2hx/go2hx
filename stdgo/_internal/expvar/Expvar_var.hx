package stdgo._internal.expvar;
@:interface typedef Var = stdgo.StructType & {
    /**
        * String returns a valid JSON value for the variable.
        * Types with String methods that do not return valid JSON
        * (such as time.Time) must not be used as a Var.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
};
