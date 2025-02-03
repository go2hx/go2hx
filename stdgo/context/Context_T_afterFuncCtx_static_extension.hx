package stdgo.context;
class T_afterFuncCtx_static_extension {
    static public function _cancel(_a:T_afterFuncCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension._cancel(_a, _removeFromParent, _err, _cause);
    }
    public static function _propagateCancel(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx, _0:Context_, _1:T_canceler):Void {
        stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension._propagateCancel(__self__, _0, _1);
    }
    public static function value(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension.value(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):String {
        return stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension.string(__self__);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_afterFuncCtx.T_afterFuncCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_afterFuncCtx_static_extension.T_afterFuncCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
