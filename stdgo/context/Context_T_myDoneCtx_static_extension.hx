package stdgo.context;
class T_myDoneCtx_static_extension {
    static public function done(_d:T_myDoneCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        final _d = (_d : stdgo.Ref<stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx>);
        return stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension.done(_d);
    }
    public static function value(__self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension.err(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_myDoneCtx.T_myDoneCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_myDoneCtx_static_extension.T_myDoneCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
