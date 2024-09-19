package stdgo._internal.runtime.pprof;
typedef T_countProfile = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function len():stdgo.GoInt;
    /**
        
        
        
    **/
    public dynamic function stack(_i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr>;
    /**
        
        
        
    **/
    public dynamic function label(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>;
};
