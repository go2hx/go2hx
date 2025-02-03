package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.T_defaultHandler_static_extension) abstract T_defaultHandler(stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler) from stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler to stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler {
    public var _ch(get, set) : T_commonHandler;
    function get__ch():T_commonHandler return this._ch;
    function set__ch(v:T_commonHandler):T_commonHandler {
        this._ch = (v : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>);
        return v;
    }
    public var _output(get, set) : (stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error;
    function get__output():(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error return (_0, _1) -> this._output(_0, [for (i in _1) i]);
    function set__output(v:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error):(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error {
        this._output = v;
        return v;
    }
    public function new(?_ch:T_commonHandler, ?_output:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error) this = new stdgo._internal.log.slog.Slog_T_defaultHandler.T_defaultHandler((_ch : stdgo.Ref<stdgo._internal.log.slog.Slog_T_commonHandler.T_commonHandler>), _output);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
