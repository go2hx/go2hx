package stdgo._internal.log.slog.internal.benchmarks;
@:keep @:allow(stdgo._internal.log.slog.internal.benchmarks.Benchmarks.T_asyncHandler_asInterface) class T_asyncHandler_static_extension {
    @:keep
    @:tdfield
    static public function withGroup( _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>, _0:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler> = _;
        throw stdgo.Go.toInterface(("asyncHandler: WithGroup unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function withAttrs( _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>, _0:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler> = _;
        throw stdgo.Go.toInterface(("asyncHandler: With unimplemented" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function handle( _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>, __0:stdgo._internal.context.Context_context.Context, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler> = _h;
        (@:checkr _h ?? throw "null pointer dereference")._ringBuffer[((@:checkr _h ?? throw "null pointer dereference")._next : stdgo.GoInt)] = _r.clone()?.__copy__();
        (@:checkr _h ?? throw "null pointer dereference")._next = ((((@:checkr _h ?? throw "null pointer dereference")._next + (1 : stdgo.GoInt) : stdgo.GoInt)) % ((@:checkr _h ?? throw "null pointer dereference")._ringBuffer.length) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function enabled( _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler>, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _:stdgo.Ref<stdgo._internal.log.slog.internal.benchmarks.Benchmarks_t_asynchandler.T_asyncHandler> = _;
        return true;
    }
}
