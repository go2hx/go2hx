package stdgo.context;
class T_backgroundCtx_static_extension {
    static public function string(_:T_backgroundCtx):String {
        return stdgo._internal.context.Context_T_backgroundCtx_static_extension.T_backgroundCtx_static_extension.string(_);
    }
    public static function value(__self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_backgroundCtx_static_extension.T_backgroundCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_backgroundCtx_static_extension.T_backgroundCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_backgroundCtx_static_extension.T_backgroundCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_backgroundCtx.T_backgroundCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_backgroundCtx_static_extension.T_backgroundCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
