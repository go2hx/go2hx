package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.Logger_static_extension) abstract Logger(stdgo._internal.log.slog.Slog_Logger.Logger) from stdgo._internal.log.slog.Slog_Logger.Logger to stdgo._internal.log.slog.Slog_Logger.Logger {
    public var _handler(get, set) : Handler;
    function get__handler():Handler return this._handler;
    function set__handler(v:Handler):Handler {
        this._handler = v;
        return v;
    }
    public function new(?_handler:Handler) this = new stdgo._internal.log.slog.Slog_Logger.Logger(_handler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
