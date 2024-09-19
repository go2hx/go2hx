package stdgo._internal.runtime.pprof;
@:keep class T_countProfile_static_extension {
    static public function label(t:T_countProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> return t.label(_i);
    static public function stack(t:T_countProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> return t.stack(_i);
    static public function len(t:T_countProfile):stdgo.GoInt return t.len();
}
