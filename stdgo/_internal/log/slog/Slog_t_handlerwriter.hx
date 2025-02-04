package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_t_handlerwriter_static_extension.T_handlerWriter_static_extension) class T_handlerWriter {
    public var _h : stdgo._internal.log.slog.Slog_handler.Handler = (null : stdgo._internal.log.slog.Slog_handler.Handler);
    public var _level : stdgo._internal.log.slog.Slog_level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_level.Level);
    public var _capturePC : Bool = false;
    public function new(?_h:stdgo._internal.log.slog.Slog_handler.Handler, ?_level:stdgo._internal.log.slog.Slog_level.Level, ?_capturePC:Bool) {
        if (_h != null) this._h = _h;
        if (_level != null) this._level = _level;
        if (_capturePC != null) this._capturePC = _capturePC;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_handlerWriter(_h, _level, _capturePC);
    }
}
