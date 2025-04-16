package stdgo._internal.runtime;
@:interface typedef Error = stdgo.StructType & {
    /**
        * RuntimeError is a no-op function but
        * serves to distinguish types that are run time
        * errors from ordinary errors: a type is a
        * run time error if it has a RuntimeError method.
        
        
    **/
    @:interfacetypeffun
    public dynamic function runtimeError():Void;
    public dynamic function error():stdgo.GoString;
};
