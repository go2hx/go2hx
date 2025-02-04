package stdgo._internal.log.slog.internal.benchmarks;
@:keep @:allow(stdgo._internal.log.slog.internal.benchmarks.Benchmarks.T_disabledHandler_asInterface) class T_disabledHandler_static_extension {
    @:keep
    @:tdfield
    static public function withGroup( _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler, _0:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler = _?.__copy__();
        throw stdgo.Go.toInterface(("disabledHandler: WithGroup unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function withAttrs( _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler, _0:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler = _?.__copy__();
        throw stdgo.Go.toInterface(("disabledHandler: With unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function handle( _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        @:recv var _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler = _?.__copy__();
        throw stdgo.Go.toInterface(("should not be called" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function enabled( _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _:stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_disabledhandler.T_disabledHandler = _?.__copy__();
        return false;
    }
}
