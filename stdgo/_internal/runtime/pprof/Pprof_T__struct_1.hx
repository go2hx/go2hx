package stdgo._internal.runtime.pprof;
@:local @:using(stdgo._internal.runtime.pprof.Pprof_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_Mutex.Mutex;
    public var _profiling : Bool;
    public var _done : stdgo.Chan<Bool>;
};