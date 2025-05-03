package stdgo._internal.log.slog;
function with(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L129"
        return stdgo._internal.log.slog.Slog_default_.default_().with(...(_args : Array<stdgo.AnyInterface>));
    }
