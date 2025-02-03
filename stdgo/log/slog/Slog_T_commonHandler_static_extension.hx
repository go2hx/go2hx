package stdgo.log.slog;
class T_commonHandler_static_extension {
    static public function _newHandleState(_h:T_commonHandler, _buf:Buffer, _freeBuf:Bool, _sep:String):T_handleState {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
        final _sep = (_sep : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._newHandleState(_h, _buf, _freeBuf, _sep);
    }
    static public function _attrSep(_h:T_commonHandler):String {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._attrSep(_h);
    }
    static public function _handle(_h:T_commonHandler, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._handle(_h, _r);
    }
    static public function _withGroup(_h:T_commonHandler, _name:String):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._withGroup(_h, _name);
    }
    static public function _withAttrs(_h:T_commonHandler, _as:Array<Attr>):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        final _as = ([for (i in _as) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._withAttrs(_h, _as);
    }
    static public function _enabled(_h:T_commonHandler, _l:Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._enabled(_h, _l);
    }
    static public function _clone(_h:T_commonHandler):T_commonHandler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return stdgo._internal.log.slog.Slog_T_commonHandler_static_extension.T_commonHandler_static_extension._clone(_h);
    }
}
