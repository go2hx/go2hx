package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_t_commonhandler_static_extension.T_commonHandler_static_extension) class T_commonHandler {
    public var _json : Bool = false;
    public var _opts : stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions = ({} : stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions);
    public var _preformattedAttrs : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _groupPrefix : stdgo.GoString = "";
    public var _groups : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _nOpenGroups : stdgo.GoInt = 0;
    public var _mu : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = (null : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_json:Bool, ?_opts:stdgo._internal.log.slog.Slog_handleroptions.HandlerOptions, ?_preformattedAttrs:stdgo.Slice<stdgo.GoUInt8>, ?_groupPrefix:stdgo.GoString, ?_groups:stdgo.Slice<stdgo.GoString>, ?_nOpenGroups:stdgo.GoInt, ?_mu:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, ?_w:stdgo._internal.io.Io_writer.Writer) {
        if (_json != null) this._json = _json;
        if (_opts != null) this._opts = _opts;
        if (_preformattedAttrs != null) this._preformattedAttrs = _preformattedAttrs;
        if (_groupPrefix != null) this._groupPrefix = _groupPrefix;
        if (_groups != null) this._groups = _groups;
        if (_nOpenGroups != null) this._nOpenGroups = _nOpenGroups;
        if (_mu != null) this._mu = _mu;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_commonHandler(_json, _opts, _preformattedAttrs, _groupPrefix, _groups, _nOpenGroups, _mu, _w);
    }
}
