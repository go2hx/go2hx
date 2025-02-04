package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_logger_static_extension.Logger_static_extension) class Logger {
    public var _handler : stdgo._internal.log.slog.Slog_handler.Handler = (null : stdgo._internal.log.slog.Slog_handler.Handler);
    public function new(?_handler:stdgo._internal.log.slog.Slog_handler.Handler) {
        if (_handler != null) this._handler = _handler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Logger(_handler);
    }
}
