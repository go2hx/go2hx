package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.T_handlerWriter_static_extension) abstract T_handlerWriter(stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter) from stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter to stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter {
    public var _h(get, set) : Handler;
    function get__h():Handler return this._h;
    function set__h(v:Handler):Handler {
        this._h = v;
        return v;
    }
    public var _level(get, set) : Level;
    function get__level():Level return this._level;
    function set__level(v:Level):Level {
        this._level = v;
        return v;
    }
    public var _capturePC(get, set) : Bool;
    function get__capturePC():Bool return this._capturePC;
    function set__capturePC(v:Bool):Bool {
        this._capturePC = v;
        return v;
    }
    public function new(?_h:Handler, ?_level:Level, ?_capturePC:Bool) this = new stdgo._internal.log.slog.Slog_T_handlerWriter.T_handlerWriter(_h, _level, _capturePC);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
