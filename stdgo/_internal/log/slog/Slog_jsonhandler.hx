package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_jsonhandler_static_extension.JSONHandler_static_extension) class JSONHandler {
    @:embedded
    public var _commonHandler : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
    public function new(?_commonHandler:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>) {
        if (_commonHandler != null) this._commonHandler = _commonHandler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _attrSep(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get__attrSep():() -> stdgo.GoString return @:check32 this._commonHandler._attrSep;
    public var _clone(get, never) : () -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__clone():() -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:check32 this._commonHandler._clone;
    public var _enabled(get, never) : stdgo._internal.log.slog.Slog_level.Level -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__enabled():stdgo._internal.log.slog.Slog_level.Level -> Bool return @:check32 this._commonHandler._enabled;
    public var _handle(get, never) : stdgo._internal.log.slog.Slog_record.Record -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__handle():stdgo._internal.log.slog.Slog_record.Record -> stdgo.Error return @:check32 this._commonHandler._handle;
    public var _newHandleState(get, never) : (stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, Bool, stdgo.GoString) -> stdgo._internal.log.slog.Slog_t_handlestate.T_handleState;
    @:embedded
    @:embeddededffieldsffun
    public function get__newHandleState():(stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, Bool, stdgo.GoString) -> stdgo._internal.log.slog.Slog_t_handlestate.T_handleState return @:check32 this._commonHandler._newHandleState;
    public var _withAttrs(get, never) : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__withAttrs():stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr> -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:check32 this._commonHandler._withAttrs;
    public var _withGroup(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>;
    @:embedded
    @:embeddededffieldsffun
    public function get__withGroup():stdgo.GoString -> stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> return @:check32 this._commonHandler._withGroup;
    public function __copy__() {
        return new JSONHandler(_commonHandler);
    }
}
