package stdgo.log.slog;
class T_defaultHandler_static_extension {
    static public function withGroup(_h:T_defaultHandler, _name:String):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_T_defaultHandler_static_extension.T_defaultHandler_static_extension.withGroup(_h, _name);
    }
    static public function withAttrs(_h:T_defaultHandler, _as:Array<Attr>):Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>);
        final _as = ([for (i in _as) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.Slog_T_defaultHandler_static_extension.T_defaultHandler_static_extension.withAttrs(_h, _as);
    }
    static public function handle(_h:T_defaultHandler, _ctx:stdgo._internal.context.Context_Context.Context, _r:Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>);
        return stdgo._internal.log.slog.Slog_T_defaultHandler_static_extension.T_defaultHandler_static_extension.handle(_h, _ctx, _r);
    }
    static public function enabled(_:T_defaultHandler, __703:stdgo._internal.context.Context_Context.Context, _l:Level):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler>);
        return stdgo._internal.log.slog.Slog_T_defaultHandler_static_extension.T_defaultHandler_static_extension.enabled(_, __703, _l);
    }
}
