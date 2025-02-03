package stdgo.log.slog.internal.benchmarks;
class T_fastTextHandler_static_extension {
    static public function withGroup(_:T_fastTextHandler, _0:String):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _ = (_ : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension.withGroup(_, _0);
    }
    static public function withAttrs(_h:T_fastTextHandler, _0:Array<stdgo._internal.log.slog.Slog_Attr.Attr>):stdgo._internal.log.slog.Slog_Handler.Handler {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension.withAttrs(_h, _0);
    }
    static public function _appendTime(_h:T_fastTextHandler, _buf:stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer, _t:stdgo._internal.time.Time_Time.Time):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
        stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension._appendTime(_h, _buf, _t);
    }
    static public function _appendValue(_h:T_fastTextHandler, _buf:stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer, _v:stdgo._internal.log.slog.Slog_Value.Value):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer>);
        stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension._appendValue(_h, _buf, _v);
    }
    static public function handle(_h:T_fastTextHandler, __0:stdgo._internal.context.Context_Context.Context, _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Error {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension.handle(_h, __0, _r);
    }
    static public function enabled(_h:T_fastTextHandler, _0:stdgo._internal.context.Context_Context.Context, _1:stdgo._internal.log.slog.Slog_Level.Level):Bool {
        final _h = (_h : stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler.T_fastTextHandler>);
        return stdgo._internal.log.slog.internal.benchmarks.Benchmarks_T_fastTextHandler_static_extension.T_fastTextHandler_static_extension.enabled(_h, _0, _1);
    }
}
