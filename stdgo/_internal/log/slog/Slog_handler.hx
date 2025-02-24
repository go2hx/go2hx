package stdgo._internal.log.slog;
@:interface typedef Handler = stdgo.StructType & {
    @:interfacetypeffun
    function enabled(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool;
    @:interfacetypeffun
    function handle(_0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error;
    @:interfacetypeffun
    function withAttrs(_attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler;
    @:interfacetypeffun
    function withGroup(_name:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler;
};
