package stdgo.internal.fuzz;
class T_workerClient_static_extension {
    static public function _callLocked(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _c:T_call, _resp:stdgo.AnyInterface):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        final _resp = (_resp : stdgo.AnyInterface);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._callLocked(_wc, _ctx, _c, _resp);
    }
    static public function _ping(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._ping(_wc, _ctx);
    }
    static public function _fuzz(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:T_fuzzArgs):stdgo.Tuple.Tuple4<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, T_fuzzResponse, Bool, stdgo.Error> {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._fuzz(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2, _3 : obj._3 };
        };
    }
    static public function _minimize(_wc:T_workerClient, _ctx:stdgo._internal.context.Context_Context.Context, _entryIn:stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, _args:T_minimizeArgs):stdgo.Tuple.Tuple3<stdgo._internal.internal.fuzz.Fuzz_CorpusEntry.CorpusEntry, T_minimizeResponse, stdgo.Error> {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension._minimize(_wc, _ctx, _entryIn, _args);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function close(_wc:T_workerClient):stdgo.Error {
        final _wc = (_wc : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_workerClient.T_workerClient>);
        return stdgo._internal.internal.fuzz.Fuzz_T_workerClient_static_extension.T_workerClient_static_extension.close(_wc);
    }
}
