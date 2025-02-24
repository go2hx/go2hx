package stdgo._internal.runtime.pprof;
@:interface typedef T_countProfile = stdgo.StructType & {
    @:interfacetypeffun
    function len():stdgo.GoInt;
    @:interfacetypeffun
    function stack(_i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr>;
    @:interfacetypeffun
    function label(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>;
};
