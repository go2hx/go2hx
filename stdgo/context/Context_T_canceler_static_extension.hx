package stdgo.context;
class T_canceler_static_extension {
    static public function done(t:stdgo._internal.context.Context_T_canceler.T_canceler):stdgo.Chan<{ }> {
        return stdgo._internal.context.Context_T_canceler_static_extension.T_canceler_static_extension.done(t);
    }
    static public function _cancel(t:stdgo._internal.context.Context_T_canceler.T_canceler, _removeFromParent:Bool, _err:stdgo.Error, _cause:stdgo.Error):Void {
        final _err = (_err : stdgo.Error);
        final _cause = (_cause : stdgo.Error);
        stdgo._internal.context.Context_T_canceler_static_extension.T_canceler_static_extension._cancel(t, _removeFromParent, _err, _cause);
    }
}
