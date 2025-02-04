package stdgo._internal.runtime.pprof;
@:keep class T_countProfile_static_extension {
    @:interfacetypeffun
    static public function label(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> return t.label(_i);
    @:interfacetypeffun
    static public function stack(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> return t.stack(_i);
    @:interfacetypeffun
    static public function len(t:stdgo._internal.runtime.pprof.Pprof_t_countprofile.T_countProfile):stdgo.GoInt return t.len();
}
