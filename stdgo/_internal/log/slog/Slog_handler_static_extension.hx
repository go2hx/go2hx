package stdgo._internal.log.slog;
@:keep class Handler_static_extension {
    @:interfacetypeffun
    static public function withGroup(t:stdgo._internal.log.slog.Slog_handler.Handler, _name:stdgo.GoString):stdgo._internal.log.slog.Slog_handler.Handler return t.withGroup(_name);
    @:interfacetypeffun
    static public function withAttrs(t:stdgo._internal.log.slog.Slog_handler.Handler, _attrs:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_handler.Handler return t.withAttrs(_attrs);
    @:interfacetypeffun
    static public function handle(t:stdgo._internal.log.slog.Slog_handler.Handler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error return t.handle(_0, _1);
    @:interfacetypeffun
    static public function enabled(t:stdgo._internal.log.slog.Slog_handler.Handler, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.log.slog.Slog_level.Level):Bool return t.enabled(_0, _1);
}
