package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_T_handlerWriter_static_extension.T_handlerWriter_static_extension) class T_handlerWriter {
    public var _h : stdgo._internal.log.slog.Slog_Handler.Handler = (null : stdgo._internal.log.slog.Slog_Handler.Handler);
    public var _level : stdgo._internal.log.slog.Slog_Level.Level = ((0 : stdgo.GoInt) : stdgo._internal.log.slog.Slog_Level.Level);
    public var _capturePC : Bool = false;
    public function new(?_h:stdgo._internal.log.slog.Slog_Handler.Handler, ?_level:stdgo._internal.log.slog.Slog_Level.Level, ?_capturePC:Bool) {
        if (_h != null) this._h = _h;
        if (_level != null) this._level = _level;
        if (_capturePC != null) this._capturePC = _capturePC;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_handlerWriter(_h, _level, _capturePC);
    }
}
