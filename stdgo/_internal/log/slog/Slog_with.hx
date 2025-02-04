package stdgo._internal.log.slog;
function with(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        return @:check2r stdgo._internal.log.slog.Slog_default_.default_().with(...(_args : Array<stdgo.AnyInterface>));
    }
