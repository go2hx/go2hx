package stdgo._internal.log.slog;
function log(_ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:check2r stdgo._internal.log.slog.Slog_default_.default_()._log(_ctx, _level, _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
