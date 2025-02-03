package stdgo.context;
class T_cancelCtx_static_extension {
    static public function _cancel(_c:T_cancelCtx, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension._cancel(_c, _removeFromParent, _err, _cause);
    }
    static public function string(_c:T_cancelCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        return stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension.string(_c);
    }
    static public function _propagateCancel(_c:T_cancelCtx, _parent:Context_, _child:T_canceler):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension._propagateCancel(_c, _parent, _child);
    }
    static public function err(_c:T_cancelCtx):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        return stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension.err(_c);
    }
    static public function done(_c:T_cancelCtx):stdgo.Chan<stdgo._internal.context.Context_T_deadlineExceededError.T_deadlineExceededError> {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        return stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension.done(_c);
    }
    static public function value(_c:T_cancelCtx, _key:stdgo.AnyInterface):stdgo.AnyInterface {
        final _c = (_c : stdgo.Ref<stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx>);
        final _key = (_key : stdgo.AnyInterface);
        return stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension.value(_c, _key);
    }
    public static function deadline(__self__:stdgo._internal.context.Context_T_cancelCtx.T_cancelCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.context.Context_T_cancelCtx_static_extension.T_cancelCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
