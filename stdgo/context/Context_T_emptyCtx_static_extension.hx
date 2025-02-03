package stdgo.context;
class T_emptyCtx_static_extension {
    static public function value(_:T_emptyCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_emptyCtx_static_extension.T_emptyCtx_static_extension.value(_, _key);
    }
    static public function err(_:T_emptyCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_emptyCtx_static_extension.T_emptyCtx_static_extension.err(_);
    }
    static public function done(_:T_emptyCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_emptyCtx_static_extension.T_emptyCtx_static_extension.done(_);
    }
    static public function deadline(_:T_emptyCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_emptyCtx_static_extension.T_emptyCtx_static_extension.deadline(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
