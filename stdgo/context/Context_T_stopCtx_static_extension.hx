package stdgo.context;
class T_stopCtx_static_extension {
    public static function value(__self__:stdgo._internal.context.Context_T_stopCtx.T_stopCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_stopCtx_static_extension.T_stopCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_stopCtx.T_stopCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_stopCtx_static_extension.T_stopCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_T_stopCtx.T_stopCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_stopCtx_static_extension.T_stopCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_stopCtx.T_stopCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_stopCtx_static_extension.T_stopCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
