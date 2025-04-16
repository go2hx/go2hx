package stdgo._internal.runtime.pprof;
@:interface typedef T_countProfile = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function len():stdgo.GoInt;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function stack(_i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function label(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>;
};
