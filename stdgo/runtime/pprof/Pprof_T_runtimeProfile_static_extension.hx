package stdgo.runtime.pprof;
class T_runtimeProfile_static_extension {
    static public function label(_p:T_runtimeProfile, _i:StdTypes.Int):T_labelMap {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.label(_p, _i);
    }
    static public function stack(_p:T_runtimeProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>);
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.stack(_p, _i)) i];
    }
    static public function len(_p:T_runtimeProfile):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>);
        return stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile_static_extension.T_runtimeProfile_static_extension.len(_p);
    }
}
