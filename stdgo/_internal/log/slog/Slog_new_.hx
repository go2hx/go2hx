package stdgo._internal.log.slog;
function new_(_h:stdgo._internal.log.slog.Slog_handler.Handler):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L121"
        if (_h == null) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L122"
            throw stdgo.Go.toInterface(("nil Handler" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L124"
        return (stdgo.Go.setRef(({ _handler : _h } : stdgo._internal.log.slog.Slog_logger.Logger)) : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
    }
