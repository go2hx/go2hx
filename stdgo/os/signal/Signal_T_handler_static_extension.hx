package stdgo.os.signal;
class T_handler_static_extension {
    static public function _clear(_h:T_handler, _sig:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
        final _sig = (_sig : stdgo.GoInt);
        stdgo._internal.os.signal.Signal_T_handler_static_extension.T_handler_static_extension._clear(_h, _sig);
    }
    static public function _set(_h:T_handler, _sig:StdTypes.Int):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
        final _sig = (_sig : stdgo.GoInt);
        stdgo._internal.os.signal.Signal_T_handler_static_extension.T_handler_static_extension._set(_h, _sig);
    }
    static public function _want(_h:T_handler, _sig:StdTypes.Int):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.os.signal.Signal_T_handler.T_handler>);
        final _sig = (_sig : stdgo.GoInt);
        return stdgo._internal.os.signal.Signal_T_handler_static_extension.T_handler_static_extension._want(_h, _sig);
    }
}
