package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.TextHandler_static_extension) abstract TextHandler(stdgo._internal.log.slog.Slog_TextHandler.TextHandler) from stdgo._internal.log.slog.Slog_TextHandler.TextHandler to stdgo._internal.log.slog.Slog_TextHandler.TextHandler {
    public var _commonHandler(get, set) : T_commonHandler;
    function get__commonHandler():T_commonHandler return this._commonHandler;
    function set__commonHandler(v:T_commonHandler):T_commonHandler {
        this._commonHandler = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return v;
    }
    public function new(?_commonHandler:T_commonHandler) this = new stdgo._internal.log.slog.Slog_TextHandler.TextHandler((_commonHandler : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
