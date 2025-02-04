package stdgo._internal.runtime.pprof;
@:local @:using(stdgo._internal.runtime.pprof.Pprof_t__struct_0_static_extension.T__struct_0_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_t__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex;
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>;
};
