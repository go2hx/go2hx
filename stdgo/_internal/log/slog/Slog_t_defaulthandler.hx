package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_t_defaulthandler_static_extension.T_defaultHandler_static_extension) class T_defaultHandler {
    public var _ch : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
    public var _output : (stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error = null;
    public function new(?_ch:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, ?_output:(stdgo.GoUIntptr, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.Error) {
        if (_ch != null) this._ch = _ch;
        if (_output != null) this._output = _output;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_defaultHandler(_ch, _output);
    }
}
