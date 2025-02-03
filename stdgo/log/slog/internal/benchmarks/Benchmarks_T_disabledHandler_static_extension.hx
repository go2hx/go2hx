package stdgo.log.slog.internal.benchmarks;
class T_disabledHandler_static_extension {
    static public function withGroup(_:T_disabledHandler, _0:String):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_disabledHandler_static_extension.T_disabledHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_:T_disabledHandler, _0:Array<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_disabledHandler_static_extension.T_disabledHandler_static_extension.withAttrs(_, _0);
    }
    static public function handle(_:T_disabledHandler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_disabledHandler_static_extension.T_disabledHandler_static_extension.handle(_, _0, _1);
    }
    static public function enabled(_:T_disabledHandler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_disabledHandler_static_extension.T_disabledHandler_static_extension.enabled(_, _0, _1);
    }
}
