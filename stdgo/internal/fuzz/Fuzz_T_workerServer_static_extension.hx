package stdgo.internal.fuzz;
class T_workerServer_static_extension {
    static public function _ping(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_pingArgs):T_pingResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._ping(_ws, _ctx, _args);
    }
    static public function _minimizeInput(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _vals:Array<stdgo.AnyInterface>, _mem:T_sharedMem, _args:T_minimizeArgs):stdgo.Tuple<Bool, stdgo.Error> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        final _vals = ([for (i in _vals) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        final _mem = (_mem : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_sharedMem.T_sharedMem>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._minimizeInput(_ws, _ctx, _vals, _mem, _args);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _minimize(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_minimizeArgs):T_minimizeResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._minimize(_ws, _ctx, _args);
    }
    static public function _fuzz(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context, _args:T_fuzzArgs):T_fuzzResponse {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._fuzz(_ws, _ctx, _args);
    }
    static public function _serve(_ws:T_workerServer, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerServer.T_workerServer>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerServer_static_extension.T_workerServer_static_extension._serve(_ws, _ctx);
    }
}
