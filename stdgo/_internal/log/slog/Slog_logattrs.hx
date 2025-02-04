package stdgo._internal.log.slog;
function logAttrs(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void {
        var _attrs = new stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>(_attrs.length, 0, ..._attrs);
        @:check2r stdgo._internal.log.slog.Slog_default_.default_()._logAttrs(_ctx, _level, _msg?.__copy__(), ...(_attrs : Array<stdgo._internal.log.slog.Slog_attr.Attr>));
    }
