package stdgo.context;
class T_timerCtx_static_extension {
    static public function _cancel(_c:T_timerCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension._cancel(_c, _removeFromParent, _err, _cause);
    }
    static public function string(_c:T_timerCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>);
        return stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension.string(_c);
    }
    static public function deadline(_c:T_timerCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_timerCtx.T_timerCtx>);
        return {
            final obj = stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension.deadline(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _propagateCancel(__self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx, _0:Context_, _1:T_canceler):Void {
        stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension._propagateCancel(__self__, _0, _1);
    }
    public static function value(__self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_T_timerCtx.T_timerCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_timerCtx_static_extension.T_timerCtx_static_extension.done(__self__);
    }
}
