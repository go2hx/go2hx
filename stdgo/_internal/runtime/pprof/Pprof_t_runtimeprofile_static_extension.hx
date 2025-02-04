package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_runtimeProfile_asInterface) class T_runtimeProfile_static_extension {
    @:keep
    @:tdfield
    static public function label( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._labels[(_i : stdgo.GoInt)].__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>);
    }
    @:keep
    @:tdfield
    static public function stack( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        return @:check2 (@:checkr _p ?? throw "null pointer dereference")._stk[(_i : stdgo.GoInt)].stack();
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._stk.length);
    }
}
