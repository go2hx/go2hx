package stdgo.context;
class T_withoutCancelCtx_static_extension {
    static public function string(_c:T_withoutCancelCtx):String {
        return stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension.string(_c);
    }
    static public function value(_c:T_withoutCancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension.value(_c, _key);
    }
    static public function err(_:T_withoutCancelCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension.err(_);
    }
    static public function done(_:T_withoutCancelCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension.done(_);
    }
    static public function deadline(_:T_withoutCancelCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_withoutCancelCtx_static_extension.T_withoutCancelCtx_static_extension.deadline(_);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
