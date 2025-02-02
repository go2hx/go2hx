package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_Logger_static_extension.Logger_static_extension) class Logger {
    public var _handler : stdgo._internal.log.slog.Slog_Handler.Handler = (null : stdgo._internal.log.slog.Slog_Handler.Handler);
    public function new(?_handler:stdgo._internal.log.slog.Slog_Handler.Handler) {
        if (_handler != null) this._handler = _handler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Logger(_handler);
    }
}
