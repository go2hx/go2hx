package stdgo.context;
class T_valueCtx_static_extension {
    static public function value(_c:T_valueCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_valueCtx.T_valueCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension.value(_c, _key);
    }
    static public function string(_c:T_valueCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_valueCtx.T_valueCtx>);
        return stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension.string(_c);
    }
    public static function err(__self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):stdgo.Error {
        return stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        return stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_valueCtx.T_valueCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_valueCtx_static_extension.T_valueCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
