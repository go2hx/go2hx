package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_t_handlestate_static_extension.T_handleState_static_extension) class T_handleState {
    public var _h : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
    public var _buf : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
    public var _freeBuf : Bool = false;
    public var _sep : stdgo.GoString = "";
    public var _prefix : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>);
    public var _groups : stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
    public function new(?_h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, ?_buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, ?_freeBuf:Bool, ?_sep:stdgo.GoString, ?_prefix:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, ?_groups:stdgo.Ref<stdgo.Slice<stdgo.GoString>>) {
        if (_h != null) this._h = _h;
        if (_buf != null) this._buf = _buf;
        if (_freeBuf != null) this._freeBuf = _freeBuf;
        if (_sep != null) this._sep = _sep;
        if (_prefix != null) this._prefix = _prefix;
        if (_groups != null) this._groups = _groups;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_handleState(_h, _buf, _freeBuf, _sep, _prefix, _groups);
    }
}
