package stdgo.runtime.pprof;
class T_stackProfile_static_extension {
    static public function label(_x:T_stackProfile, _i:StdTypes.Int):T_labelMap {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.label(_x, _i);
    }
    static public function stack(_x:T_stackProfile, _i:StdTypes.Int):Array<stdgo.GoUIntptr> {
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.stack(_x, _i)) i];
    }
    static public function len(_x:T_stackProfile):StdTypes.Int {
        return stdgo._internal.runtime.pprof.Pprof_T_stackProfile_static_extension.T_stackProfile_static_extension.len(_x);
    }
}
