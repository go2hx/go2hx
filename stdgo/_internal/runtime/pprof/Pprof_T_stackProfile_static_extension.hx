package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_stackProfile_asInterface) class T_stackProfile_static_extension {
    @:keep
    static public function label( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return null;
    }
    @:keep
    static public function stack( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return _x[(_i : stdgo.GoInt)];
    }
    @:keep
    static public function len( _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile):stdgo.GoInt {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile = _x;
        return (_x.length);
    }
}
