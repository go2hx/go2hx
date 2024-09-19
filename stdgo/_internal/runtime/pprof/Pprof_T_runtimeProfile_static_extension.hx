package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_runtimeProfile_asInterface) class T_runtimeProfile_static_extension {
    @:keep
    static public function label( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return (_p._labels[(_i : stdgo.GoInt)].__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>);
    }
    @:keep
    static public function stack( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return _p._stk[(_i : stdgo.GoInt)].stack();
    }
    @:keep
    static public function len( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_runtimeProfile.T_runtimeProfile> = _p;
        return (_p._stk.length);
    }
}
