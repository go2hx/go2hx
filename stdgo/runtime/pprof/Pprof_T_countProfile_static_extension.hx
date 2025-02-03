package stdgo.runtime.pprof;
class T_countProfile_static_extension {
    static public function label(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:StdTypes.Int):T_labelMap {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.label(t, _i);
    }
    static public function stack(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.stack(t, _i)) i];
    }
    static public function len(t:stdgo._internal.runtime.pprof.Pprof_T_countProfile.T_countProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_countProfile_static_extension.T_countProfile_static_extension.len(t);
    }
}
