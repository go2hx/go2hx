package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_stackProfile_asInterface) class T_stackProfile_static_extension {
    @:keep
    @:tdfield
    static public function label( _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile = _x;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L358"
        return null;
    }
    @:keep
    @:tdfield
    static public function stack( _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile = _x;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L357"
        return _x[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile):stdgo.GoInt {
        @:recv var _x:stdgo._internal.runtime.pprof.Pprof_t_stackprofile.T_stackProfile = _x;
        //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/pprof.go#L356"
        return (_x.length);
    }
}
