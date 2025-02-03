package stdgo.log.slog;
class Handler_static_extension {
    static public function withGroup(t:stdgo._internal.log.slog.Slog_Handler.Handler, _name:String):Handler {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.log.slog.Slog_Handler_static_extension.Handler_static_extension.withGroup(t, _name);
    }
    static public function withAttrs(t:stdgo._internal.log.slog.Slog_Handler.Handler, _attrs:Array<Attr>):Handler {
        final _attrs = ([for (i in _attrs) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return stdgo._internal.log.slog.Slog_Handler_static_extension.Handler_static_extension.withAttrs(t, _attrs);
    }
    static public function handle(t:stdgo._internal.log.slog.Slog_Handler.Handler, _0:stdgo._internal.context.Context_Context.Context, _1:Record):stdgo.Error {
        return stdgo._internal.log.slog.Slog_Handler_static_extension.Handler_static_extension.handle(t, _0, _1);
    }
    static public function enabled(t:stdgo._internal.log.slog.Slog_Handler.Handler, _0:stdgo._internal.context.Context_Context.Context, _1:Level):Bool {
        return stdgo._internal.log.slog.Slog_Handler_static_extension.Handler_static_extension.enabled(t, _0, _1);
    }
}
