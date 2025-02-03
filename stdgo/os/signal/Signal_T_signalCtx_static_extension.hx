package stdgo.os.signal;
class T_signalCtx_static_extension {
    static public function string(_c:T_signalCtx):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx>);
        return stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension.string(_c);
    }
    static public function _stop(_c:T_signalCtx):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx>);
        stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension._stop(_c);
    }
    public static function value(__self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx, _0:stdgo.AnyInterface):stdgo.AnyInterface {
        final _0 = (_0 : stdgo.AnyInterface);
        return stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension.value(__self__, _0);
    }
    public static function err(__self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):stdgo.Error {
        return stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension.err(__self__);
    }
    public static function done(__self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):stdgo.Chan<{ }> {
        return stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension.done(__self__);
    }
    public static function deadline(__self__:stdgo._internal.os.signal.Signal_T_signalCtx.T_signalCtx):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, Bool> {
        return {
            final obj = stdgo._internal.os.signal.Signal_T_signalCtx_static_extension.T_signalCtx_static_extension.deadline(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
