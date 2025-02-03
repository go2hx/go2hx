package stdgo.internal.fuzz;
class T_worker_static_extension {
    static public function _stop(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._stop(_w);
    }
    static public function _start(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._start(_w);
    }
    static public function _startAndPing(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._startAndPing(_w, _ctx);
    }
    static public function _isRunning(_w:T_worker):Bool {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._isRunning(_w);
    }
    static public function _minimize(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context, _input:T_fuzzMinimizeInput):stdgo.Tuple<T_fuzzResult, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._minimize(_w, _ctx, _input);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _coordinate(_w:T_worker, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._coordinate(_w, _ctx);
    }
    static public function _cleanup(_w:T_worker):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_worker.T_worker>);
        return stdgo._internal.internal.fuzz.Fuzz_T_worker_static_extension.T_worker_static_extension._cleanup(_w);
    }
}
