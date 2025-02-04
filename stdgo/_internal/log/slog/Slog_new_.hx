package stdgo._internal.log.slog;
function new_(_h:stdgo._internal.log.slog.Slog_handler.Handler):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        if (_h == null) {
            throw stdgo.Go.toInterface(("nil Handler" : stdgo.GoString));
        };
        return (stdgo.Go.setRef(({ _handler : _h } : stdgo._internal.log.slog.Slog_logger.Logger)) : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
    }
