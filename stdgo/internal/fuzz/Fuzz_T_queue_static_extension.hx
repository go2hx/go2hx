package stdgo.internal.fuzz;
class T_queue_static_extension {
    static public function _clear(_q:T_queue):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._clear(_q);
    }
    static public function _peek(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._peek(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _dequeue(_q:T_queue):stdgo.Tuple<stdgo.AnyInterface, Bool> {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        return {
            final obj = stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._dequeue(_q);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _enqueue(_q:T_queue, _e:stdgo.AnyInterface):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        final _e = (_e : stdgo.AnyInterface);
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._enqueue(_q, _e);
    }
    static public function _grow(_q:T_queue):Void {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._grow(_q);
    }
    static public function _cap(_q:T_queue):StdTypes.Int {
        final _q = (_q : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_T_queue.T_queue>);
        return stdgo._internal.internal.fuzz.Fuzz_T_queue_static_extension.T_queue_static_extension._cap(_q);
    }
}
