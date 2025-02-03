package stdgo.log.slog.internal.benchmarks;
class T_asyncHandler_static_extension {
    static public function withGroup(_:T_asyncHandler, _0:String):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler>);
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler_static_extension.T_asyncHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_:T_asyncHandler, _0:Array<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler>);
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler_static_extension.T_asyncHandler_static_extension.withAttrs(_, _0);
    }
    static public function handle(_h:T_asyncHandler, __0:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler_static_extension.T_asyncHandler_static_extension.handle(_h, __0, _r);
    }
    static public function enabled(_:T_asyncHandler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler.T_asyncHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_asyncHandler_static_extension.T_asyncHandler_static_extension.enabled(_, _0, _1);
    }
}
